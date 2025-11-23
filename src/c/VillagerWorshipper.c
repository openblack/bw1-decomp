#include "Villager.h"

const float villager_worshipper_num_days_in_year_0x0099aa5c = 365.25f;
const float villager_worshipper_seconds_in_day_0x0099aa60 = 86400.0f;

uint32_t villager_worshipper_uint_0x00dcb16c;
float villager_worshipper_seconds_in_year_0x00dcb170;

void __cdecl globl_ct_0x0076b9e0(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x0076b9e0    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x0076b9e6    b001
    asm("test               al, cl");                                        // 0x0076b9e8    84c8
    asm("{disp8} jne        _jmp_addr_0x0076b9f4");                          // 0x0076b9ea    7508
    asm("or.s               cl, al");                                        // 0x0076b9ec    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x0076b9ee    880d34c9fa00
    asm("_jmp_addr_0x0076b9f4:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x0076ba00");   // 0x0076b9f4    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x0076ba00(void)
{
    asm("push               0x00407870");                                    // 0x0076ba00    6870784000
    asm("call               _atexit");                                       // 0x0076ba05    e8879d0500
    asm("pop                ecx");                                           // 0x0076ba0a    59
}

void __cdecl globl_ct_0x0076ba10(void)
{
    asm("{disp32} jmp       _FUN_0076ba20__8VillagerFv");                    // 0x0076ba20    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_0076ba20__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_worshipper_seconds_in_day_0x0099aa60]");   // 0x0076ba20    d90560aa9900
    asm("{disp32} fmul dword ptr [_villager_worshipper_num_days_in_year_0x0099aa5c]"); // 0x0076ba26    d80d5caa9900
    asm("{disp32} fstp dword ptr [_villager_worshipper_seconds_in_year_0x00dcb170]");  // 0x0076ba2c    d91d70b1dc00
}

void __cdecl globl_ct_0x0076ba40(void)
{
    asm("{disp32} jmp       _FUN_0076ba50__8VillagerFv");                    // 0x0076ba40    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_0076ba50__8VillagerFv(void)
{
    asm("{disp32} mov dword ptr [_villager_worshipper_uint_0x00dcb16c], 0xffffffff");  // 0x0076ba50    c7056cb1dc00ffffffff
}

__attribute__((XOR32rr_REV))
float __fastcall CheckNeededForWorship__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                             // 0x0076ba60    51
    asm("push               esi");                                             // 0x0076ba61    56
    asm("mov.s              esi, ecx");                                        // 0x0076ba62    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076ba64    8b06
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076ba66    ff5048
    asm("test               byte ptr [esi + 0x000000e0], 0x02");               // 0x0076ba69    f686e000000002
    asm("{disp8} je         _jmp_addr_0x0076ba8e");                            // 0x0076ba70    741c
    asm("push               edi");                                             // 0x0076ba72    57
    asm("mov.s              ecx, esi");                                        // 0x0076ba73    8bce
    asm("call               ?StartWorshippingAtWorshipSite@Villager@@QAEIXZ"); // 0x0076ba75    e8460a0000
    asm("mov.s              edi, eax");                                        // 0x0076ba7a    8bf8
    asm("cmp                edi, 0x01");                                       // 0x0076ba7c    83ff01
    asm("{disp8} je         _jmp_addr_0x0076ba88");                            // 0x0076ba7f    7407
    asm("mov.s              ecx, esi");                                        // 0x0076ba81    8bce
    asm("call               ?RemoveVillagerFromWorshipSite@Villager@@QAE_NXZ");  // 0x0076ba83    e8b8090000
    asm("_jmp_addr_0x0076ba88:");
    asm("mov.s              eax, edi");                                        // 0x0076ba88    8bc7
    asm("pop                edi");                                             // 0x0076ba8a    5f
    asm("pop                esi");                                             // 0x0076ba8b    5e
    asm("pop                ecx");                                             // 0x0076ba8c    59
    asm("ret");                                                                // 0x0076ba8d    c3
    asm("_jmp_addr_0x0076ba8e:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076ba8e    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076ba90    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076ba92    ff5248
    asm("mov.s              ecx, eax");                                        // 0x0076ba95    8bc8
    asm("test               ecx, ecx");                                        // 0x0076ba97    85c9
    asm("{disp8} je         _jmp_addr_0x0076bad7");                            // 0x0076ba99    743c
    asm("{disp32} fld       dword ptr [ecx + 0x000005c0]");                    // 0x0076ba9b    d981c0050000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                     // 0x0076baa1    d81d98a38a00
    asm("fnstsw             ax");                                              // 0x0076baa7    dfe0
    asm("test               ah, 0x40");                                        // 0x0076baa9    f6c440
    asm("{disp8} jne        _jmp_addr_0x0076bad7");                            // 0x0076baac    7529
    asm("{disp8} lea        eax, dword ptr [esp + 0x04]");                     // 0x0076baae    8d442404
    asm("push               eax");                                             // 0x0076bab2    50
    asm("push               0x1");                                             // 0x0076bab3    6a01
    asm("push               0x1");                                             // 0x0076bab5    6a01
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000001");              // 0x0076bab7    c744241001000000
    asm("call               ?GetWorshipersNeeded@Town@@QAEHHHPAH@Z");          // 0x0076babf    e89c0dfdff
    asm("test               eax, eax");                                        // 0x0076bac4    85c0
    asm("{disp8} jle        _jmp_addr_0x0076bad7");                            // 0x0076bac6    7e0f
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                     // 0x0076bac8    8b4c2404
    asm("push               ecx");                                             // 0x0076bacc    51
    asm("mov.s              ecx, esi");                                        // 0x0076bacd    8bce
    asm("call               ?CheckWorshipActivity@Villager@@QAEMH@Z");         // 0x0076bacf    e80c000000
    asm("pop                esi");                                             // 0x0076bad4    5e
    asm("pop                ecx");                                             // 0x0076bad5    59
    asm("ret");                                                                // 0x0076bad6    c3
    asm("_jmp_addr_0x0076bad7:");
    asm("xor.s              eax, eax");                                        // 0x0076bad7    33c0
    asm("pop                esi");                                             // 0x0076bad9    5e
    asm("pop                ecx");                                             // 0x0076bada    59
    asm("ret");                                                                // 0x0076badb    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
float __fastcall CheckWorshipActivity__8VillagerFi(struct Villager* this, const void* edx, int param_1)
{
    asm("push               ecx");                                             // 0x0076bae0    51
    asm("push               ebx");                                             // 0x0076bae1    53
    asm("push               ebp");                                             // 0x0076bae2    55
    asm("push               esi");                                             // 0x0076bae3    56
    asm("mov.s              esi, ecx");                                        // 0x0076bae4    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076bae6    8b06
    asm("xor.s              ebp, ebp");                                        // 0x0076bae8    33ed
    asm("push               edi");                                             // 0x0076baea    57
    asm("{disp8} mov        dword ptr [esp + 0x10], ebp");                     // 0x0076baeb    896c2410
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076baef    ff5048
    asm("mov                edx, dword ptr [esi]");                            // 0x0076baf2    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076baf4    8bce
    asm("mov.s              edi, eax");                                        // 0x0076baf6    8bf8
    asm("call               dword ptr [edx + 0x30c]");                         // 0x0076baf8    ff920c030000
    asm("test               eax, eax");                                        // 0x0076bafe    85c0
    asm("{disp32} je        _jmp_addr_0x0076bc0d");                            // 0x0076bb00    0f8407010000
    asm("cmp.s              edi, ebp");                                        // 0x0076bb06    3bfd
    asm("{disp32} je        _jmp_addr_0x0076bc0d");                            // 0x0076bb08    0f84ff000000
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000009a4]");               // 0x0076bb0e    8b8fa4090000
    asm("cmp.s              ecx, ebp");                                        // 0x0076bb14    3bcd
    asm("{disp32} je        _jmp_addr_0x0076bc0d");                            // 0x0076bb16    0f84f1000000
    asm("mov                eax, dword ptr [ecx]");                            // 0x0076bb1c    8b01
    asm("call               dword ptr [eax + 0x2c]");                          // 0x0076bb1e    ff502c
    asm("cmp                eax, 0x01");                                       // 0x0076bb21    83f801
    asm("{disp32} jne       _jmp_addr_0x0076bc0d");                            // 0x0076bb24    0f85e3000000
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000009a4]");               // 0x0076bb2a    8b8fa4090000
    asm("mov                edx, dword ptr [ecx]");                            // 0x0076bb30    8b11
    asm("call               dword ptr [edx + 0x890]");                         // 0x0076bb32    ff9290080000
    asm("cmp                eax, 0x01");                                       // 0x0076bb38    83f801
    asm("{disp32} jne       _jmp_addr_0x0076bc0d");                            // 0x0076bb3b    0f85cc000000
    asm("mov                eax, dword ptr [esi]");                            // 0x0076bb41    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076bb43    8bce
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076bb45    ff900c030000
    asm("mov                edx, dword ptr [edi]");                            // 0x0076bb4b    8b17
    asm("mov.s              ecx, edi");                                        // 0x0076bb4d    8bcf
    asm("mov.s              ebx, eax");                                        // 0x0076bb4f    8bd8
    asm("call               dword ptr [edx + 0x1c]");                          // 0x0076bb51    ff521c
    asm("mov.s              edi, eax");                                        // 0x0076bb54    8bf8
    asm("mov                eax, dword ptr [ebx]");                            // 0x0076bb56    8b03
    asm("mov.s              ecx, ebx");                                        // 0x0076bb58    8bcb
    asm("call               dword ptr [eax + 0x1c]");                          // 0x0076bb5a    ff501c
    asm("cmp.s              eax, edi");                                        // 0x0076bb5d    3bc7
    asm("{disp32} jne       _jmp_addr_0x0076bc0d");                            // 0x0076bb5f    0f85a8000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                     // 0x0076bb65    8d4c2410
    asm("push               ecx");                                             // 0x0076bb69    51
    asm("mov.s              ecx, esi");                                        // 0x0076bb6a    8bce
    asm("call               ?CanIGetToTheWorshipSite@Villager@@QAEIAAPAVMagicTeleport@@@Z");                            // 0x0076bb6c    e8af000000
    asm("test               eax, eax");                                        // 0x0076bb71    85c0
    asm("{disp8} jne        _jmp_addr_0x0076bb81");                            // 0x0076bb73    750c
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                     // 0x0076bb75    8b442418
    asm("test               eax, eax");                                        // 0x0076bb79    85c0
    asm("{disp32} jne       _jmp_addr_0x0076bc0d");                            // 0x0076bb7b    0f858c000000
    asm("_jmp_addr_0x0076bb81:");
    asm("mov.s              ecx, esi");                                        // 0x0076bb81    8bce
    asm("call               ?CheckNeededForWorshipSiteBuilding@Villager@@QAEIXZ");                            // 0x0076bb83    e8a80d0000
    asm("cmp                eax, 0x01");                                       // 0x0076bb88    83f801
    asm("{disp8} je         _jmp_addr_0x0076bb99");                            // 0x0076bb8b    740c
    asm("mov.s              ecx, esi");                                        // 0x0076bb8d    8bce
    asm("call               ?GotoWorshipSiteForWorship@Villager@@QAEIXZ");     // 0x0076bb8f    e82c010000
    asm("cmp                eax, 0x01");                                       // 0x0076bb94    83f801
    asm("{disp8} jne        _jmp_addr_0x0076bc0d");                            // 0x0076bb97    7574
    asm("_jmp_addr_0x0076bb99:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                     // 0x0076bb99    8b442410
    asm("test               eax, eax");                                        // 0x0076bb9d    85c0
    asm("mov                ebp, 0x00000001");                                 // 0x0076bb9f    bd01000000
    asm("{disp8} je         _jmp_addr_0x0076bc0d");                            // 0x0076bba4    7467
    asm("push               0x14");                                            // 0x0076bba6    6a14
    asm("mov.s              ecx, esi");                                        // 0x0076bba8    8bce
    asm("call               @SetReactionDoneWhen__6LivingF8REACTION@12");      // 0x0076bbaa    e8f188f7ff
    asm("{disp32} mov       edi, dword ptr [esi + 0x00000094]");               // 0x0076bbaf    8bbe94000000
    asm("test               edi, edi");                                        // 0x0076bbb5    85ff
    asm("{disp8} je         _jmp_addr_0x0076bbf5");                            // 0x0076bbb7    743c
    asm("{disp8} mov        edx, dword ptr [edi + 0x18]");                     // 0x0076bbb9    8b5718
    asm("mov.s              eax, edx");                                        // 0x0076bbbc    8bc2
    asm("xor.s              ecx, ecx");                                        // 0x0076bbbe    33c9
    asm("test               eax, eax");                                        // 0x0076bbc0    85c0
    asm("{disp8} je         _jmp_addr_0x0076bbf5");                            // 0x0076bbc2    7431
    asm("_jmp_addr_0x0076bbc4:");
    asm("cmp                dword ptr [eax], esi");                            // 0x0076bbc4    3930
    asm("{disp8} je         _jmp_addr_0x0076bbd3");                            // 0x0076bbc6    740b
    asm("mov.s              ecx, eax");                                        // 0x0076bbc8    8bc8
    asm("{disp8} mov        eax, dword ptr [eax + 0x04]");                     // 0x0076bbca    8b4004
    asm("test               eax, eax");                                        // 0x0076bbcd    85c0
    asm("{disp8} jne        _jmp_addr_0x0076bbc4");                            // 0x0076bbcf    75f3
    asm("{disp8} jmp        _jmp_addr_0x0076bbf5");                            // 0x0076bbd1    eb22
    asm("_jmp_addr_0x0076bbd3:");
    asm("test               ecx, ecx");                                        // 0x0076bbd3    85c9
    asm("{disp8} jne        _jmp_addr_0x0076bbdf");                            // 0x0076bbd5    7508
    asm("{disp8} mov        edx, dword ptr [edx + 0x04]");                     // 0x0076bbd7    8b5204
    asm("{disp8} mov        dword ptr [edi + 0x18], edx");                     // 0x0076bbda    895718
    asm("{disp8} jmp        _jmp_addr_0x0076bbe5");                            // 0x0076bbdd    eb06
    asm("_jmp_addr_0x0076bbdf:");
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                     // 0x0076bbdf    8b5004
    asm("{disp8} mov        dword ptr [ecx + 0x04], edx");                     // 0x0076bbe2    895104
    asm("_jmp_addr_0x0076bbe5:");
    asm("push               eax");                                             // 0x0076bbe5    50
    asm("call               ??3@YAXPAX@Z");                                    // 0x0076bbe6    e8ad320400
    asm("{disp8} mov        eax, dword ptr [edi + 0x1c]");                     // 0x0076bbeb    8b471c
    asm("add                esp, 0x04");                                       // 0x0076bbee    83c404
    asm("dec                eax");                                             // 0x0076bbf1    48
    asm("{disp8} mov        dword ptr [edi + 0x1c], eax");                     // 0x0076bbf2    89471c
    asm("_jmp_addr_0x0076bbf5:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                     // 0x0076bbf5    8b442410
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000094]");               // 0x0076bbf9    8b8894000000
    asm("mov                edx, dword ptr [esi]");                            // 0x0076bbff    8b16
    asm("push               ecx");                                             // 0x0076bc01    51
    asm("push               eax");                                             // 0x0076bc02    50
    asm("push               0x14");                                            // 0x0076bc03    6a14
    asm("mov.s              ecx, esi");                                        // 0x0076bc05    8bce
    asm("call               dword ptr [edx + 0x994]");                         // 0x0076bc07    ff9294090000
    asm("_jmp_addr_0x0076bc0d:");
    asm("pop                edi");                                             // 0x0076bc0d    5f
    asm("pop                esi");                                             // 0x0076bc0e    5e
    asm("mov.s              eax, ebp");                                        // 0x0076bc0f    8bc5
    asm("pop                ebp");                                             // 0x0076bc11    5d
    asm("pop                ebx");                                             // 0x0076bc12    5b
    asm("pop                ecx");                                             // 0x0076bc13    59
    asm("ret                0x0004");                                          // 0x0076bc14    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanIGetToTheWorshipSite__8VillagerFRP13MagicTeleport(struct Villager* this, const void* edx, struct MagicTeleport* * param_1)
{
    asm("push               ecx");                                             // 0x0076bc20    51
    asm("push               ebx");                                             // 0x0076bc21    53
    asm("push               ebp");                                             // 0x0076bc22    55
    asm("push               esi");                                             // 0x0076bc23    56
    asm("mov.s              esi, ecx");                                        // 0x0076bc24    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076bc26    8b06
    asm("push               edi");                                             // 0x0076bc28    57
    asm("mov                ebx, 0x00000001");                                 // 0x0076bc29    bb01000000
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076bc2e    ff5048
    asm("mov.s              edi, eax");                                        // 0x0076bc31    8bf8
    asm("test               edi, edi");                                        // 0x0076bc33    85ff
    asm("{disp8} je         _jmp_addr_0x0076bcaa");                            // 0x0076bc35    7473
    asm("mov                edx, dword ptr [esi]");                            // 0x0076bc37    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076bc39    8bce
    asm("call               dword ptr [edx + 0x30c]");                         // 0x0076bc3b    ff920c030000
    asm("test               eax, eax");                                        // 0x0076bc41    85c0
    asm("{disp8} je         _jmp_addr_0x0076bcaa");                            // 0x0076bc43    7465
    asm("{disp8} mov        ecx, dword ptr [edi + 0x28]");                     // 0x0076bc45    8b4f28
    asm("{disp8} lea        ebx, dword ptr [eax + 0x14]");                     // 0x0076bc48    8d5814
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                     // 0x0076bc4b    894c2410
    asm("{disp8} lea        ebp, dword ptr [esi + 0x14]");                     // 0x0076bc4f    8d6e14
    asm("push               ebx");                                             // 0x0076bc52    53
    asm("mov.s              ecx, ebp");                                        // 0x0076bc53    8bcd
    asm("call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2");                            // 0x0076bc55    e876a0e9ff
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                     // 0x0076bc5a    8b542410
    asm("{disp32} fcomp     dword ptr [edx + 0x00000148]");                    // 0x0076bc5e    d89a48010000
    asm("fnstsw             ax");                                              // 0x0076bc64    dfe0
    asm("test               ah, 0x41");                                        // 0x0076bc66    f6c441
    asm("{disp8} jne        _jmp_addr_0x0076bc93");                            // 0x0076bc69    7528
    asm("mov                eax, dword ptr [esi]");                            // 0x0076bc6b    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076bc6d    8bce
    asm("call               dword ptr [eax + 0x1c]");                          // 0x0076bc6f    ff501c
    asm("test               eax, eax");                                        // 0x0076bc72    85c0
    asm("{disp8} je         _jmp_addr_0x0076bc93");                            // 0x0076bc74    741d
    asm("{disp8} mov        edi, dword ptr [edi + 0x28]");                     // 0x0076bc76    8b7f28
    asm("{disp32} mov       ecx, dword ptr [edi + 0x00000148]");               // 0x0076bc79    8b8f48010000
    asm("push               ecx");                                             // 0x0076bc7f    51
    asm("push               ebx");                                             // 0x0076bc80    53
    asm("push               ebp");                                             // 0x0076bc81    55
    asm("mov.s              ecx, eax");                                        // 0x0076bc82    8bc8
    asm("call               _jmp_addr_0x0064d6b0");                            // 0x0076bc84    e8271aeeff
    asm("test               eax, eax");                                        // 0x0076bc89    85c0
    asm("{disp8} je         _jmp_addr_0x0076bca0");                            // 0x0076bc8b    7413
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");                     // 0x0076bc8d    8b542418
    asm("mov                dword ptr [edx], eax");                            // 0x0076bc91    8902
    asm("_jmp_addr_0x0076bc93:");
    asm("pop                edi");                                             // 0x0076bc93    5f
    asm("pop                esi");                                             // 0x0076bc94    5e
    asm("pop                ebp");                                             // 0x0076bc95    5d
    asm("mov                eax, 0x00000001");                                 // 0x0076bc96    b801000000
    asm("pop                ebx");                                             // 0x0076bc9b    5b
    asm("pop                ecx");                                             // 0x0076bc9c    59
    asm("ret                0x0004");                                          // 0x0076bc9d    c20400
    asm("_jmp_addr_0x0076bca0:");
    asm("pop                edi");                                             // 0x0076bca0    5f
    asm("pop                esi");                                             // 0x0076bca1    5e
    asm("pop                ebp");                                             // 0x0076bca2    5d
    asm("xor.s              eax, eax");                                        // 0x0076bca3    33c0
    asm("pop                ebx");                                             // 0x0076bca5    5b
    asm("pop                ecx");                                             // 0x0076bca6    59
    asm("ret                0x0004");                                          // 0x0076bca7    c20400
    asm("_jmp_addr_0x0076bcaa:");
    asm("pop                edi");                                             // 0x0076bcaa    5f
    asm("pop                esi");                                             // 0x0076bcab    5e
    asm("pop                ebp");                                             // 0x0076bcac    5d
    asm("mov.s              eax, ebx");                                        // 0x0076bcad    8bc3
    asm("pop                ebx");                                             // 0x0076bcaf    5b
    asm("pop                ecx");                                             // 0x0076bcb0    59
    asm("ret                0x0004");                                          // 0x0076bcb1    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall GotoWorshipSiteForWorship__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                       // 0x0076bcc0    83ec0c
    asm("push               ebx");                                             // 0x0076bcc3    53
    asm("push               ebp");                                             // 0x0076bcc4    55
    asm("push               esi");                                             // 0x0076bcc5    56
    asm("mov.s              esi, ecx");                                        // 0x0076bcc6    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076bcc8    8b06
    asm("push               edi");                                             // 0x0076bcca    57
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076bccb    ff900c030000
    asm("mov                edx, dword ptr [esi]");                            // 0x0076bcd1    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076bcd3    8bce
    asm("mov.s              edi, eax");                                        // 0x0076bcd5    8bf8
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076bcd7    ff5248
    asm("xor.s              ebx, ebx");                                        // 0x0076bcda    33db
    asm("test               edi, edi");                                        // 0x0076bcdc    85ff
    asm("mov.s              ebp, eax");                                        // 0x0076bcde    8be8
    asm("{disp32} je        _jmp_addr_0x0076bd67");                            // 0x0076bce0    0f8481000000
    asm("mov                eax, dword ptr [edi]");                            // 0x0076bce6    8b07
    asm("mov.s              ecx, edi");                                        // 0x0076bce8    8bcf
    asm("call               dword ptr [eax + 0x890]");                         // 0x0076bcea    ff9090080000
    asm("test               eax, eax");                                        // 0x0076bcf0    85c0
    asm("{disp8} je         _jmp_addr_0x0076bd67");                            // 0x0076bcf2    7473
    asm("{disp32} mov       eax, dword ptr [edi + 0x000000a0]");               // 0x0076bcf4    8b87a0000000
    asm("{disp32} inc       dword ptr [eax + 0x00000114]");                    // 0x0076bcfa    ff8014010000
    asm("or                 byte ptr [esi + 0xe0], 0x10");                     // 0x0076bd00    808ee000000010
    asm("mov                edx, dword ptr [edi]");                            // 0x0076bd07    8b17
    asm("push               esi");                                             // 0x0076bd09    56
    asm("mov.s              ecx, edi");                                        // 0x0076bd0a    8bcf
    asm("call               dword ptr [edx + 0x6c4]");                         // 0x0076bd0c    ff92c4060000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                     // 0x0076bd12    d81d98a38a00
    asm("fnstsw             ax");                                              // 0x0076bd18    dfe0
    asm("test               ah, 0x41");                                        // 0x0076bd1a    f6c441
    asm("{disp8} jne        _jmp_addr_0x0076bd4a");                            // 0x0076bd1d    752b
    asm("xor.s              eax, eax");                                        // 0x0076bd1f    33c0
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x0076bd21    89442410
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                     // 0x0076bd25    89442414
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                     // 0x0076bd29    89442418
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                     // 0x0076bd2d    8d442410
    asm("push               eax");                                             // 0x0076bd31    50
    asm("mov.s              ecx, edi");                                        // 0x0076bd32    8bcf
    asm("call               _jmp_addr_0x0077ceb0");                            // 0x0076bd34    e877110100
    asm("push               0x3b");                                            // 0x0076bd39    6a3b
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                     // 0x0076bd3b    8d4c2414
    asm("push               ecx");                                             // 0x0076bd3f    51
    asm("push               edi");                                             // 0x0076bd40    57
    asm("mov.s              ecx, esi");                                        // 0x0076bd41    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                            // 0x0076bd43    e8d81fe8ff
    asm("{disp8} jmp        _jmp_addr_0x0076bd56");                            // 0x0076bd48    eb0c
    asm("_jmp_addr_0x0076bd4a:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076bd4a    8b16
    asm("push               0x3b");                                            // 0x0076bd4c    6a3b
    asm("mov.s              ecx, esi");                                        // 0x0076bd4e    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x0076bd50    ff92e8080000
    asm("_jmp_addr_0x0076bd56:");
    asm("test               ebp, ebp");                                        // 0x0076bd56    85ed
    asm("{disp8} je         _jmp_addr_0x0076bd62");                            // 0x0076bd58    7408
    asm("push               esi");                                             // 0x0076bd5a    56
    asm("mov.s              ecx, ebp");                                        // 0x0076bd5b    8bcd
    asm("call               _jmp_addr_0x0073e300");                            // 0x0076bd5d    e89e25fdff
    asm("_jmp_addr_0x0076bd62:");
    asm("mov                ebx, 0x00000001");                                 // 0x0076bd62    bb01000000
    asm("_jmp_addr_0x0076bd67:");
    asm("cmp                byte ptr [esi + 0x000000f2], 0x0b");               // 0x0076bd67    80bef20000000b
    asm("{disp8} jne        _jmp_addr_0x0076bd8d");                            // 0x0076bd6e    751d
    asm("push               0x0");                                             // 0x0076bd70    6a00
    asm("push               0x0");                                             // 0x0076bd72    6a00
    asm("push               0x0");                                             // 0x0076bd74    6a00
    asm("mov.s              ecx, esi");                                        // 0x0076bd76    8bce
    asm("call               ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z");                            // 0x0076bd78    e883a2feff
    asm("test               ebp, ebp");                                        // 0x0076bd7d    85ed
    asm("{disp8} je         _jmp_addr_0x0076bd8d");                            // 0x0076bd7f    740c
    asm("cmp                ebx, 0x01");                                       // 0x0076bd81    83fb01
    asm("{disp8} jne        _jmp_addr_0x0076bd8d");                            // 0x0076bd84    7507
    asm("mov.s              ecx, ebp");                                        // 0x0076bd86    8bcd
    asm("call               _jmp_addr_0x0073c650");                            // 0x0076bd88    e8c308fdff
    asm("_jmp_addr_0x0076bd8d:");
    asm("pop                edi");                                             // 0x0076bd8d    5f
    asm("pop                esi");                                             // 0x0076bd8e    5e
    asm("pop                ebp");                                             // 0x0076bd8f    5d
    asm("mov.s              eax, ebx");                                        // 0x0076bd90    8bc3
    asm("pop                ebx");                                             // 0x0076bd92    5b
    asm("add                esp, 0x0c");                                       // 0x0076bd93    83c40c
    asm("ret");                                                                // 0x0076bd96    c3
    __builtin_unreachable();
}

bool32_t __fastcall SetGotoWorshipSpeed__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                             // 0x0076bda0    51
    asm("push               esi");                                             // 0x0076bda1    56
    asm("mov.s              esi, ecx");                                        // 0x0076bda2    8bf1
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                     // 0x0076bda4    8b4628
    asm("{disp32} fild      dword ptr [eax + 0x00000118]");                    // 0x0076bda7    db8018010000
    asm("mov                edx, dword ptr [esi]");                            // 0x0076bdad    8b16
    asm("{disp8} fstp       dword ptr [esp + 0x04]");                          // 0x0076bdaf    d95c2404
    asm("call               dword ptr [edx + 0x30c]");                         // 0x0076bdb3    ff920c030000
    asm("test               eax, eax");                                        // 0x0076bdb9    85c0
    asm("{disp8} je         _jmp_addr_0x0076bdea");                            // 0x0076bdbb    742d
    asm("mov                eax, dword ptr [esi]");                            // 0x0076bdbd    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076bdbf    8bce
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076bdc1    ff900c030000
    asm("mov.s              ecx, eax");                                        // 0x0076bdc7    8bc8
    asm("call               _jmp_addr_0x0077c100");                            // 0x0076bdc9    e832030100
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                     // 0x0076bdce    d80590a38a00
    asm("push               0x1");                                             // 0x0076bdd4    6a01
    asm("{disp8} fmul       dword ptr [esp + 0x08]");                          // 0x0076bdd6    d84c2408
    asm("call               _jmp_addr_0x007a1400");                            // 0x0076bdda    e821560300
    asm("push               eax");                                             // 0x0076bddf    50
    asm("mov.s              ecx, esi");                                        // 0x0076bde0    8bce
    asm("call               ?SetSpeed@Villager@@QAEXJH@Z");                    // 0x0076bde2    e8e950feff
    asm("pop                esi");                                             // 0x0076bde7    5e
    asm("pop                ecx");                                             // 0x0076bde8    59
    asm("ret");                                                                // 0x0076bde9    c3
    asm("_jmp_addr_0x0076bdea:");
    asm("{disp8} fld        dword ptr [esp + 0x04]");                          // 0x0076bdea    d9442404
    asm("push               0x1");                                             // 0x0076bdee    6a01
    asm("call               _jmp_addr_0x007a1400");                            // 0x0076bdf0    e80b560300
    asm("push               eax");                                             // 0x0076bdf5    50
    asm("mov.s              ecx, esi");                                        // 0x0076bdf6    8bce
    asm("call               ?SetSpeed@Villager@@QAEXJH@Z");                    // 0x0076bdf8    e8d350feff
    asm("pop                esi");                                             // 0x0076bdfd    5e
    asm("pop                ecx");                                             // 0x0076bdfe    59
    asm("ret");                                                                // 0x0076bdff    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ArrivesAtWorshipSiteForWorship__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                       // 0x0076be00    83ec0c
    asm("push               esi");                                             // 0x0076be03    56
    asm("mov.s              esi, ecx");                                        // 0x0076be04    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076be06    8b06
    asm("push               edi");                                             // 0x0076be08    57
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076be09    ff900c030000
    asm("mov.s              edi, eax");                                        // 0x0076be0f    8bf8
    asm("xor.s              eax, eax");                                        // 0x0076be11    33c0
    asm("cmp.s              edi, eax");                                        // 0x0076be13    3bf8
    asm("{disp8} jne        _jmp_addr_0x0076be27");                            // 0x0076be15    7510
    asm("mov                edx, dword ptr [esi]");                            // 0x0076be17    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076be19    8bce
    asm("call               dword ptr [edx + 0x8c8]");                         // 0x0076be1b    ff92c8080000
    asm("pop                edi");                                             // 0x0076be21    5f
    asm("pop                esi");                                             // 0x0076be22    5e
    asm("add                esp, 0x0c");                                       // 0x0076be23    83c40c
    asm("ret");                                                                // 0x0076be26    c3
    asm("_jmp_addr_0x0076be27:");
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                     // 0x0076be27    89442408
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                     // 0x0076be2b    8944240c
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                     // 0x0076be2f    8d442408
    asm("push               eax");                                             // 0x0076be33    50
    asm("mov.s              ecx, edi");                                        // 0x0076be34    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");              // 0x0076be36    c744241400000000
    asm("call               _jmp_addr_0x0077ceb0");                            // 0x0076be3e    e86d100100
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                     // 0x0076be43    8d4c2408
    asm("push               ecx");                                             // 0x0076be47    51
    asm("{disp8} lea        edx, dword ptr [esi + 0x14]");                     // 0x0076be48    8d5614
    asm("push               edx");                                             // 0x0076be4b    52
    asm("call               _jmp_addr_0x0074cd50");                            // 0x0076be4c    e8ff0efeff
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x2414]");                // 0x0076be51    d81d14b48a00
    asm("add                esp, 0x08");                                       // 0x0076be57    83c408
    asm("fnstsw             ax");                                              // 0x0076be5a    dfe0
    asm("test               ah, 0x01");                                        // 0x0076be5c    f6c401
    asm("{disp8} je         _jmp_addr_0x0076be9a");                            // 0x0076be5f    7439
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000000a0]");               // 0x0076be61    8b8fa0000000
    asm("{disp32} mov       edx, dword ptr [ecx + 0x00000090]");               // 0x0076be67    8b9190000000
    asm("{disp8} mov        eax, dword ptr [edi + 0x28]");                     // 0x0076be6d    8b4728
    asm("cmp                edx, dword ptr [eax + 0x0000014c]");               // 0x0076be70    3b904c010000
    asm("mov.s              ecx, esi");                                        // 0x0076be76    8bce
    asm("{disp8} jae        _jmp_addr_0x0076be8a");                            // 0x0076be78    7310
    asm("call               ?StartWorshippingAtWorshipSite@Villager@@QAEIXZ"); // 0x0076be7a    e841060000
    asm("pop                edi");                                             // 0x0076be7f    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076be80    b801000000
    asm("pop                esi");                                             // 0x0076be85    5e
    asm("add                esp, 0x0c");                                       // 0x0076be86    83c40c
    asm("ret");                                                                // 0x0076be89    c3
    asm("_jmp_addr_0x0076be8a:");
    asm("call               ?StartHidingAtWorshipSite@Villager@@QAEIXZ");      // 0x0076be8a    e8c1060000
    asm("pop                edi");                                             // 0x0076be8f    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076be90    b801000000
    asm("pop                esi");                                             // 0x0076be95    5e
    asm("add                esp, 0x0c");                                       // 0x0076be96    83c40c
    asm("ret");                                                                // 0x0076be99    c3
    asm("_jmp_addr_0x0076be9a:");
    asm("push               0x3b");                                            // 0x0076be9a    6a3b
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                     // 0x0076be9c    8d44240c
    asm("push               eax");                                             // 0x0076bea0    50
    asm("push               edi");                                             // 0x0076bea1    57
    asm("mov.s              ecx, esi");                                        // 0x0076bea2    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                            // 0x0076bea4    e8771ee8ff
    asm("pop                edi");                                             // 0x0076bea9    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076beaa    b801000000
    asm("pop                esi");                                             // 0x0076beaf    5e
    asm("add                esp, 0x0c");                                       // 0x0076beb0    83c40c
    asm("ret");                                                                // 0x0076beb3    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckVillagerGoBackToTownFromWorship__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076bec0    56
    asm("mov.s              esi, ecx");                                        // 0x0076bec1    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076bec3    8b06
    asm("push               edi");                                             // 0x0076bec5    57
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076bec6    ff5048
    asm("mov.s              edi, eax");                                        // 0x0076bec9    8bf8
    asm("test               edi, edi");                                        // 0x0076becb    85ff
    asm("{disp32} je        _jmp_addr_0x0076bf85");                            // 0x0076becd    0f84b2000000
    asm("mov                edx, dword ptr [esi]");                            // 0x0076bed3    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076bed5    8bce
    asm("call               dword ptr [edx + 0x30c]");                         // 0x0076bed7    ff920c030000
    asm("test               eax, eax");                                        // 0x0076bedd    85c0
    asm("{disp32} je        _jmp_addr_0x0076bf6e");                            // 0x0076bedf    0f8489000000
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000009a4]");               // 0x0076bee5    8b8fa4090000
    asm("test               ecx, ecx");                                        // 0x0076beeb    85c9
    asm("{disp8} je         _jmp_addr_0x0076bf6e");                            // 0x0076beed    747f
    asm("mov                eax, dword ptr [ecx]");                            // 0x0076beef    8b01
    asm("call               dword ptr [eax + 0x2c]");                          // 0x0076bef1    ff502c
    asm("cmp                eax, 0x01");                                       // 0x0076bef4    83f801
    asm("{disp8} jne        _jmp_addr_0x0076bf6e");                            // 0x0076bef7    7575
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000009a4]");               // 0x0076bef9    8b8fa4090000
    asm("mov                edx, dword ptr [ecx]");                            // 0x0076beff    8b11
    asm("call               dword ptr [edx + 0x890]");                         // 0x0076bf01    ff9290080000
    asm("cmp                eax, 0x01");                                       // 0x0076bf07    83f801
    asm("{disp8} jne        _jmp_addr_0x0076bf6e");                            // 0x0076bf0a    7562
    asm("mov                eax, dword ptr [esi]");                            // 0x0076bf0c    8b06
    asm("push               ebx");                                             // 0x0076bf0e    53
    asm("push               ebp");                                             // 0x0076bf0f    55
    asm("mov.s              ecx, esi");                                        // 0x0076bf10    8bce
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076bf12    ff900c030000
    asm("mov                edx, dword ptr [edi]");                            // 0x0076bf18    8b17
    asm("mov.s              ecx, edi");                                        // 0x0076bf1a    8bcf
    asm("mov.s              ebx, eax");                                        // 0x0076bf1c    8bd8
    asm("call               dword ptr [edx + 0x1c]");                          // 0x0076bf1e    ff521c
    asm("mov.s              ebp, eax");                                        // 0x0076bf21    8be8
    asm("mov                eax, dword ptr [ebx]");                            // 0x0076bf23    8b03
    asm("mov.s              ecx, ebx");                                        // 0x0076bf25    8bcb
    asm("call               dword ptr [eax + 0x1c]");                          // 0x0076bf27    ff501c
    asm("cmp.s              eax, ebp");                                        // 0x0076bf2a    3bc5
    asm("pop                ebp");                                             // 0x0076bf2c    5d
    asm("pop                ebx");                                             // 0x0076bf2d    5b
    asm("{disp8} jne        _jmp_addr_0x0076bf6e");                            // 0x0076bf2e    753e
    asm("push               0x0");                                             // 0x0076bf30    6a00
    asm("push               0x0");                                             // 0x0076bf32    6a00
    asm("push               0x0");                                             // 0x0076bf34    6a00
    asm("mov.s              ecx, edi");                                        // 0x0076bf36    8bcf
    asm("call               ?GetWorshipersNeeded@Town@@QAEHHHPAH@Z");          // 0x0076bf38    e82309fdff
    asm("test               eax, eax");                                        // 0x0076bf3d    85c0
    asm("{disp8} jge        _jmp_addr_0x0076bf85");                            // 0x0076bf3f    7d44
    asm("mov                edx, dword ptr [esi]");                            // 0x0076bf41    8b16
    asm("push               esi");                                             // 0x0076bf43    56
    asm("mov.s              ecx, esi");                                        // 0x0076bf44    8bce
    asm("call               dword ptr [edx + 0x30c]");                         // 0x0076bf46    ff920c030000
    asm("mov.s              ecx, eax");                                        // 0x0076bf4c    8bc8
    asm("call               _jmp_addr_0x0077e0a0");                            // 0x0076bf4e    e84d210100
    asm("test               eax, eax");                                        // 0x0076bf53    85c0
    asm("{disp8} je         _jmp_addr_0x0076bf85");                            // 0x0076bf55    742e
    asm("mov                eax, dword ptr [esi]");                            // 0x0076bf57    8b06
    asm("push               0x000000f8");                                      // 0x0076bf59    68f8000000
    asm("mov.s              ecx, esi");                                        // 0x0076bf5e    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076bf60    ff90e8080000
    asm("cmp                eax, 0x01");                                       // 0x0076bf66    83f801
    asm("{disp8} jne        _jmp_addr_0x0076bf85");                            // 0x0076bf69    751a
    asm("pop                edi");                                             // 0x0076bf6b    5f
    asm("pop                esi");                                             // 0x0076bf6c    5e
    asm("ret");                                                                // 0x0076bf6d    c3
    asm("_jmp_addr_0x0076bf6e:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076bf6e    8b16
    asm("push               0x000000a3");                                      // 0x0076bf70    68a3000000
    asm("mov.s              ecx, esi");                                        // 0x0076bf75    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x0076bf77    ff92e8080000
    asm("pop                edi");                                             // 0x0076bf7d    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076bf7e    b801000000
    asm("pop                esi");                                             // 0x0076bf83    5e
    asm("ret");                                                                // 0x0076bf84    c3
    asm("_jmp_addr_0x0076bf85:");
    asm("pop                edi");                                             // 0x0076bf85    5f
    asm("xor.s              eax, eax");                                        // 0x0076bf86    33c0
    asm("pop                esi");                                             // 0x0076bf88    5e
    asm("ret");                                                                // 0x0076bf89    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckNeededForSupplyWorship__8VillagerFv(struct Villager* this)
{
    asm("mov                eax, dword ptr [ecx]");                            // 0x0076bf90    8b01
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076bf92    ff900c030000
    asm("xor.s              eax, eax");                                        // 0x0076bf98    33c0
    asm("ret");                                                                // 0x0076bf9a    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall GotoStoragePitForWorshipSupplies__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                       // 0x0076bfa0    83ec0c
    asm("push               ebx");                                             // 0x0076bfa3    53
    asm("push               esi");                                             // 0x0076bfa4    56
    asm("push               edi");                                             // 0x0076bfa5    57
    asm("mov.s              esi, ecx");                                        // 0x0076bfa6    8bf1
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x0076bfa8    e8635ffeff
    asm("test               eax, eax");                                        // 0x0076bfad    85c0
    asm("{disp32} je        _jmp_addr_0x0076c068");                            // 0x0076bfaf    0f84b3000000
    asm("mov.s              ecx, esi");                                        // 0x0076bfb5    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x0076bfb7    e8545ffeff
    asm("mov                edx, dword ptr [eax]");                            // 0x0076bfbc    8b10
    asm("mov.s              ecx, eax");                                        // 0x0076bfbe    8bc8
    asm("call               dword ptr [edx + 0xd4]");                          // 0x0076bfc0    ff92d4000000
    asm("test               eax, eax");                                        // 0x0076bfc6    85c0
    asm("{disp32} je        _jmp_addr_0x0076c068");                            // 0x0076bfc8    0f849a000000
    asm("mov                eax, dword ptr [esi]");                            // 0x0076bfce    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076bfd0    8bce
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076bfd2    ff900c030000
    asm("test               eax, eax");                                        // 0x0076bfd8    85c0
    asm("{disp32} je        _jmp_addr_0x0076c068");                            // 0x0076bfda    0f8488000000
    asm("mov                edx, dword ptr [esi]");                            // 0x0076bfe0    8b16
    asm("movsx              ebx, word ptr [esi + 0x000000f4]");                // 0x0076bfe2    0fbf9ef4000000
    asm("mov.s              ecx, esi");                                        // 0x0076bfe9    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076bfeb    ff5248
    asm("mov.s              ecx, eax");                                        // 0x0076bfee    8bc8
    asm("call               _jmp_addr_0x0073c950");                            // 0x0076bff0    e85b09fdff
    asm("mov.s              ecx, esi");                                        // 0x0076bff5    8bce
    asm("mov.s              edi, eax");                                        // 0x0076bff7    8bf8
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x0076bff9    e8125ffeff
    asm("mov                edx, dword ptr [eax]");                            // 0x0076bffe    8b10
    asm("push               0x0");                                             // 0x0076c000    6a00
    asm("mov.s              ecx, eax");                                        // 0x0076c002    8bc8
    asm("call               dword ptr [edx + 0x98]");                          // 0x0076c004    ff9298000000
    asm("test               edi, edi");                                        // 0x0076c00a    85ff
    asm("{disp8} je         _jmp_addr_0x0076c068");                            // 0x0076c00c    745a
    asm("cmp.s              ebx, edi");                                        // 0x0076c00e    3bdf
    asm("{disp8} ja         _jmp_addr_0x0076c05a");                            // 0x0076c010    7748
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                     // 0x0076c012    8b4e28
    asm("cmp                ebx, dword ptr [ecx + 0x00000264]");               // 0x0076c015    3b9964020000
    asm("{disp8} je         _jmp_addr_0x0076c05a");                            // 0x0076c01b    743d
    asm("test               eax, eax");                                        // 0x0076c01d    85c0
    asm("{disp8} je         _jmp_addr_0x0076c068");                            // 0x0076c01f    7447
    asm("mov.s              ecx, esi");                                        // 0x0076c021    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x0076c023    e8e85efeff
    asm("mov                edx, dword ptr [eax]");                            // 0x0076c028    8b10
    asm("push               0x2b");                                            // 0x0076c02a    6a2b
    asm("push               0x0");                                             // 0x0076c02c    6a00
    asm("push               esi");                                             // 0x0076c02e    56
    asm("push               0x0");                                             // 0x0076c02f    6a00
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                     // 0x0076c031    8d4c241c
    asm("push               ecx");                                             // 0x0076c035    51
    asm("mov.s              ecx, eax");                                        // 0x0076c036    8bc8
    asm("call               dword ptr [edx + 0x8d4]");                         // 0x0076c038    ff92d4080000
    asm("push               eax");                                             // 0x0076c03e    50
    asm("mov.s              ecx, esi");                                        // 0x0076c03f    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x0076c041    e8ca5efeff
    asm("push               eax");                                             // 0x0076c046    50
    asm("mov.s              ecx, esi");                                        // 0x0076c047    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                            // 0x0076c049    e8d21ce8ff
    asm("pop                edi");                                             // 0x0076c04e    5f
    asm("pop                esi");                                             // 0x0076c04f    5e
    asm("mov                eax, 0x00000001");                                 // 0x0076c050    b801000000
    asm("pop                ebx");                                             // 0x0076c055    5b
    asm("add                esp, 0x0c");                                       // 0x0076c056    83c40c
    asm("ret");                                                                // 0x0076c059    c3
    asm("_jmp_addr_0x0076c05a:");
    asm("mov.s              ecx, esi");                                        // 0x0076c05a    8bce
    asm("call               ?GotoWorshipSiteWithSupplies@Villager@@QAEIXZ");   // 0x0076c05c    e89f000000
    asm("pop                edi");                                             // 0x0076c061    5f
    asm("pop                esi");                                             // 0x0076c062    5e
    asm("pop                ebx");                                             // 0x0076c063    5b
    asm("add                esp, 0x0c");                                       // 0x0076c064    83c40c
    asm("ret");                                                                // 0x0076c067    c3
    asm("_jmp_addr_0x0076c068:");
    asm("pop                edi");                                             // 0x0076c068    5f
    asm("pop                esi");                                             // 0x0076c069    5e
    asm("xor.s              eax, eax");                                        // 0x0076c06a    33c0
    asm("pop                ebx");                                             // 0x0076c06c    5b
    asm("add                esp, 0x0c");                                       // 0x0076c06d    83c40c
    asm("ret");                                                                // 0x0076c070    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArrivesAtStoragePitForWorshipSupplies__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076c080    56
    asm("mov.s              esi, ecx");                                        // 0x0076c081    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c083    8b06
    asm("push               edi");                                             // 0x0076c085    57
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076c086    ff900c030000
    asm("test               eax, eax");                                        // 0x0076c08c    85c0
    asm("{disp8} je         _jmp_addr_0x0076c0e7");                            // 0x0076c08e    7457
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c090    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076c092    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076c094    ff5248
    asm("mov.s              ecx, eax");                                        // 0x0076c097    8bc8
    asm("call               _jmp_addr_0x0073c950");                            // 0x0076c099    e8b208fdff
    asm("mov.s              edi, eax");                                        // 0x0076c09e    8bf8
    asm("test               edi, edi");                                        // 0x0076c0a0    85ff
    asm("{disp8} je         _jmp_addr_0x0076c0e7");                            // 0x0076c0a2    7443
    asm("movsx              eax, word ptr [esi + 0x000000f4]");                // 0x0076c0a4    0fbf86f4000000
    asm("cmp.s              eax, edi");                                        // 0x0076c0ab    3bc7
    asm("mov.s              ecx, esi");                                        // 0x0076c0ad    8bce
    asm("{disp8} jl         _jmp_addr_0x0076c0b9");                            // 0x0076c0af    7c08
    asm("call               ?GotoWorshipSiteWithSupplies@Villager@@QAEIXZ");   // 0x0076c0b1    e84a000000
    asm("pop                edi");                                             // 0x0076c0b6    5f
    asm("pop                esi");                                             // 0x0076c0b7    5e
    asm("ret");                                                                // 0x0076c0b8    c3
    asm("_jmp_addr_0x0076c0b9:");
    asm("call               ?GetFoodCapacity@Villager@@QAEHXZ");               // 0x0076c0b9    e81254feff
    asm("movsx              ecx, ax");                                         // 0x0076c0be    0fbfc8
    asm("cmp.s              ecx, edi");                                        // 0x0076c0c1    3bcf
    asm("{disp8} jge        _jmp_addr_0x0076c0cf");                            // 0x0076c0c3    7d0a
    asm("mov.s              ecx, esi");                                        // 0x0076c0c5    8bce
    asm("call               ?GetFoodCapacity@Villager@@QAEHXZ");               // 0x0076c0c7    e80454feff
    asm("movsx              edi, ax");                                         // 0x0076c0cc    0fbff8
    asm("_jmp_addr_0x0076c0cf:");
    asm("test               edi, edi");                                        // 0x0076c0cf    85ff
    asm("{disp8} jle        _jmp_addr_0x0076c0e7");                            // 0x0076c0d1    7e14
    asm("push               0x000000a3");                                      // 0x0076c0d3    68a3000000
    asm("push               0x0");                                             // 0x0076c0d8    6a00
    asm("push               edi");                                             // 0x0076c0da    57
    asm("push               0x0");                                             // 0x0076c0db    6a00
    asm("mov.s              ecx, esi");                                        // 0x0076c0dd    8bce
    asm("call               ?ArrivesAtStoragePitForResource@Villager@@QAEIW4RESOURCE_TYPE@@KW4VILLAGER_STATES@@1@Z");                            // 0x0076c0df    e8ecd7ffff
    asm("pop                edi");                                             // 0x0076c0e4    5f
    asm("pop                esi");                                             // 0x0076c0e5    5e
    asm("ret");                                                                // 0x0076c0e6    c3
    asm("_jmp_addr_0x0076c0e7:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c0e7    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076c0e9    8bce
    asm("call               dword ptr [edx + 0x8c8]");                         // 0x0076c0eb    ff92c8080000
    asm("pop                edi");                                             // 0x0076c0f1    5f
    asm("pop                esi");                                             // 0x0076c0f2    5e
    asm("ret");                                                                // 0x0076c0f3    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall GotoWorshipSiteWithSupplies__8VillagerFv(struct Villager* this)
{
    return 0;
}

bool32_t __fastcall MoveToWorshipSiteWithSupplies__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall ExitMoveToWorshipSiteWithSupplies__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               esi");                                             // 0x0076c120    56
    asm("mov.s              esi, ecx");                                        // 0x0076c121    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                     // 0x0076c123    8b4c2408
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c127    8b06
    asm("and                ecx, 0x000000ff");                                 // 0x0076c129    81e1ff000000
    asm("push               ecx");                                             // 0x0076c12f    51
    asm("mov.s              ecx, esi");                                        // 0x0076c130    8bce
    asm("call               dword ptr [eax + 0x96c]");                         // 0x0076c132    ff906c090000
    asm("test               eax, eax");                                        // 0x0076c138    85c0
    asm("{disp8} jne        _jmp_addr_0x0076c163");                            // 0x0076c13a    7527
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c13c    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076c13e    8bce
    asm("call               dword ptr [edx + 0x30c]");                         // 0x0076c140    ff920c030000
    asm("test               eax, eax");                                        // 0x0076c146    85c0
    asm("{disp8} je         _jmp_addr_0x0076c163");                            // 0x0076c148    7419
    asm("movsx              eax, word ptr [esi + 0x000000f4]");                // 0x0076c14a    0fbf86f4000000
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c151    8b16
    asm("push               eax");                                             // 0x0076c153    50
    asm("mov.s              ecx, esi");                                        // 0x0076c154    8bce
    asm("call               dword ptr [edx + 0x30c]");                         // 0x0076c156    ff920c030000
    asm("mov.s              ecx, eax");                                        // 0x0076c15c    8bc8
    asm("call               _jmp_addr_0x0077c4d0");                            // 0x0076c15e    e86d030100
    asm("_jmp_addr_0x0076c163:");
    asm("mov                eax, 0x00000001");                                 // 0x0076c163    b801000000
    asm("pop                esi");                                             // 0x0076c168    5e
    asm("ret                0x0004");                                          // 0x0076c169    c20400
    __builtin_unreachable();
}

bool32_t __fastcall ExitMoveToWorshipSite__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               esi");                                             // 0x0076c170    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x08]");                     // 0x0076c171    8b742408
    asm("push               edi");                                             // 0x0076c175    57
    asm("mov.s              edi, ecx");                                        // 0x0076c176    8bf9
    asm("mov                eax, dword ptr [edi]");                            // 0x0076c178    8b07
    asm("and                esi, 0x000000ff");                                 // 0x0076c17a    81e6ff000000
    asm("push               esi");                                             // 0x0076c180    56
    asm("call               dword ptr [eax + 0x96c]");                         // 0x0076c181    ff906c090000
    asm("test               eax, eax");                                        // 0x0076c187    85c0
    asm("{disp8} jne        _jmp_addr_0x0076c1e4");                            // 0x0076c189    7559
    asm("lea                eax, dword ptr [esi + esi * 0x8]");                // 0x0076c18b    8d04f6
    asm("shl                eax, 4");                                          // 0x0076c18e    c1e004
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091b8]");               // 0x0076c191    8b88b891d000
    asm("cmp                ecx, 0x00766390");                                 // 0x0076c197    81f990637600
    asm("{disp8} jne        _jmp_addr_0x0076c1c1");                            // 0x0076c19d    7522
    asm("test               ecx, ecx");                                        // 0x0076c19f    85c9
    asm("{disp8} je         _jmp_addr_0x0076c1e4");                            // 0x0076c1a1    7441
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091bc]");               // 0x0076c1a3    8b88bc91d000
    asm("test               ecx, ecx");                                        // 0x0076c1a9    85c9
    asm("{disp8} jne        _jmp_addr_0x0076c1c1");                            // 0x0076c1ab    7514
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091c0]");               // 0x0076c1ad    8b88c091d000
    asm("test               ecx, ecx");                                        // 0x0076c1b3    85c9
    asm("{disp8} jne        _jmp_addr_0x0076c1c1");                            // 0x0076c1b5    750a
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091c4]");               // 0x0076c1b7    8b88c491d000
    asm("test               ecx, ecx");                                        // 0x0076c1bd    85c9
    asm("{disp8} je         _jmp_addr_0x0076c1e4");                            // 0x0076c1bf    7423
    asm("_jmp_addr_0x0076c1c1:");
    asm("mov                edx, dword ptr [edi]");                            // 0x0076c1c1    8b17
    asm("mov.s              ecx, edi");                                        // 0x0076c1c3    8bcf
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076c1c5    ff5248
    asm("test               eax, eax");                                        // 0x0076c1c8    85c0
    asm("{disp8} je         _jmp_addr_0x0076c1db");                            // 0x0076c1ca    740f
    asm("mov                eax, dword ptr [edi]");                            // 0x0076c1cc    8b07
    asm("push               edi");                                             // 0x0076c1ce    57
    asm("mov.s              ecx, edi");                                        // 0x0076c1cf    8bcf
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076c1d1    ff5048
    asm("mov.s              ecx, eax");                                        // 0x0076c1d4    8bc8
    asm("call               ?RemoveVillagerOnWayToWorshipSite@Town@@QAEXPAVVillager@@@Z");  // 0x0076c1d6    e88521fdff
    asm("_jmp_addr_0x0076c1db:");
    asm(".byte              0x66, 0x81, 0xa7, 0xe0, 0x0, 0x0, 0x0, 0xef, 0xff");// and word ptr [edi + 0x000000e0], -0x0011 // 0x0076c1db    6681a7e0000000efff
    asm("_jmp_addr_0x0076c1e4:");
    asm("pop                edi");                                             // 0x0076c1e4    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076c1e5    b801000000
    asm("pop                esi");                                             // 0x0076c1ea    5e
    asm("ret                0x0004");                                          // 0x0076c1eb    c20400
    __builtin_unreachable();
}

bool32_t __fastcall ExitAtWorshipSite__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               ebx");                                             // 0x0076c1f0    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x08]");                     // 0x0076c1f1    8b5c2408
    asm("push               ebp");                                             // 0x0076c1f5    55
    asm("push               esi");                                             // 0x0076c1f6    56
    asm("mov.s              ebp, ebx");                                        // 0x0076c1f7    8beb
    asm("push               edi");                                             // 0x0076c1f9    57
    asm("mov.s              esi, ecx");                                        // 0x0076c1fa    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c1fc    8b06
    asm("and                ebp, 0x000000ff");                                 // 0x0076c1fe    81e5ff000000
    asm("push               ebp");                                             // 0x0076c204    55
    asm("call               dword ptr [eax + 0x96c]");                         // 0x0076c205    ff906c090000
    asm("test               eax, eax");                                        // 0x0076c20b    85c0
    asm("{disp8} jne        _jmp_addr_0x0076c272");                            // 0x0076c20d    7563
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c20f    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076c211    8bce
    asm("call               dword ptr [edx + 0x30c]");                         // 0x0076c213    ff920c030000
    asm("mov.s              edi, eax");                                        // 0x0076c219    8bf8
    asm("test               edi, edi");                                        // 0x0076c21b    85ff
    asm("{disp8} je         _jmp_addr_0x0076c227");                            // 0x0076c21d    7408
    asm("push               esi");                                             // 0x0076c21f    56
    asm("mov.s              ecx, edi");                                        // 0x0076c220    8bcf
    asm("call               ?RemoveVillagerRequestingToGoHome@WorshipSite@@QAEXPAVVillager@@@Z");                            // 0x0076c222    e8a91f0100
    asm("_jmp_addr_0x0076c227:");
    asm("push               ebp");                                             // 0x0076c227    55
    asm("call               ?IsReactiveState@Villager@@QAE_NK@Z");             // 0x0076c228    e88363feff
    asm("add                esp, 0x04");                                       // 0x0076c22d    83c404
    asm("test               eax, eax");                                        // 0x0076c230    85c0
    asm("{disp8} jne        _jmp_addr_0x0076c24c");                            // 0x0076c232    7518
    asm("cmp                bl, -0x0f");                                       // 0x0076c234    80fbf1
    asm("{disp8} je         _jmp_addr_0x0076c24c");                            // 0x0076c237    7413
    asm("mov.s              ecx, esi");                                        // 0x0076c239    8bce
    asm("call               ?RemoveVillagerFromWorshipSite@Villager@@QAE_NXZ");  // 0x0076c23b    e800020000
    asm("pop                edi");                                             // 0x0076c240    5f
    asm("pop                esi");                                             // 0x0076c241    5e
    asm("pop                ebp");                                             // 0x0076c242    5d
    asm("mov                eax, 0x00000001");                                 // 0x0076c243    b801000000
    asm("pop                ebx");                                             // 0x0076c248    5b
    asm("ret                0x0004");                                          // 0x0076c249    c20400
    asm("_jmp_addr_0x0076c24c:");
    asm("test               edi, edi");                                        // 0x0076c24c    85ff
    asm("{disp8} je         _jmp_addr_0x0076c258");                            // 0x0076c24e    7408
    asm("push               esi");                                             // 0x0076c250    56
    asm("mov.s              ecx, edi");                                        // 0x0076c251    8bcf
    asm("call               ?RemoveVillagerFromWorshipCount@WorshipSite@@QAEXPAVVillager@@@Z");                            // 0x0076c253    e8480e0100
    asm("_jmp_addr_0x0076c258:");
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c258    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076c25a    8bce
    asm("call               dword ptr [eax + 0x978]");                         // 0x0076c25c    ff9078090000
    asm("test               eax, eax");                                        // 0x0076c262    85c0
    asm("{disp8} je         _jmp_addr_0x0076c272");                            // 0x0076c264    740c
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c266    8b16
    asm("push               0x1");                                             // 0x0076c268    6a01
    asm("mov.s              ecx, esi");                                        // 0x0076c26a    8bce
    asm("call               dword ptr [edx + 0xb08]");                         // 0x0076c26c    ff92080b0000
    asm("_jmp_addr_0x0076c272:");
    asm("pop                edi");                                             // 0x0076c272    5f
    asm("pop                esi");                                             // 0x0076c273    5e
    asm("pop                ebp");                                             // 0x0076c274    5d
    asm("mov                eax, 0x00000001");                                 // 0x0076c275    b801000000
    asm("pop                ebx");                                             // 0x0076c27a    5b
    asm("ret                0x0004");                                          // 0x0076c27b    c20400
    __builtin_unreachable();
}

bool32_t __fastcall ExitGetFoodAtWorship__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               esi");                                             // 0x0076c280    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x08]");                     // 0x0076c281    8b742408
    asm("push               edi");                                             // 0x0076c285    57
    asm("mov.s              edi, ecx");                                        // 0x0076c286    8bf9
    asm("mov                eax, dword ptr [edi]");                            // 0x0076c288    8b07
    asm("and                esi, 0x000000ff");                                 // 0x0076c28a    81e6ff000000
    asm("push               esi");                                             // 0x0076c290    56
    asm("call               dword ptr [eax + 0x96c]");                         // 0x0076c291    ff906c090000
    asm("test               eax, eax");                                        // 0x0076c297    85c0
    asm("{disp8} jne        _jmp_addr_0x0076c2b8");                            // 0x0076c299    751d
    asm("lea                eax, dword ptr [esi + esi * 0x2]");                // 0x0076c29b    8d0476
    asm("shl                eax, 3");                                          // 0x0076c29e    c1e003
    asm("sub.s              eax, esi");                                        // 0x0076c2a1    2bc6
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");                // 0x0076c2a3    8d0c40
    asm("{disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00db9f50]");         // 0x0076c2a6    8b048d509fdb00
    asm("test               eax, eax");                                        // 0x0076c2ad    85c0
    asm("{disp8} jne        _jmp_addr_0x0076c2b8");                            // 0x0076c2af    7507
    asm("mov.s              ecx, edi");                                        // 0x0076c2b1    8bcf
    asm("call               ?RemoveVillagerFromWorshipSite@Villager@@QAE_NXZ");  // 0x0076c2b3    e888010000
    asm("_jmp_addr_0x0076c2b8:");
    asm("pop                edi");                                             // 0x0076c2b8    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076c2b9    b801000000
    asm("pop                esi");                                             // 0x0076c2be    5e
    asm("ret                0x0004");                                          // 0x0076c2bf    c20400
    __builtin_unreachable();
}

bool32_t __fastcall ArrivesAtWorshipSiteWithSupplies__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                             // 0x0076c2d0    51
    asm("push               esi");                                             // 0x0076c2d1    56
    asm("mov.s              esi, ecx");                                        // 0x0076c2d2    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c2d4    8b06
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076c2d6    ff900c030000
    asm("test               eax, eax");                                        // 0x0076c2dc    85c0
    asm("{disp8} je         _jmp_addr_0x0076c329");                            // 0x0076c2de    7449
    asm("movsx              eax, word ptr [esi + 0x000000f4]");                // 0x0076c2e0    0fbf86f4000000
    asm("test               eax, eax");                                        // 0x0076c2e7    85c0
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                     // 0x0076c2e9    89442404
    asm("{disp8} je         _jmp_addr_0x0076c329");                            // 0x0076c2ed    743a
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c2ef    8b16
    asm("push               edi");                                             // 0x0076c2f1    57
    asm("push               0x0");                                             // 0x0076c2f2    6a00
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                     // 0x0076c2f4    8d4c240c
    asm("push               ecx");                                             // 0x0076c2f8    51
    asm("push               0x0");                                             // 0x0076c2f9    6a00
    asm("mov.s              ecx, esi");                                        // 0x0076c2fb    8bce
    asm("call               dword ptr [edx + 0x30c]");                         // 0x0076c2fd    ff920c030000
    asm("push               eax");                                             // 0x0076c303    50
    asm("mov.s              ecx, esi");                                        // 0x0076c304    8bce
    asm("call               ?AtStructureAddResource@Villager@@QAEIPAVMultiMapFixed@@W4RESOURCE_TYPE@@AAK_N@Z");                            // 0x0076c306    e8a5e0ffff
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c30b    8b16
    asm("mov.s              edi, eax");                                        // 0x0076c30d    8bf8
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                     // 0x0076c30f    8b442408
    asm("push               eax");                                             // 0x0076c313    50
    asm("mov.s              ecx, esi");                                        // 0x0076c314    8bce
    asm("call               dword ptr [edx + 0x30c]");                         // 0x0076c316    ff920c030000
    asm("mov.s              ecx, eax");                                        // 0x0076c31c    8bc8
    asm("call               _jmp_addr_0x0077c4d0");                            // 0x0076c31e    e8ad010100
    asm("cmp                edi, 0x24");                                       // 0x0076c323    83ff24
    asm("pop                edi");                                             // 0x0076c326    5f
    asm("{disp8} je         _jmp_addr_0x0076c338");                            // 0x0076c327    740f
    asm("_jmp_addr_0x0076c329:");
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c329    8b06
    asm("push               0x000000a3");                                      // 0x0076c32b    68a3000000
    asm("mov.s              ecx, esi");                                        // 0x0076c330    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076c332    ff90e8080000
    asm("_jmp_addr_0x0076c338:");
    asm("mov                eax, 0x00000001");                                 // 0x0076c338    b801000000
    asm("pop                esi");                                             // 0x0076c33d    5e
    asm("pop                ecx");                                             // 0x0076c33e    59
    asm("ret");                                                                // 0x0076c33f    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct WorshipSite* __fastcall GetWorshipSite__8VillagerFv(struct GameThingWithPos* this)
{
    asm("push               esi");                                             // 0x0076c340    56
    asm("mov.s              esi, ecx");                                        // 0x0076c341    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c343    8b06
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076c345    ff5048
    asm("test               eax, eax");                                        // 0x0076c348    85c0
    asm("{disp8} je         _jmp_addr_0x0076c35f");                            // 0x0076c34a    7413
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c34c    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076c34e    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076c350    ff5248
    asm("mov                edx, dword ptr [eax]");                            // 0x0076c353    8b10
    asm("mov.s              ecx, eax");                                        // 0x0076c355    8bc8
    asm("call               dword ptr [edx + 0x30c]");                         // 0x0076c357    ff920c030000
    asm("pop                esi");                                             // 0x0076c35d    5e
    asm("ret");                                                                // 0x0076c35e    c3
    asm("_jmp_addr_0x0076c35f:");
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c35f    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076c361    8bce
    asm("call               dword ptr [eax + 0x114]");                         // 0x0076c363    ff9014010000
    asm("test               eax, eax");                                        // 0x0076c369    85c0
    asm("{disp8} je         _jmp_addr_0x0076c388");                            // 0x0076c36b    741b
    asm("mov.s              ecx, esi");                                        // 0x0076c36d    8bce
    asm("call               ?GetTribe@Villager@@QAEPAVGTribeInfo@@XZ");        // 0x0076c36f    e86c5bfeff
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c374    8b16
    asm("push               eax");                                             // 0x0076c376    50
    asm("mov.s              ecx, esi");                                        // 0x0076c377    8bce
    asm("call               dword ptr [edx + 0x114]");                         // 0x0076c379    ff9214010000
    asm("mov.s              ecx, eax");                                        // 0x0076c37f    8bc8
    asm("call               _jmp_addr_0x00463190");                            // 0x0076c381    e80a6ecfff
    asm("pop                esi");                                             // 0x0076c386    5e
    asm("ret");                                                                // 0x0076c387    c3
    asm("_jmp_addr_0x0076c388:");
    asm("xor.s              eax, eax");                                        // 0x0076c388    33c0
    asm("pop                esi");                                             // 0x0076c38a    5e
    asm("ret");                                                                // 0x0076c38b    c3
    __builtin_unreachable();
}

bool32_t __fastcall RestartWorshippingAtWorshipSite__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076c390    56
    asm("mov.s              esi, ecx");                                        // 0x0076c391    8bf1
    asm("call               ?StartWorshippingAtWorshipSite@Villager@@QAEIXZ"); // 0x0076c393    e828010000
    asm("cmp                eax, 0x01");                                       // 0x0076c398    83f801
    asm("{disp8} je         _jmp_addr_0x0076c3ac");                            // 0x0076c39b    740f
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c39d    8b06
    asm("push               0x000000a3");                                      // 0x0076c39f    68a3000000
    asm("mov.s              ecx, esi");                                        // 0x0076c3a4    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076c3a6    ff90e8080000
    asm("_jmp_addr_0x0076c3ac:");
    asm("mov                eax, 0x00000001");                                 // 0x0076c3ac    b801000000
    asm("pop                esi");                                             // 0x0076c3b1    5e
    asm("ret");                                                                // 0x0076c3b2    c3
    __builtin_unreachable();
}

bool32_t __fastcall RestartWorshippingCreature__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x000000d8]");               // 0x0076c3c0    8b81d8000000
    asm("test               eax, eax");                                        // 0x0076c3c6    85c0
    asm("{disp8} je         _jmp_addr_0x0076c3e0");                            // 0x0076c3c8    7416
    asm("{disp8} mov        eax, dword ptr [eax + 0x14]");                     // 0x0076c3ca    8b4014
    asm("push               0x9");                                             // 0x0076c3cd    6a09
    asm("push               0x5a");                                            // 0x0076c3cf    6a5a
    asm("add                eax, 0x14");                                       // 0x0076c3d1    83c014
    asm("push               eax");                                             // 0x0076c3d4    50
    asm("call               ?PerformDance@Living@@QAEIABUMapCoords@@EK@Z");    // 0x0076c3d5    e81636e8ff
    asm("mov                eax, 0x00000001");                                 // 0x0076c3da    b801000000
    asm("ret");                                                                // 0x0076c3df    c3
    asm("_jmp_addr_0x0076c3e0:");
    asm("call               ?GoHome@Villager@@QAE_NXZ");                       // 0x0076c3e0    e88b3effff
    asm("mov                eax, 0x00000001");                                 // 0x0076c3e5    b801000000
    asm("ret");                                                                // 0x0076c3ea    c3
    __builtin_unreachable();
}

bool32_t __fastcall AddVillagerToWorshipSite__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076c3f0    56
    asm("mov.s              esi, ecx");                                        // 0x0076c3f1    8bf1
    asm("test               byte ptr [esi + 0x000000e0], 0x02");               // 0x0076c3f3    f686e000000002
    asm("{disp8} jne        _jmp_addr_0x0076c419");                            // 0x0076c3fa    751d
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c3fc    8b06
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076c3fe    ff5048
    asm("mov.s              ecx, eax");                                        // 0x0076c401    8bc8
    asm("call               _jmp_addr_0x0073e3e0");                            // 0x0076c403    e8d81ffdff
    asm("or                 byte ptr [esi + 0xe0], 2");                        // 0x0076c408    808ee000000002
    asm("{disp32} mov       dword ptr [esi + 0x00000118], 0x00000000");        // 0x0076c40f    c7861801000000000000
    asm("_jmp_addr_0x0076c419:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c419    8b16
    asm("push               esi");                                             // 0x0076c41b    56
    asm("mov.s              ecx, esi");                                        // 0x0076c41c    8bce
    asm("call               dword ptr [edx + 0x30c]");                         // 0x0076c41e    ff920c030000
    asm("mov.s              ecx, eax");                                        // 0x0076c424    8bc8
    asm("call               _jmp_addr_0x0077d040");                            // 0x0076c426    e8150c0100
    asm("mov                eax, 0x00000001");                                 // 0x0076c42b    b801000000
    asm("pop                esi");                                             // 0x0076c430    5e
    asm("ret");                                                                // 0x0076c431    c3
    __builtin_unreachable();
}

bool32_t __fastcall RemoveVillagerFromWorshipSite__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076c440    56
    asm("mov.s              esi, ecx");                                        // 0x0076c441    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c443    8b06
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076c445    ff5048
    asm("test               eax, eax");                                        // 0x0076c448    85c0
    asm("{disp8} je         _jmp_addr_0x0076c4a3");                            // 0x0076c44a    7457
    asm("test               byte ptr [esi + 0x000000e0], 0x02");               // 0x0076c44c    f686e000000002
    asm("{disp8} je         _jmp_addr_0x0076c463");                            // 0x0076c453    740e
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c455    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076c457    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076c459    ff5248
    asm("mov.s              ecx, eax");                                        // 0x0076c45c    8bc8
    asm("call               _jmp_addr_0x0073e3f0");                            // 0x0076c45e    e88d1ffdff
    asm("_jmp_addr_0x0076c463:");
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c463    8b06
    asm("push               edi");                                             // 0x0076c465    57
    asm("mov.s              ecx, esi");                                        // 0x0076c466    8bce
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076c468    ff900c030000
    asm("mov.s              edi, eax");                                        // 0x0076c46e    8bf8
    asm("test               edi, edi");                                        // 0x0076c470    85ff
    asm("{disp8} je         _jmp_addr_0x0076c488");                            // 0x0076c472    7414
    asm("push               esi");                                             // 0x0076c474    56
    asm("mov.s              ecx, edi");                                        // 0x0076c475    8bcf
    asm("call               _jmp_addr_0x0077d110");                            // 0x0076c477    e8940c0100
    asm("test               eax, eax");                                        // 0x0076c47c    85c0
    asm("{disp8} je         _jmp_addr_0x0076c488");                            // 0x0076c47e    7408
    asm("push               esi");                                             // 0x0076c480    56
    asm("mov.s              ecx, edi");                                        // 0x0076c481    8bcf
    asm("call               ?RemoveVillagerFromWorshipCount@WorshipSite@@QAEXPAVVillager@@@Z");                            // 0x0076c483    e8180c0100
    asm("_jmp_addr_0x0076c488:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c488    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076c48a    8bce
    asm("call               dword ptr [edx + 0x978]");                         // 0x0076c48c    ff9278090000
    asm("test               eax, eax");                                        // 0x0076c492    85c0
    asm("pop                edi");                                             // 0x0076c494    5f
    asm("{disp8} je         _jmp_addr_0x0076c4a3");                            // 0x0076c495    740c
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c497    8b06
    asm("push               0x1");                                             // 0x0076c499    6a01
    asm("mov.s              ecx, esi");                                        // 0x0076c49b    8bce
    asm("call               dword ptr [eax + 0xb08]");                         // 0x0076c49d    ff90080b0000
    asm("_jmp_addr_0x0076c4a3:");
    asm(".byte              0x66, 0x81, 0xa6, 0xe0, 0x0, 0x0, 0x0, 0xfd, 0xff");// and word ptr [esi + 0x000000e0], -0x0003 // 0x0076c4a3    6681a6e0000000fdff
    asm("{disp32} mov       dword ptr [esi + 0x00000118], 0x00000000");        // 0x0076c4ac    c7861801000000000000
    asm("mov                eax, 0x00000001");                                 // 0x0076c4b6    b801000000
    asm("pop                esi");                                             // 0x0076c4bb    5e
    asm("ret");                                                                // 0x0076c4bc    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall StartWorshippingAtWorshipSite__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                       // 0x0076c4c0    83ec0c
    asm("push               esi");                                             // 0x0076c4c3    56
    asm("mov.s              esi, ecx");                                        // 0x0076c4c4    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c4c6    8b06
    asm("push               edi");                                             // 0x0076c4c8    57
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076c4c9    ff900c030000
    asm("mov.s              edi, eax");                                        // 0x0076c4cf    8bf8
    asm("test               edi, edi");                                        // 0x0076c4d1    85ff
    asm("{disp8} je         _jmp_addr_0x0076c547");                            // 0x0076c4d3    7472
    asm("mov                edx, dword ptr [edi]");                            // 0x0076c4d5    8b17
    asm("mov.s              ecx, edi");                                        // 0x0076c4d7    8bcf
    asm("call               dword ptr [edx + 0x2c]");                          // 0x0076c4d9    ff522c
    asm("test               eax, eax");                                        // 0x0076c4dc    85c0
    asm("{disp8} je         _jmp_addr_0x0076c547");                            // 0x0076c4de    7467
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000000a0]");               // 0x0076c4e0    8b8fa0000000
    asm("test               ecx, ecx");                                        // 0x0076c4e6    85c9
    asm("{disp8} je         _jmp_addr_0x0076c547");                            // 0x0076c4e8    745d
    asm("push               esi");                                             // 0x0076c4ea    56
    asm("call               ?FindDanceGroup@GroupBehaviour@@QAE_NPAVLiving@@@Z");                            // 0x0076c4eb    e810afe2ff
    asm("cmp                eax, 0x01");                                       // 0x0076c4f0    83f801
    asm("{disp8} jne        _jmp_addr_0x0076c547");                            // 0x0076c4f3    7552
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000000a0]");               // 0x0076c4f5    8b8fa0000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                     // 0x0076c4fb    8d442408
    asm("add                ecx, 0x14");                                       // 0x0076c4ff    83c114
    asm("push               eax");                                             // 0x0076c502    50
    asm("push               ecx");                                             // 0x0076c503    51
    asm("mov.s              ecx, esi");                                        // 0x0076c504    8bce
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");              // 0x0076c506    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");              // 0x0076c50e    c744241400000000
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000000");              // 0x0076c516    c744241800000000
    asm("call               ?CalculateDancePosition@Living@@QAE_NABUMapCoords@@PAU2@@Z");                            // 0x0076c51e    e89d34e8ff
    asm("push               0x3c");                                            // 0x0076c523    6a3c
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                     // 0x0076c525    8d54240c
    asm("push               edx");                                             // 0x0076c529    52
    asm("mov.s              ecx, esi");                                        // 0x0076c52a    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                            // 0x0076c52c    e8cf72ffff
    asm("test               eax, eax");                                        // 0x0076c531    85c0
    asm("{disp8} je         _jmp_addr_0x0076c547");                            // 0x0076c533    7412
    asm("mov.s              ecx, esi");                                        // 0x0076c535    8bce
    asm("call               ?AddVillagerToWorshipSite@Villager@@QAEIXZ");      // 0x0076c537    e8b4feffff
    asm("pop                edi");                                             // 0x0076c53c    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076c53d    b801000000
    asm("pop                esi");                                             // 0x0076c542    5e
    asm("add                esp, 0x0c");                                       // 0x0076c543    83c40c
    asm("ret");                                                                // 0x0076c546    c3
    asm("_jmp_addr_0x0076c547:");
    asm("pop                edi");                                             // 0x0076c547    5f
    asm("xor.s              eax, eax");                                        // 0x0076c548    33c0
    asm("pop                esi");                                             // 0x0076c54a    5e
    asm("add                esp, 0x0c");                                       // 0x0076c54b    83c40c
    asm("ret");                                                                // 0x0076c54e    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall StartHidingAtWorshipSite__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x18");                                       // 0x0076c550    83ec18
    asm("push               esi");                                             // 0x0076c553    56
    asm("mov.s              esi, ecx");                                        // 0x0076c554    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c556    8b06
    asm("push               edi");                                             // 0x0076c558    57
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076c559    ff900c030000
    asm("mov.s              edi, eax");                                        // 0x0076c55f    8bf8
    asm("xor.s              eax, eax");                                        // 0x0076c561    33c0
    asm("cmp.s              edi, eax");                                        // 0x0076c563    3bf8
    asm("{disp8} jne        _jmp_addr_0x0076c577");                            // 0x0076c565    7510
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c567    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076c569    8bce
    asm("call               dword ptr [edx + 0x8c8]");                         // 0x0076c56b    ff92c8080000
    asm("pop                edi");                                             // 0x0076c571    5f
    asm("pop                esi");                                             // 0x0076c572    5e
    asm("add                esp, 0x18");                                       // 0x0076c573    83c418
    asm("ret");                                                                // 0x0076c576    c3
    asm("_jmp_addr_0x0076c577:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                     // 0x0076c577    8d4c2414
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                     // 0x0076c57b    89442408
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                     // 0x0076c57f    8944240c
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");              // 0x0076c583    c744241000000000
    asm("mov                eax, dword ptr [edi]");                            // 0x0076c58b    8b07
    asm("push               ecx");                                             // 0x0076c58d    51
    asm("mov.s              ecx, edi");                                        // 0x0076c58e    8bcf
    asm("call               dword ptr [eax + 0x864]");                         // 0x0076c590    ff9064080000
    asm("mov                edx, dword ptr [eax]");                            // 0x0076c596    8b10
    asm("{disp8} mov        dword ptr [esp + 0x08], edx");                     // 0x0076c598    89542408
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                     // 0x0076c59c    8b4804
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                     // 0x0076c59f    894c240c
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                     // 0x0076c5a3    8b5008
    asm("push               0x000000d5");                                      // 0x0076c5a6    68d5000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                     // 0x0076c5ab    8d44240c
    asm("push               eax");                                             // 0x0076c5af    50
    asm("push               edi");                                             // 0x0076c5b0    57
    asm("mov.s              ecx, esi");                                        // 0x0076c5b1    8bce
    asm("{disp8} mov        dword ptr [esp + 0x1c], edx");                     // 0x0076c5b3    8954241c
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                            // 0x0076c5b7    e86417e8ff
    asm("test               eax, eax");                                        // 0x0076c5bc    85c0
    asm("{disp8} je         _jmp_addr_0x0076c5d2");                            // 0x0076c5be    7412
    asm("mov.s              ecx, esi");                                        // 0x0076c5c0    8bce
    asm("call               ?AddVillagerToWorshipSite@Villager@@QAEIXZ");      // 0x0076c5c2    e829feffff
    asm("pop                edi");                                             // 0x0076c5c7    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076c5c8    b801000000
    asm("pop                esi");                                             // 0x0076c5cd    5e
    asm("add                esp, 0x18");                                       // 0x0076c5ce    83c418
    asm("ret");                                                                // 0x0076c5d1    c3
    asm("_jmp_addr_0x0076c5d2:");
    asm("pop                edi");                                             // 0x0076c5d2    5f
    asm("xor.s              eax, eax");                                        // 0x0076c5d3    33c0
    asm("pop                esi");                                             // 0x0076c5d5    5e
    asm("add                esp, 0x18");                                       // 0x0076c5d6    83c418
    asm("ret");                                                                // 0x0076c5d9    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall HidingAtWorshipSite__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x18");                                       // 0x0076c5e0    83ec18
    asm("push               esi");                                             // 0x0076c5e3    56
    asm("mov.s              esi, ecx");                                        // 0x0076c5e4    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c5e6    8b06
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076c5e8    ff900c030000
    asm("xor.s              ecx, ecx");                                        // 0x0076c5ee    33c9
    asm("cmp.s              eax, ecx");                                        // 0x0076c5f0    3bc1
    asm("{disp8} je         _jmp_addr_0x0076c662");                            // 0x0076c5f2    746e
    asm("mov                edx, dword ptr [eax]");                            // 0x0076c5f4    8b10
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                     // 0x0076c5f6    894c2404
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                     // 0x0076c5fa    894c2408
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                     // 0x0076c5fe    894c240c
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                     // 0x0076c602    8d4c2410
    asm("push               ecx");                                             // 0x0076c606    51
    asm("mov.s              ecx, eax");                                        // 0x0076c607    8bc8
    asm("call               dword ptr [edx + 0x864]");                         // 0x0076c609    ff9264080000
    asm("mov                edx, dword ptr [eax]");                            // 0x0076c60f    8b10
    asm("{disp8} mov        dword ptr [esp + 0x04], edx");                     // 0x0076c611    89542404
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                     // 0x0076c615    8b4804
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                     // 0x0076c618    894c2408
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                     // 0x0076c61c    8b5008
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c61f    8b06
    asm("push               0x3f800000");                                      // 0x0076c621    680000803f
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                     // 0x0076c626    8d4c2408
    asm("push               ecx");                                             // 0x0076c62a    51
    asm("mov.s              ecx, esi");                                        // 0x0076c62b    8bce
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                     // 0x0076c62d    89542414
    asm("call               dword ptr [eax + 0x85c]");                         // 0x0076c631    ff905c080000
    asm("test               eax, eax");                                        // 0x0076c637    85c0
    asm("{disp8} je         _jmp_addr_0x0076c647");                            // 0x0076c639    740c
    asm("mov.s              ecx, esi");                                        // 0x0076c63b    8bce
    asm("call               ?ProcessInWorship@Villager@@QAEIXZ");              // 0x0076c63d    e84e020000
    asm("pop                esi");                                             // 0x0076c642    5e
    asm("add                esp, 0x18");                                       // 0x0076c643    83c418
    asm("ret");                                                                // 0x0076c646    c3
    asm("_jmp_addr_0x0076c647:");
    asm("push               0x000000d5");                                      // 0x0076c647    68d5000000
    asm("{disp8} lea        edx, dword ptr [esp + 0x08]");                     // 0x0076c64c    8d542408
    asm("push               edx");                                             // 0x0076c650    52
    asm("mov.s              ecx, esi");                                        // 0x0076c651    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076c653    e83862e8ff
    asm("mov                eax, 0x00000001");                                 // 0x0076c658    b801000000
    asm("pop                esi");                                             // 0x0076c65d    5e
    asm("add                esp, 0x18");                                       // 0x0076c65e    83c418
    asm("ret");                                                                // 0x0076c661    c3
    asm("_jmp_addr_0x0076c662:");
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c662    8b06
    asm("push               0x000000a3");                                      // 0x0076c664    68a3000000
    asm("mov.s              ecx, esi");                                        // 0x0076c669    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076c66b    ff90e8080000
    asm("mov                eax, 0x00000001");                                 // 0x0076c671    b801000000
    asm("pop                esi");                                             // 0x0076c676    5e
    asm("add                esp, 0x18");                                       // 0x0076c677    83c418
    asm("ret");                                                                // 0x0076c67a    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall WorshippingAtWorshipSite__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076c680    56
    asm("mov.s              esi, ecx");                                        // 0x0076c681    8bf1
    asm("xor.s              eax, eax");                                        // 0x0076c683    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");                 // 0x0076c685    668b86e0000000
    asm("test               al, 0x10");                                        // 0x0076c68c    a810
    asm("{disp8} je         _jmp_addr_0x0076c6ab");                            // 0x0076c68e    741b
    asm("and                eax, 0x0000ffef");                                 // 0x0076c690    25efff0000
    asm("{disp32} mov       word ptr [esi + 0x000000e0], ax");                 // 0x0076c695    668986e0000000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000d8]");               // 0x0076c69c    8b86d8000000
    asm("{disp8} mov        eax, dword ptr [eax + 0x14]");                     // 0x0076c6a2    8b4014
    asm("dec                dword ptr [eax + 0x00000114]");                    // 0x0076c6a5    ff8814010000
    asm("_jmp_addr_0x0076c6ab:");
    asm("mov.s              ecx, esi");                                        // 0x0076c6ab    8bce
    asm("call               ?ProcessInWorship@Villager@@QAEIXZ");              // 0x0076c6ad    e8de010000
    asm("cmp                eax, 0x01");                                       // 0x0076c6b2    83f801
    asm("{disp8} jne        _jmp_addr_0x0076c6d1");                            // 0x0076c6b5    751a
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000d8]");               // 0x0076c6b7    8b86d8000000
    asm("{disp8} mov        ecx, dword ptr [eax + 0x5c]");                     // 0x0076c6bd    8b485c
    asm("push               ecx");                                             // 0x0076c6c0    51
    asm("{disp8} mov        ecx, dword ptr [eax + 0x14]");                     // 0x0076c6c1    8b4814
    asm("add                ecx, 0x14");                                       // 0x0076c6c4    83c114
    asm("push               0x3c");                                            // 0x0076c6c7    6a3c
    asm("push               ecx");                                             // 0x0076c6c9    51
    asm("mov.s              ecx, esi");                                        // 0x0076c6ca    8bce
    asm("call               ?PerformDance@Living@@QAEIABUMapCoords@@EK@Z");    // 0x0076c6cc    e81f33e8ff
    asm("_jmp_addr_0x0076c6d1:");
    asm("pop                esi");                                             // 0x0076c6d1    5e
    asm("ret");                                                                // 0x0076c6d2    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall StartWorshippingCreature__8VillagerFP8Creature(struct Villager* this, const void* edx, struct Creature* param_1)
{
    asm("sub                esp, 0x0c");                                       // 0x0076c6e0    83ec0c
    asm("push               ebp");                                             // 0x0076c6e3    55
    asm("{disp8} mov        ebp, dword ptr [esp + 0x14]");                     // 0x0076c6e4    8b6c2414
    asm("push               esi");                                             // 0x0076c6e8    56
    asm("mov.s              esi, ecx");                                        // 0x0076c6e9    8bf1
    asm("{disp32} mov       ecx, dword ptr [ebp + 0x00001074]");               // 0x0076c6eb    8b8d74100000
    asm("push               esi");                                             // 0x0076c6f1    56
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");              // 0x0076c6f2    c744240c00000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");              // 0x0076c6fa    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");              // 0x0076c702    c744241400000000
    asm("call               ?FindDanceGroup@GroupBehaviour@@QAE_NPAVLiving@@@Z");                            // 0x0076c70a    e8f1ace2ff
    asm("test               eax, eax");                                        // 0x0076c70f    85c0
    asm("{disp32} je        _jmp_addr_0x0076c7b6");                            // 0x0076c711    0f849f000000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000d8]");               // 0x0076c717    8b86d8000000
    asm("test               eax, eax");                                        // 0x0076c71d    85c0
    asm("{disp32} je        _jmp_addr_0x0076c7b6");                            // 0x0076c71f    0f8491000000
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c725    8b06
    asm("push               edi");                                             // 0x0076c727    57
    asm("mov.s              ecx, esi");                                        // 0x0076c728    8bce
    asm("call               dword ptr [eax + 0xb04]");                         // 0x0076c72a    ff90040b0000
    asm("and                eax, 0x000000ff");                                 // 0x0076c730    25ff000000
    asm("lea                ecx, dword ptr [eax + eax * 0x8]");                // 0x0076c735    8d0cc0
    asm("shl                ecx, 4");                                          // 0x0076c738    c1e104
    asm("add                ecx, 0x00d091b8");                                 // 0x0076c73b    81c1b891d000
    asm("mov.s              edi, ecx");                                        // 0x0076c741    8bf9
    asm("mov                eax, dword ptr [edi]");                            // 0x0076c743    8b07
    asm("cmp                eax, 0x007527e0");                                 // 0x0076c745    3de0277500
    asm("{disp8} mov        ecx, dword ptr [edi + 0x04]");                     // 0x0076c74a    8b4f04
    asm("{disp8} mov        edx, dword ptr [edi + 0x08]");                     // 0x0076c74d    8b5708
    asm("{disp8} mov        edi, dword ptr [edi + 0x0c]");                     // 0x0076c750    8b7f0c
    asm("{disp8} jne        _jmp_addr_0x0076c76c");                            // 0x0076c753    7517
    asm("test               eax, eax");                                        // 0x0076c755    85c0
    asm("{disp8} je         _jmp_addr_0x0076c765");                            // 0x0076c757    740c
    asm("test               ecx, ecx");                                        // 0x0076c759    85c9
    asm("{disp8} jne        _jmp_addr_0x0076c76c");                            // 0x0076c75b    750f
    asm("test               edx, edx");                                        // 0x0076c75d    85d2
    asm("{disp8} jne        _jmp_addr_0x0076c76c");                            // 0x0076c75f    750b
    asm("test               edi, edi");                                        // 0x0076c761    85ff
    asm("{disp8} jne        _jmp_addr_0x0076c76c");                            // 0x0076c763    7507
    asm("_jmp_addr_0x0076c765:");
    asm("{disp32} mov       byte ptr [esi + 0x0000008c], -0x34");              // 0x0076c765    c6868c000000cc
    asm("_jmp_addr_0x0076c76c:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c76c    8b16
    asm("push               0x000000cc");                                      // 0x0076c76e    68cc000000
    asm("mov.s              ecx, esi");                                        // 0x0076c773    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x0076c775    ff92e8080000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000d8]");               // 0x0076c77b    8b86d8000000
    asm("test               eax, eax");                                        // 0x0076c781    85c0
    asm("pop                edi");                                             // 0x0076c783    5f
    asm("{disp8} je         _jmp_addr_0x0076c7b6");                            // 0x0076c784    7430
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                     // 0x0076c786    8d442408
    asm("push               eax");                                             // 0x0076c78a    50
    asm("add                ebp, 0x14");                                       // 0x0076c78b    83c514
    asm("push               ebp");                                             // 0x0076c78e    55
    asm("mov.s              ecx, esi");                                        // 0x0076c78f    8bce
    asm("call               ?CalculateDancePosition@Living@@QAE_NABUMapCoords@@PAU2@@Z");                            // 0x0076c791    e82a32e8ff
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                     // 0x0076c796    8b4e28
    asm("{disp32} mov       edx, dword ptr [ecx + 0x00000110]");               // 0x0076c799    8b9110010000
    asm("push               0x1");                                             // 0x0076c79f    6a01
    asm("push               edx");                                             // 0x0076c7a1    52
    asm("mov.s              ecx, esi");                                        // 0x0076c7a2    8bce
    asm("call               ?SetSpeed@Villager@@QAEXJH@Z");                    // 0x0076c7a4    e82747feff
    asm("pop                esi");                                             // 0x0076c7a9    5e
    asm("mov                eax, 0x00000001");                                 // 0x0076c7aa    b801000000
    asm("pop                ebp");                                             // 0x0076c7af    5d
    asm("add                esp, 0x0c");                                       // 0x0076c7b0    83c40c
    asm("ret                0x0004");                                          // 0x0076c7b3    c20400
    asm("_jmp_addr_0x0076c7b6:");
    asm("pop                esi");                                             // 0x0076c7b6    5e
    asm("xor.s              eax, eax");                                        // 0x0076c7b7    33c0
    asm("pop                ebp");                                             // 0x0076c7b9    5d
    asm("add                esp, 0x0c");                                       // 0x0076c7ba    83c40c
    asm("ret                0x0004");                                          // 0x0076c7bd    c20400
    __builtin_unreachable();
}

bool32_t __fastcall WorshippingCreature__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x000000d8]");               // 0x0076c7c0    8b81d8000000
    asm("test               eax, eax");                                        // 0x0076c7c6    85c0
    asm("{disp8} je         _jmp_addr_0x0076c7f3");                            // 0x0076c7c8    7429
    asm("{disp8} mov        edx, dword ptr [eax + 0x14]");                     // 0x0076c7ca    8b5014
    asm("push               esi");                                             // 0x0076c7cd    56
    asm("{disp32} mov       esi, dword ptr [edx + 0x00000100]");               // 0x0076c7ce    8bb200010000
    asm("test               esi, esi");                                        // 0x0076c7d4    85f6
    asm("pop                esi");                                             // 0x0076c7d6    5e
    asm("{disp8} jne        _jmp_addr_0x0076c7ee");                            // 0x0076c7d7    7515
    asm("{disp8} mov        eax, dword ptr [eax + 0x5c]");                     // 0x0076c7d9    8b405c
    asm("push               eax");                                             // 0x0076c7dc    50
    asm("push               0x5a");                                            // 0x0076c7dd    6a5a
    asm("add                edx, 0x14");                                       // 0x0076c7df    83c214
    asm("push               edx");                                             // 0x0076c7e2    52
    asm("call               ?PerformDance@Living@@QAEIABUMapCoords@@EK@Z");    // 0x0076c7e3    e80832e8ff
    asm("mov                eax, 0x00000001");                                 // 0x0076c7e8    b801000000
    asm("ret");                                                                // 0x0076c7ed    c3
    asm("_jmp_addr_0x0076c7ee:");
    asm("call               ?GoHome@Villager@@QAE_NXZ");                       // 0x0076c7ee    e87d3affff
    asm("_jmp_addr_0x0076c7f3:");
    asm("mov                eax, 0x00000001");                                 // 0x0076c7f3    b801000000
    asm("ret");                                                                // 0x0076c7f8    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ReduceVillagerLifeByChant__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                             // 0x0076c800    51
    asm("push               esi");                                             // 0x0076c801    56
    asm("mov.s              esi, ecx");                                        // 0x0076c802    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c804    8b06
    asm("push               edi");                                             // 0x0076c806    57
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076c807    ff900c030000
    asm("test               eax, eax");                                        // 0x0076c80d    85c0
    asm("{disp8} je         _jmp_addr_0x0076c881");                            // 0x0076c80f    7470
    asm("{disp32} fld       dword ptr [eax + 0x00000104]");                    // 0x0076c811    d98004010000
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                     // 0x0076c817    8b4e28
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c81a    8b16
    asm("{disp32} fmul      dword ptr [ecx + 0x0000028c]");                    // 0x0076c81c    d8898c020000
    asm("push               0x0");                                             // 0x0076c822    6a00
    asm("mov.s              ecx, esi");                                        // 0x0076c824    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                          // 0x0076c826    d95c240c
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                     // 0x0076c82a    8b7c240c
    asm("push               edi");                                             // 0x0076c82e    57
    asm("call               dword ptr [edx + 0x5b8]");                         // 0x0076c82f    ff92b8050000
    asm("fstp               st(0)");                                           // 0x0076c835    ddd8
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c837    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076c839    8bce
    asm("call               dword ptr [eax + 0x11c]");                         // 0x0076c83b    ff901c010000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                     // 0x0076c841    d81d98a38a00
    asm("fnstsw             ax");                                              // 0x0076c847    dfe0
    asm("test               ah, 0x41");                                        // 0x0076c849    f6c441
    asm("{disp8} je         _jmp_addr_0x0076c881");                            // 0x0076c84c    7433
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c84e    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076c850    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076c852    ff5248
    asm("test               eax, eax");                                        // 0x0076c855    85c0
    asm("{disp8} je         _jmp_addr_0x0076c869");                            // 0x0076c857    7410
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c859    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076c85b    8bce
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076c85d    ff5048
    asm("mov                edx, dword ptr [eax]");                            // 0x0076c860    8b10
    asm("mov.s              ecx, eax");                                        // 0x0076c862    8bc8
    asm("call               dword ptr [edx + 0x1c]");                          // 0x0076c864    ff521c
    asm("{disp8} jmp        _jmp_addr_0x0076c86b");                            // 0x0076c867    eb02
    asm("_jmp_addr_0x0076c869:");
    asm("xor.s              eax, eax");                                        // 0x0076c869    33c0
    asm("_jmp_addr_0x0076c86b:");
    asm("push               0x1");                                             // 0x0076c86b    6a01
    asm("push               edi");                                             // 0x0076c86d    57
    asm("push               eax");                                             // 0x0076c86e    50
    asm("push               0x4");                                             // 0x0076c86f    6a04
    asm("mov.s              ecx, esi");                                        // 0x0076c871    8bce
    asm("call               ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z");                            // 0x0076c873    e8483efeff
    asm("pop                edi");                                             // 0x0076c878    5f
    asm("mov                eax, 0x00000021");                                 // 0x0076c879    b821000000
    asm("pop                esi");                                             // 0x0076c87e    5e
    asm("pop                ecx");                                             // 0x0076c87f    59
    asm("ret");                                                                // 0x0076c880    c3
    asm("_jmp_addr_0x0076c881:");
    asm("pop                edi");                                             // 0x0076c881    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076c882    b801000000
    asm("pop                esi");                                             // 0x0076c887    5e
    asm("pop                ecx");                                             // 0x0076c888    59
    asm("ret");                                                                // 0x0076c889    c3
    __builtin_unreachable();
}

bool32_t __fastcall ProcessInWorship__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076c890    56
    asm("mov.s              esi, ecx");                                        // 0x0076c891    8bf1
    asm("call               ?CheckVillagerGoBackToTownFromWorship@Villager@@QAEIXZ");                            // 0x0076c893    e828f6ffff
    asm("cmp                eax, 0x01");                                       // 0x0076c898    83f801
    asm("{disp8} jne        _jmp_addr_0x0076c8a4");                            // 0x0076c89b    7507
    asm("mov                eax, 0x00000023");                                 // 0x0076c89d    b823000000
    asm("pop                esi");                                             // 0x0076c8a2    5e
    asm("ret");                                                                // 0x0076c8a3    c3
    asm("_jmp_addr_0x0076c8a4:");
    asm("mov.s              ecx, esi");                                        // 0x0076c8a4    8bce
    asm("call               ?ReduceVillagerLifeByChant@Villager@@QAEIXZ");     // 0x0076c8a6    e855ffffff
    asm("cmp                eax, 0x21");                                       // 0x0076c8ab    83f821
    asm("{disp8} jne        _jmp_addr_0x0076c8b7");                            // 0x0076c8ae    7507
    asm("mov                eax, 0x00000023");                                 // 0x0076c8b0    b823000000
    asm("pop                esi");                                             // 0x0076c8b5    5e
    asm("ret");                                                                // 0x0076c8b6    c3
    asm("_jmp_addr_0x0076c8b7:");
    asm("push               0x1");                                             // 0x0076c8b7    6a01
    asm("mov.s              ecx, esi");                                        // 0x0076c8b9    8bce
    asm("call               ?CheckAllowedToRestAtWorshipSite@Villager@@QAEIH@Z");                            // 0x0076c8bb    e8e0000000
    asm("neg                eax");                                             // 0x0076c8c0    f7d8
    asm("sbb.s              eax, eax");                                        // 0x0076c8c2    1bc0
    asm("and                eax, 0x22");                                       // 0x0076c8c4    83e022
    asm("inc                eax");                                             // 0x0076c8c7    40
    asm("pop                esi");                                             // 0x0076c8c8    5e
    asm("ret");                                                                // 0x0076c8c9    c3
    __builtin_unreachable();
}

bool32_t __fastcall CheckRequestGoHome__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076c8d0    56
    asm("mov.s              esi, ecx");                                        // 0x0076c8d1    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c8d3    8b06
    asm("push               edi");                                             // 0x0076c8d5    57
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076c8d6    ff900c030000
    asm("mov.s              edi, eax");                                        // 0x0076c8dc    8bf8
    asm("test               edi, edi");                                        // 0x0076c8de    85ff
    asm("{disp8} je         _jmp_addr_0x0076c920");                            // 0x0076c8e0    743e
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c8e2    8b16
    asm("push               ebx");                                             // 0x0076c8e4    53
    asm("{disp8} mov        ebx, dword ptr [esi + 0x28]");                     // 0x0076c8e5    8b5e28
    asm("mov.s              ecx, esi");                                        // 0x0076c8e8    8bce
    asm("call               dword ptr [edx + 0x11c]");                         // 0x0076c8ea    ff921c010000
    asm("{disp32} fcomp     dword ptr [ebx + 0x0000035c]");                    // 0x0076c8f0    d89b5c030000
    asm("pop                ebx");                                             // 0x0076c8f6    5b
    asm("fnstsw             ax");                                              // 0x0076c8f7    dfe0
    asm("test               ah, 0x01");                                        // 0x0076c8f9    f6c401
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");               // 0x0076c8fc    8b8618010000
    asm("{disp8} je         _jmp_addr_0x0076c913");                            // 0x0076c902    740f
    asm("test               eax, eax");                                        // 0x0076c904    85c0
    asm("{disp8} jne        _jmp_addr_0x0076c920");                            // 0x0076c906    7518
    asm("push               esi");                                             // 0x0076c908    56
    asm("mov.s              ecx, edi");                                        // 0x0076c909    8bcf
    asm("call               _jmp_addr_0x0077e0c0");                            // 0x0076c90b    e8b0170100
    asm("pop                edi");                                             // 0x0076c910    5f
    asm("pop                esi");                                             // 0x0076c911    5e
    asm("ret");                                                                // 0x0076c912    c3
    asm("_jmp_addr_0x0076c913:");
    asm("cmp                eax, 0x01");                                       // 0x0076c913    83f801
    asm("{disp8} jne        _jmp_addr_0x0076c920");                            // 0x0076c916    7508
    asm("push               esi");                                             // 0x0076c918    56
    asm("mov.s              ecx, edi");                                        // 0x0076c919    8bcf
    asm("call               ?RemoveVillagerRequestingToGoHome@WorshipSite@@QAEXPAVVillager@@@Z");                            // 0x0076c91b    e8b0180100
    asm("_jmp_addr_0x0076c920:");
    asm("pop                edi");                                             // 0x0076c920    5f
    asm("pop                esi");                                             // 0x0076c921    5e
    asm("ret");                                                                // 0x0076c922    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckNeededForWorshipSiteBuilding__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076c930    56
    asm("mov.s              esi, ecx");                                        // 0x0076c931    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c933    8b06
    asm("push               edi");                                             // 0x0076c935    57
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076c936    ff900c030000
    asm("test               eax, eax");                                        // 0x0076c93c    85c0
    asm("{disp8} jne        _jmp_addr_0x0076c963");                            // 0x0076c93e    7523
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c940    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076c942    8bce
    asm("call               dword ptr [edx + 0x114]");                         // 0x0076c944    ff9214010000
    asm("mov.s              edi, eax");                                        // 0x0076c94a    8bf8
    asm("test               edi, edi");                                        // 0x0076c94c    85ff
    asm("{disp8} je         _jmp_addr_0x0076c997");                            // 0x0076c94e    7447
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c950    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076c952    8bce
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076c954    ff5048
    asm("push               eax");                                             // 0x0076c957    50
    asm("mov.s              ecx, edi");                                        // 0x0076c958    8bcf
    asm("call               _jmp_addr_0x004631d0");                            // 0x0076c95a    e87168cfff
    asm("test               eax, eax");                                        // 0x0076c95f    85c0
    asm("{disp8} je         _jmp_addr_0x0076c997");                            // 0x0076c961    7434
    asm("_jmp_addr_0x0076c963:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076c963    8b16
    asm("push               eax");                                             // 0x0076c965    50
    asm("mov.s              ecx, esi");                                        // 0x0076c966    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076c968    ff5248
    asm("mov.s              ecx, eax");                                        // 0x0076c96b    8bc8
    asm("call               _jmp_addr_0x0073ce40");                            // 0x0076c96d    e8ce04fdff
    asm("mov.s              edi, eax");                                        // 0x0076c972    8bf8
    asm("test               edi, edi");                                        // 0x0076c974    85ff
    asm("{disp8} je         _jmp_addr_0x0076c997");                            // 0x0076c976    741f
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c978    8b06
    asm("push               0x000000a3");                                      // 0x0076c97a    68a3000000
    asm("mov.s              ecx, esi");                                        // 0x0076c97f    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076c981    ff90e8080000
    asm("push               edi");                                             // 0x0076c987    57
    asm("mov.s              ecx, esi");                                        // 0x0076c988    8bce
    asm("call               ?SetupBuildingObject@Villager@@QAEIPAVBuildingSite@@@Z");                            // 0x0076c98a    e821bbfeff
    asm("cmp                eax, 0x01");                                       // 0x0076c98f    83f801
    asm("{disp8} jne        _jmp_addr_0x0076c997");                            // 0x0076c992    7503
    asm("pop                edi");                                             // 0x0076c994    5f
    asm("pop                esi");                                             // 0x0076c995    5e
    asm("ret");                                                                // 0x0076c996    c3
    asm("_jmp_addr_0x0076c997:");
    asm("pop                edi");                                             // 0x0076c997    5f
    asm("xor.s              eax, eax");                                        // 0x0076c998    33c0
    asm("pop                esi");                                             // 0x0076c99a    5e
    asm("ret");                                                                // 0x0076c99b    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckAllowedToRestAtWorshipSite__8VillagerFi(struct Villager* this, const void* edx, int param_1)
{
    asm("sub                esp, 0x0c");                                       // 0x0076c9a0    83ec0c
    asm("push               esi");                                             // 0x0076c9a3    56
    asm("mov.s              esi, ecx");                                        // 0x0076c9a4    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076c9a6    8b06
    asm("push               edi");                                             // 0x0076c9a8    57
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076c9a9    ff900c030000
    asm("{disp32} fld       dword ptr [esi + 0x000000e8]");                    // 0x0076c9af    d986e8000000
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                     // 0x0076c9b5    8b4e28
    asm("{disp32} fcomp     dword ptr [ecx + 0x000002c0]");                    // 0x0076c9b8    d899c0020000
    asm("mov.s              edi, eax");                                        // 0x0076c9be    8bf8
    asm("fnstsw             ax");                                              // 0x0076c9c0    dfe0
    asm("test               ah, 0x01");                                        // 0x0076c9c2    f6c401
    asm("{disp8} je         _jmp_addr_0x0076ca19");                            // 0x0076c9c5    7452
    asm("push               ebx");                                             // 0x0076c9c7    53
    asm("mov.s              ecx, esi");                                        // 0x0076c9c8    8bce
    asm("call               ?GetAmountOfFoodRequiredForMeal@Villager@@QAEIXZ");// 0x0076c9ca    e831f2feff
    asm("mov.s              ebx, eax");                                        // 0x0076c9cf    8bd8
    asm("xor.s              eax, eax");                                        // 0x0076c9d1    33c0
    asm("test               edi, edi");                                        // 0x0076c9d3    85ff
    asm("{disp8} je         _jmp_addr_0x0076c9de");                            // 0x0076c9d5    7407
    asm("mov.s              ecx, edi");                                        // 0x0076c9d7    8bcf
    asm("call               _jmp_addr_0x0077bdb0");                            // 0x0076c9d9    e8d2f30000
    asm("_jmp_addr_0x0076c9de:");
    asm("cmp.s              eax, ebx");                                        // 0x0076c9de    3bc3
    asm("pop                ebx");                                             // 0x0076c9e0    5b
    asm("{disp8} jl         _jmp_addr_0x0076ca19");                            // 0x0076c9e1    7c36
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                     // 0x0076c9e3    8b442418
    asm("test               eax, eax");                                        // 0x0076c9e7    85c0
    asm("{disp8} je         _jmp_addr_0x0076ca0c");                            // 0x0076c9e9    7421
    asm("mov                edx, dword ptr [edi]");                            // 0x0076c9eb    8b17
    asm("push               0x000000f1");                                      // 0x0076c9ed    68f1000000
    asm("push               0x1");                                             // 0x0076c9f2    6a01
    asm("push               esi");                                             // 0x0076c9f4    56
    asm("push               0x0");                                             // 0x0076c9f5    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                     // 0x0076c9f7    8d442418
    asm("push               eax");                                             // 0x0076c9fb    50
    asm("mov.s              ecx, edi");                                        // 0x0076c9fc    8bcf
    asm("call               dword ptr [edx + 0x8d4]");                         // 0x0076c9fe    ff92d4080000
    asm("push               eax");                                             // 0x0076ca04    50
    asm("mov.s              ecx, esi");                                        // 0x0076ca05    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076ca07    e8845ee8ff
    asm("_jmp_addr_0x0076ca0c:");
    asm("pop                edi");                                             // 0x0076ca0c    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076ca0d    b801000000
    asm("pop                esi");                                             // 0x0076ca12    5e
    asm("add                esp, 0x0c");                                       // 0x0076ca13    83c40c
    asm("ret                0x0004");                                          // 0x0076ca16    c20400
    asm("_jmp_addr_0x0076ca19:");
    asm("pop                edi");                                             // 0x0076ca19    5f
    asm("xor.s              eax, eax");                                        // 0x0076ca1a    33c0
    asm("pop                esi");                                             // 0x0076ca1c    5e
    asm("add                esp, 0x0c");                                       // 0x0076ca1d    83c40c
    asm("ret                0x0004");                                          // 0x0076ca20    c20400
    __builtin_unreachable();
}

bool32_t __fastcall GetFoodAtWorshipSite__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                       // 0x0076ca30    83ec0c
    asm("push               esi");                                             // 0x0076ca33    56
    asm("mov.s              esi, ecx");                                        // 0x0076ca34    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076ca36    8b06
    asm("push               edi");                                             // 0x0076ca38    57
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076ca39    ff900c030000
    asm("mov.s              edi, eax");                                        // 0x0076ca3f    8bf8
    asm("test               edi, edi");                                        // 0x0076ca41    85ff
    asm("{disp32} je        _jmp_addr_0x0076cad1");                            // 0x0076ca43    0f8488000000
    asm("mov                edx, dword ptr [edi]");                            // 0x0076ca49    8b17
    asm("push               ebx");                                             // 0x0076ca4b    53
    asm("mov                ebx, dword ptr [esi]");                            // 0x0076ca4c    8b1e
    asm("push               0x0");                                             // 0x0076ca4e    6a00
    asm("push               0x1");                                             // 0x0076ca50    6a01
    asm("push               esi");                                             // 0x0076ca52    56
    asm("push               0x0");                                             // 0x0076ca53    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                     // 0x0076ca55    8d44241c
    asm("push               eax");                                             // 0x0076ca59    50
    asm("mov.s              ecx, edi");                                        // 0x0076ca5a    8bcf
    asm("call               dword ptr [edx + 0x8d4]");                         // 0x0076ca5c    ff92d4080000
    asm("push               eax");                                             // 0x0076ca62    50
    asm("mov.s              ecx, esi");                                        // 0x0076ca63    8bce
    asm("call               dword ptr [ebx + 0x85c]");                         // 0x0076ca65    ff935c080000
    asm("test               eax, eax");                                        // 0x0076ca6b    85c0
    asm("pop                ebx");                                             // 0x0076ca6d    5b
    asm("{disp8} je         _jmp_addr_0x0076caa5");                            // 0x0076ca6e    7435
    asm("mov.s              ecx, esi");                                        // 0x0076ca70    8bce
    asm("call               ?GetAmountOfFoodRequiredForMeal@Villager@@QAEIXZ");// 0x0076ca72    e889f1feff
    asm("test               eax, eax");                                        // 0x0076ca77    85c0
    asm("{disp8} je         _jmp_addr_0x0076ca86");                            // 0x0076ca79    740b
    asm("push               eax");                                             // 0x0076ca7b    50
    asm("push               0x0");                                             // 0x0076ca7c    6a00
    asm("push               edi");                                             // 0x0076ca7e    57
    asm("mov.s              ecx, esi");                                        // 0x0076ca7f    8bce
    asm("call               ?GetResourceFrom@Villager@@QAEIPAVObject@@W4RESOURCE_TYPE@@F@Z");                            // 0x0076ca81    e80a69feff
    asm("_jmp_addr_0x0076ca86:");
    asm("mov.s              ecx, esi");                                        // 0x0076ca86    8bce
    asm("call               ?EatFoodHeld@Villager@@QAEIXZ");                   // 0x0076ca88    e893f4feff
    asm("fstp               st(0)");                                           // 0x0076ca8d    ddd8
    asm("push               0x1");                                             // 0x0076ca8f    6a01
    asm("push               0x41");                                            // 0x0076ca91    6a41
    asm("mov.s              ecx, esi");                                        // 0x0076ca93    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");          // 0x0076ca95    e82600e8ff
    asm("pop                edi");                                             // 0x0076ca9a    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076ca9b    b801000000
    asm("pop                esi");                                             // 0x0076caa0    5e
    asm("add                esp, 0x0c");                                       // 0x0076caa1    83c40c
    asm("ret");                                                                // 0x0076caa4    c3
    asm("_jmp_addr_0x0076caa5:");
    asm("mov                edx, dword ptr [edi]");                            // 0x0076caa5    8b17
    asm("push               0x000000f1");                                      // 0x0076caa7    68f1000000
    asm("push               0x1");                                             // 0x0076caac    6a01
    asm("push               esi");                                             // 0x0076caae    56
    asm("push               0x0");                                             // 0x0076caaf    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                     // 0x0076cab1    8d442418
    asm("push               eax");                                             // 0x0076cab5    50
    asm("mov.s              ecx, edi");                                        // 0x0076cab6    8bcf
    asm("call               dword ptr [edx + 0x8d4]");                         // 0x0076cab8    ff92d4080000
    asm("push               eax");                                             // 0x0076cabe    50
    asm("mov.s              ecx, esi");                                        // 0x0076cabf    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076cac1    e8ca5de8ff
    asm("pop                edi");                                             // 0x0076cac6    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076cac7    b801000000
    asm("pop                esi");                                             // 0x0076cacc    5e
    asm("add                esp, 0x0c");                                       // 0x0076cacd    83c40c
    asm("ret");                                                                // 0x0076cad0    c3
    asm("_jmp_addr_0x0076cad1:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076cad1    8b16
    asm("push               0x000000a3");                                      // 0x0076cad3    68a3000000
    asm("mov.s              ecx, esi");                                        // 0x0076cad8    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x0076cada    ff92e8080000
    asm("pop                edi");                                             // 0x0076cae0    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076cae1    b801000000
    asm("pop                esi");                                             // 0x0076cae6    5e
    asm("add                esp, 0x0c");                                       // 0x0076cae7    83c40c
    asm("ret");                                                                // 0x0076caea    c3
    __builtin_unreachable();
}

bool32_t __fastcall GetFoodDesireAtWorshipSite__8VillagerFv(struct Villager* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                     // 0x0076caf0    d90590a38a00
    asm("ret");                                                                // 0x0076caf6    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall GotoAltarForRest__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                       // 0x0076cb00    83ec0c
    asm("push               esi");                                             // 0x0076cb03    56
    asm("mov.s              esi, ecx");                                        // 0x0076cb04    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076cb06    8b06
    asm("call               dword ptr [eax + 0x30c]");                         // 0x0076cb08    ff900c030000
    asm("test               eax, eax");                                        // 0x0076cb0e    85c0
    asm("{disp8} je         _jmp_addr_0x0076cb59");                            // 0x0076cb10    7447
    asm("mov                edx, dword ptr [esi]");                            // 0x0076cb12    8b16
    asm("xor.s              eax, eax");                                        // 0x0076cb14    33c0
    asm("{disp8} lea        ecx, dword ptr [esp + 0x04]");                     // 0x0076cb16    8d4c2404
    asm("push               ecx");                                             // 0x0076cb1a    51
    asm("mov.s              ecx, esi");                                        // 0x0076cb1b    8bce
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                     // 0x0076cb1d    89442408
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                     // 0x0076cb21    8944240c
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x0076cb25    89442410
    asm("call               dword ptr [edx + 0x30c]");                         // 0x0076cb29    ff920c030000
    asm("mov.s              ecx, eax");                                        // 0x0076cb2f    8bc8
    asm("call               _jmp_addr_0x0077ce70");                            // 0x0076cb31    e83a030100
    asm("mov                edx, dword ptr [esi]");                            // 0x0076cb36    8b16
    asm("push               0x3e");                                            // 0x0076cb38    6a3e
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                     // 0x0076cb3a    8d442408
    asm("push               eax");                                             // 0x0076cb3e    50
    asm("mov.s              ecx, esi");                                        // 0x0076cb3f    8bce
    asm("call               dword ptr [edx + 0x30c]");                         // 0x0076cb41    ff920c030000
    asm("push               eax");                                             // 0x0076cb47    50
    asm("mov.s              ecx, esi");                                        // 0x0076cb48    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                            // 0x0076cb4a    e8d111e8ff
    asm("mov                eax, 0x00000001");                                 // 0x0076cb4f    b801000000
    asm("pop                esi");                                             // 0x0076cb54    5e
    asm("add                esp, 0x0c");                                       // 0x0076cb55    83c40c
    asm("ret");                                                                // 0x0076cb58    c3
    asm("_jmp_addr_0x0076cb59:");
    asm("mov                eax, dword ptr [esi]");                            // 0x0076cb59    8b06
    asm("push               0x000000a3");                                      // 0x0076cb5b    68a3000000
    asm("mov.s              ecx, esi");                                        // 0x0076cb60    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076cb62    ff90e8080000
    asm("mov                eax, 0x00000001");                                 // 0x0076cb68    b801000000
    asm("pop                esi");                                             // 0x0076cb6d    5e
    asm("add                esp, 0x0c");                                       // 0x0076cb6e    83c40c
    asm("ret");                                                                // 0x0076cb71    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArrivesAtAltarForRest__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076cb80    56
    asm("mov.s              esi, ecx");                                        // 0x0076cb81    8bf1
    asm("push               0x0");                                             // 0x0076cb83    6a00
    asm("call               ?CheckAllowedToRestAtWorshipSite@Villager@@QAEIH@Z");                            // 0x0076cb85    e816feffff
    asm("cmp                eax, 0x01");                                       // 0x0076cb8a    83f801
    asm("{disp8} je         _jmp_addr_0x0076cb98");                            // 0x0076cb8d    7409
    asm("mov.s              ecx, esi");                                        // 0x0076cb8f    8bce
    asm("call               ?AtAltarFinishedRest@Villager@@QAEIXZ");           // 0x0076cb91    e84a000000
    asm("pop                esi");                                             // 0x0076cb96    5e
    asm("ret");                                                                // 0x0076cb97    c3
    asm("_jmp_addr_0x0076cb98:");
    asm("push               0x1");                                             // 0x0076cb98    6a01
    asm("push               0x3f");                                            // 0x0076cb9a    6a3f
    asm("mov.s              ecx, esi");                                        // 0x0076cb9c    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");          // 0x0076cb9e    e81dffe7ff
    asm("mov                eax, 0x00000001");                                 // 0x0076cba3    b801000000
    asm("pop                esi");                                             // 0x0076cba8    5e
    asm("ret");                                                                // 0x0076cba9    c3
    __builtin_unreachable();
}

bool32_t __fastcall AtAltarRest__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076cbb0    56
    asm("mov.s              esi, ecx");                                        // 0x0076cbb1    8bf1
    asm("push               0x0");                                             // 0x0076cbb3    6a00
    asm("call               ?CheckAllowedToRestAtWorshipSite@Villager@@QAEIH@Z");                            // 0x0076cbb5    e8e6fdffff
    asm("cmp                eax, 0x01");                                       // 0x0076cbba    83f801
    asm("{disp8} je         _jmp_addr_0x0076cbc8");                            // 0x0076cbbd    7409
    asm("mov.s              ecx, esi");                                        // 0x0076cbbf    8bce
    asm("call               ?AtAltarFinishedRest@Villager@@QAEIXZ");           // 0x0076cbc1    e81a000000
    asm("pop                esi");                                             // 0x0076cbc6    5e
    asm("ret");                                                                // 0x0076cbc7    c3
    asm("_jmp_addr_0x0076cbc8:");
    asm("push               0x1");                                             // 0x0076cbc8    6a01
    asm("push               0x3f");                                            // 0x0076cbca    6a3f
    asm("mov.s              ecx, esi");                                        // 0x0076cbcc    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");          // 0x0076cbce    e8edfee7ff
    asm("mov                eax, 0x00000001");                                 // 0x0076cbd3    b801000000
    asm("pop                esi");                                             // 0x0076cbd8    5e
    asm("ret");                                                                // 0x0076cbd9    c3
    __builtin_unreachable();
}

bool32_t __fastcall AtAltarFinishedRest__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076cbe0    56
    asm("mov.s              esi, ecx");                                        // 0x0076cbe1    8bf1
    asm("call               ?StartWorshippingAtWorshipSite@Villager@@QAEIXZ"); // 0x0076cbe3    e8d8f8ffff
    asm("cmp                eax, 0x01");                                       // 0x0076cbe8    83f801
    asm("{disp8} jne        _jmp_addr_0x0076cbef");                            // 0x0076cbeb    7502
    asm("pop                esi");                                             // 0x0076cbed    5e
    asm("ret");                                                                // 0x0076cbee    c3
    asm("_jmp_addr_0x0076cbef:");
    asm("mov                eax, dword ptr [esi]");                            // 0x0076cbef    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076cbf1    8bce
    asm("call               dword ptr [eax + 0x8c8]");                         // 0x0076cbf3    ff90c8080000
    asm("pop                esi");                                             // 0x0076cbf9    5e
    asm("ret");                                                                // 0x0076cbfa    c3
    __builtin_unreachable();
}

bool32_t __fastcall CheckSatisfySuppyWorship__8VillagerFv(struct Villager* this)
{
    asm("call               ?GotoStoragePitForWorshipSupplies@Villager@@QAEIXZ");                            // 0x0076cc00    e89bf3ffff
    asm("dec                eax");                                             // 0x0076cc05    48
    asm("neg                eax");                                             // 0x0076cc06    f7d8
    asm("sbb.s              eax, eax");                                        // 0x0076cc08    1bc0
    asm("inc                eax");                                             // 0x0076cc0a    40
    asm("ret");                                                                // 0x0076cc0b    c3
    __builtin_unreachable();
}
