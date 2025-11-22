#include "Villager.h"

extern float rdata_float0p5;

const float rdata_float10p0_0x0099a924 = 10.0f;
const float rdata_float_pi_0x0099a928 = 3.1415927f;
const float villager_check_num_days_in_year_0x0099a92c = 365.25f;
const float villager_check_seconds_in_day_0x0099a930 = 86400.0f;

__attribute__((section(".bss"))) struct
{
    float seconds_in_year_0x00db9dc0;
    float float_0x00db9dc4;
    float float_0x00db9dc8;
    struct Villager* villager_0x00db9dcc;
} VillagerCheck_bss_globals;

void __cdecl globl_ct_0x00756c80(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x00756c80    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00756c86    b001
    asm("test               al, cl");                                        // 0x00756c88    84c8
    asm("{disp8} jne        _jmp_addr_0x00756c94");                          // 0x00756c8a    7508
    asm("or.s               cl, al");                                        // 0x00756c8c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x00756c8e    880d34c9fa00
    asm("_jmp_addr_0x00756c94:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00756ca0");    // 0x00756c94    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00756ca0(void)
{
    asm("push               0x00407870");                                    // 0x00756ca0    6870784000
    asm("call               _atexit");                                       // 0x00756ca5    e8e7ea0600
    asm("pop                ecx");                                           // 0x00756caa    59
}

void __cdecl globl_ct_0x00756cb0(void)
{
    asm("{disp32} jmp       _FUN_00756cc0__8VillagerFv");                    // 0x00756cb0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00756cc0__8VillagerFv(void)
{
    VillagerCheck_bss_globals.float_0x00db9dc4 = 0.125f;
}

void __cdecl globl_ct_0x00756cd0(void)
{
    asm("{disp32} jmp       _FUN_00756ce0__8VillagerFv");                    // 0x00756cd0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00756ce0__8VillagerFv(void)
{
    asm("{disp32} fld       dword ptr [_rdata_float_pi_0x0099a928]");        // 0x00756ce0    d90528a99900
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x00756ce6    d80db4a38a00
    asm("{disp32} fstp      dword ptr [_VillagerCheck_bss_globals + 8]");    // 0x00756cec    d91dc89ddb00

    // VillagerCheck_globals.float_0x00db9dc8 = rdata_float_pi_0x0099a928 * rdata_float0p5;
}

void __cdecl globl_ct_0x00756d00(void)
{
    asm("{disp32} jmp       _FUN_00756d10__8VillagerFv");                    // 0x00756d00    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00756d10__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_check_seconds_in_day_0x0099a930]");   // 0x00756d10    d90530a99900
    asm("{disp32} fmul dword ptr [_villager_check_num_days_in_year_0x0099a92c]"); // 0x00756d16    d80d2ca99900
    asm("{disp32} fstp dword ptr [_VillagerCheck_bss_globals + 0]");              // 0x00756d1c    d91dc09ddb00
}

void __fastcall InteractDecideWhatToDoForOtherVillager__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x14");                                     // 0x00756d30    83ec14
    asm("push               ebp");                                           // 0x00756d33    55
    asm("push               esi");                                           // 0x00756d34    56
    asm("push               edi");                                           // 0x00756d35    57
    asm("mov.s              edi, ecx");                                      // 0x00756d36    8bf9
    asm("{disp8} lea        eax, dword ptr [edi + 0x14]");                   // 0x00756d38    8d4714
    asm("mov                ecx, dword ptr [eax]");                          // 0x00756d3b    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00756d3d    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00756d40    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x00756d43    894c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x00756d47    89542418
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x00756d4b    8944241c
    asm("mov                ebp, 0x00000009");                               // 0x00756d4f    bd09000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000001");            // 0x00756d54    c744241001000000
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000001");            // 0x00756d5c    c744240c01000000
    asm("_jmp_addr_0x00756d64:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00756d64    8d4c2414
    asm("call               ?GetFirstObjectFixed@MapCoords@@QBEPAVObject@@XZ");         // 0x00756d68    e843c7eaff
    asm("mov.s              esi, eax");                                      // 0x00756d6d    8bf0
    asm("test               esi, esi");                                      // 0x00756d6f    85f6
    asm("{disp8} je         _jmp_addr_0x00756dc6");                          // 0x00756d71    7453
    asm("_jmp_addr_0x00756d73:");
    asm("cmp.s              esi, edi");                                      // 0x00756d73    3bf7
    asm("{disp8} je         _jmp_addr_0x00756db4");                          // 0x00756d75    743d
    asm("mov                edx, dword ptr [esi]");                          // 0x00756d77    8b16
    asm("mov.s              ecx, esi");                                      // 0x00756d79    8bce
    asm("call               dword ptr [edx + 0x2c]");                        // 0x00756d7b    ff522c
    asm("test               eax, eax");                                      // 0x00756d7e    85c0
    asm("{disp8} je         _jmp_addr_0x00756db4");                          // 0x00756d80    7432
    asm("mov                eax, dword ptr [esi]");                          // 0x00756d82    8b06
    asm("mov.s              ecx, esi");                                      // 0x00756d84    8bce
    asm("call               dword ptr [eax + 0x208]");                       // 0x00756d86    ff9008020000
    asm("test               eax, eax");                                      // 0x00756d8c    85c0
    asm("{disp8} je         _jmp_addr_0x00756db4");                          // 0x00756d8e    7424
    asm("push               0x0");                                           // 0x00756d90    6a00
    asm("push               0x009c7fa0");                                    // 0x00756d92    68a07f9c00
    asm("push               0x009c7f50");                                    // 0x00756d97    68507f9c00
    asm("push               0x0");                                           // 0x00756d9c    6a00
    asm("push               esi");                                           // 0x00756d9e    56
    asm("call               ___RTDynamicCast");                              // 0x00756d9f    e875ec0600
    asm("add                esp, 0x14");                                     // 0x00756da4    83c414
    asm("push               eax");                                           // 0x00756da7    50
    asm("mov.s              ecx, edi");                                      // 0x00756da8    8bcf
    asm("call               ?CheckMoveHouse@Villager@@QAEIPAVObject@@@Z");   // 0x00756daa    e8d1030000
    asm("cmp                eax, 0x01");                                     // 0x00756daf    83f801
    asm("{disp8} je         _jmp_addr_0x00756dfc");                          // 0x00756db2    7448
    asm("_jmp_addr_0x00756db4:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00756db4    8d4c2414
    asm("push               ecx");                                           // 0x00756db8    51
    asm("mov.s              ecx, esi");                                      // 0x00756db9    8bce
    asm("call               @GetMapChild__6ObjectFRC9MapCoords@12");         // 0x00756dbb    e8a017eeff
    asm("mov.s              esi, eax");                                      // 0x00756dc0    8bf0
    asm("test               esi, esi");                                      // 0x00756dc2    85f6
    asm("{disp8} jne        _jmp_addr_0x00756d73");                          // 0x00756dc4    75ad
    asm("_jmp_addr_0x00756dc6:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                   // 0x00756dc6    8d54240c
    asm("push               edx");                                           // 0x00756dca    52
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x00756dcb    8d442414
    asm("push               eax");                                           // 0x00756dcf    50
    asm("dec                ebp");                                           // 0x00756dd0    4d
    asm("call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z");        // 0x00756dd1    e80a6affff
    asm("add                esp, 0x08");                                     // 0x00756dd6    83c408
    asm("push               eax");                                           // 0x00756dd9    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x00756dda    8d4c2418
    asm("call               @__apl__9MapCoordsFRC9JustMapXZ@12");            // 0x00756dde    e88de6eaff
    asm("test               ebp, ebp");                                      // 0x00756de3    85ed
    asm("{disp32} jne       _jmp_addr_0x00756d64");                          // 0x00756de5    0f8579ffffff
    asm("mov                edx, dword ptr [edi]");                          // 0x00756deb    8b17
    asm("mov.s              ecx, edi");                                      // 0x00756ded    8bcf
    asm("call               dword ptr [edx + 0x8c8]");                       // 0x00756def    ff92c8080000
    asm("pop                edi");                                           // 0x00756df5    5f
    asm("pop                esi");                                           // 0x00756df6    5e
    asm("pop                ebp");                                           // 0x00756df7    5d
    asm("add                esp, 0x14");                                     // 0x00756df8    83c414
    asm("ret");                                                              // 0x00756dfb    c3
    asm("_jmp_addr_0x00756dfc:");
    asm("pop                edi");                                           // 0x00756dfc    5f
    asm("pop                esi");                                           // 0x00756dfd    5e
    asm("mov                eax, 0x00000001");                               // 0x00756dfe    b801000000
    asm("pop                ebp");                                           // 0x00756e03    5d
    asm("add                esp, 0x14");                                     // 0x00756e04    83c414
    asm("ret");                                                              // 0x00756e07    c3
    __builtin_unreachable();
}

void __fastcall InteractDecideWhatToDo__8VillagerFv(struct Villager* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00756e10    8b01
    asm("jmp                dword ptr [eax + 0x8c8]");                       // 0x00756e12    ffa0c8080000
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetDiscipleInteractState__8VillagerFv(struct Villager* this)
{
    asm("xor.s              eax, eax");                                      // 0x00756e20    33c0
    asm("{disp32} mov       al, byte ptr [ecx + 0x000000f2]");               // 0x00756e22    8a81f2000000
    asm("dec                eax");                                           // 0x00756e28    48
    asm("cmp                eax, 0x09");                                     // 0x00756e29    83f809
    asm("{disp8} ja         _jmp_addr_0x00756e53");                          // 0x00756e2c    7725
    asm("jmp                dword ptr [eax*4 + 0x756e58]");                  // 0x00756e2e    ff2485586e7500
    asm("mov                eax, 0x000000ad");                               // 0x00756e35    b8ad000000
    asm("ret");                                                              // 0x00756e3a    c3
    asm("mov                eax, 0x000000af");                               // 0x00756e3b    b8af000000
    asm("ret");                                                              // 0x00756e40    c3
    asm("mov                eax, 0x000000ae");                               // 0x00756e41    b8ae000000
    asm("ret");                                                              // 0x00756e46    c3
    asm("mov                eax, 0x000000b3");                               // 0x00756e47    b8b3000000
    asm("ret");                                                              // 0x00756e4c    c3
    asm("mov                eax, 0x000000ac");                               // 0x00756e4d    b8ac000000
    asm("ret");                                                              // 0x00756e52    c3
    asm("_jmp_addr_0x00756e53:");
    asm("xor.s              eax, eax");                                      // 0x00756e53    33c0
    asm("ret");                                                              // 0x00756e55    c3
    // Snippet: db, [0x00756e56, 0x00756e58)
    asm(".byte 0x8b, 0xff");                  // 0x00756e56
    // Snippet: jmptbl, [0x00756e58, 0x00756e80)
    asm(".byte 0x35, 0x6e, 0x75, 0x00");      // 0x00756e58
    asm(".byte 0x3b, 0x6e, 0x75, 0x00");      // 0x00756e5c
    asm(".byte 0x41, 0x6e, 0x75, 0x00");      // 0x00756e60
    asm(".byte 0x4d, 0x6e, 0x75, 0x00");      // 0x00756e64
    asm(".byte 0x47, 0x6e, 0x75, 0x00");      // 0x00756e68
    asm(".byte 0x53, 0x6e, 0x75, 0x00");      // 0x00756e6c
    asm(".byte 0x4d, 0x6e, 0x75, 0x00");      // 0x00756e70
    asm(".byte 0x4d, 0x6e, 0x75, 0x00");      // 0x00756e74
    asm(".byte 0x53, 0x6e, 0x75, 0x00");      // 0x00756e78
    asm(".byte 0x4d, 0x6e, 0x75, 0x00");      // 0x00756e7c
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FindCloseObjectsForInteract__8VillagerFP35LHOrderedLinkedList_12SortedObject_RC9MapCoords(struct Villager* this, const void* edx, struct LHOrderedLinkedList__SortedObject* param_1, const struct MapCoords* param_2)
{
    asm("sub                esp, 0x48");                                     // 0x00756e80    83ec48
    asm("{disp8} mov        eax, dword ptr [esp + 0x50]");                   // 0x00756e83    8b442450
    asm("push               ebx");                                           // 0x00756e87    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x50]");                   // 0x00756e88    8b5c2450
    asm("test               ebx, ebx");                                      // 0x00756e8c    85db
    asm("push               ebp");                                           // 0x00756e8e    55
    asm("mov.s              ebp, ecx");                                      // 0x00756e8f    8be9
    asm("mov                ecx, dword ptr [eax]");                          // 0x00756e91    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00756e93    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00756e96    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x2c], ebp");                   // 0x00756e99    896c242c
    asm("{disp8} mov        dword ptr [esp + 0x44], ecx");                   // 0x00756e9d    894c2444
    asm("{disp8} mov        dword ptr [esp + 0x48], edx");                   // 0x00756ea1    89542448
    asm("{disp8} mov        dword ptr [esp + 0x4c], eax");                   // 0x00756ea5    8944244c
    asm("{disp8} jne        _jmp_addr_0x00756eb5");                          // 0x00756ea9    750a
    asm("pop                ebp");                                           // 0x00756eab    5d
    asm("xor.s              eax, eax");                                      // 0x00756eac    33c0
    asm("pop                ebx");                                           // 0x00756eae    5b
    asm("add                esp, 0x48");                                     // 0x00756eaf    83c448
    asm("ret                0x0008");                                        // 0x00756eb2    c20800
    asm("_jmp_addr_0x00756eb5:");
    asm("push               esi");                                           // 0x00756eb5    56
    asm("mov                eax, 0x00000001");                               // 0x00756eb6    b801000000
    asm("push               edi");                                           // 0x00756ebb    57
    asm("{disp32} mov       dword ptr [_VillagerCheck_bss_globals + 0xc], ebp"); // 0x00756ebc    892dcc9ddb00
    asm("xor.s              esi, esi");                                      // 0x00756ec2    33f6
    asm("{disp8} mov        dword ptr [esp + 0x3c], eax");                   // 0x00756ec4    8944243c
    asm("{disp8} mov        dword ptr [esp + 0x38], eax");                   // 0x00756ec8    89442438
    asm("{disp8} mov        dword ptr [esp + 0x20], 0x00000009");            // 0x00756ecc    c744242009000000
    asm("_jmp_addr_0x00756ed4:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x4c]");                   // 0x00756ed4    8d4c244c
    asm("call               ?InBounds@MapCoords@@QBEIXZ");                   // 0x00756ed8    e8e3d3eaff
    asm("test               eax, eax");                                      // 0x00756edd    85c0
    asm("{disp32} je        _jmp_addr_0x00757148");                          // 0x00756edf    0f8463020000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x40]");                   // 0x00756ee5    8d4c2440
    asm("push               ecx");                                           // 0x00756ee9    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x50]");                   // 0x00756eea    8d4c2450
    asm("call               @GetFirstIterator__9MapCoordsCFv@12");           // 0x00756eee    e8ddc5eaff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                   // 0x00756ef3    8b4c2440
    asm("test               ecx, ecx");                                      // 0x00756ef7    85c9
    asm("{disp32} je        _jmp_addr_0x00757148");                          // 0x00756ef9    0f8449020000
    asm("_jmp_addr_0x00756eff:");
    asm("cmp.s              ecx, ebp");                                      // 0x00756eff    3bcd
    asm("{disp32} je        _jmp_addr_0x0075710b");                          // 0x00756f01    0f8404020000
    asm("mov                edx, dword ptr [ecx]");                          // 0x00756f07    8b11
    asm("call               dword ptr [edx + 0x2c]");                        // 0x00756f09    ff522c
    asm("test               eax, eax");                                      // 0x00756f0c    85c0
    asm("{disp32} je        _jmp_addr_0x00757107");                          // 0x00756f0e    0f84f3010000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                   // 0x00756f14    8b4c2440
    asm("{disp32} mov       edx, dword ptr [_VillagerCheck_bss_globals + 0xc]"); // 0x00756f18    8b15cc9ddb00
    asm("mov                eax, dword ptr [ecx]");                          // 0x00756f1e    8b01
    asm("push               edx");                                           // 0x00756f20    52
    asm("mov.s              edi, ecx");                                      // 0x00756f21    8bf9
    asm("call               dword ptr [eax + 0x6c4]");                       // 0x00756f23    ff90c4060000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00756f29    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00756f2f    dfe0
    asm("test               ah, 0x41");                                      // 0x00756f31    f6c441
    asm("{disp8} jne        _jmp_addr_0x00756f4d");                          // 0x00756f34    7517
    asm("{disp32} mov       ecx, dword ptr [_VillagerCheck_bss_globals + 0xc]"); // 0x00756f36    8b0dcc9ddb00
    asm("mov                eax, dword ptr [edi]");                          // 0x00756f3c    8b07
    asm("push               ecx");                                           // 0x00756f3e    51
    asm("mov.s              ecx, edi");                                      // 0x00756f3f    8bcf
    asm("call               dword ptr [eax + 0x6c4]");                       // 0x00756f41    ff90c4060000
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00756f47    d95c2414
    asm("{disp8} jmp        _jmp_addr_0x00756f55");                          // 0x00756f4b    eb08
    asm("_jmp_addr_0x00756f4d:");
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x00756f4d    c744241400000000
    asm("_jmp_addr_0x00756f55:");
    asm("{disp8} mov        edx, dword ptr [edi + 0x28]");                   // 0x00756f55    8b5728
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x00756f58    8b4c2414
    asm("{disp32} mov       eax, dword ptr [edx + 0x000000e0]");             // 0x00756f5c    8b82e0000000
    asm("push               0x40c00000");                                    // 0x00756f62    680000c040
    asm("push               ecx");                                           // 0x00756f67    51
    asm("{disp32} mov       ecx, dword ptr [_VillagerCheck_bss_globals + 0xc]"); // 0x00756f68    8b0dcc9ddb00
    asm("{disp8} mov        dword ptr [esp + 0x2c], eax");                   // 0x00756f6e    8944242c
    asm("call               _jmp_addr_0x005eca20");                          // 0x00756f72    e8a95ae9ff
    asm("{disp8} fmul       dword ptr [esp + 0x24]");                        // 0x00756f77    d84c2424
    asm("{disp8} fst        dword ptr [esp + 0x10]");                        // 0x00756f7b    d9542410
    asm("{disp32} fcomp     dword ptr [_rdata_float0p001]");                 // 0x00756f7f    d81db0a38a00
    asm("fnstsw             ax");                                            // 0x00756f85    dfe0
    asm("test               ah, 0x41");                                      // 0x00756f87    f6c441
    asm("{disp32} jne       _jmp_addr_0x00757107");                          // 0x00756f8a    0f8577010000
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                   // 0x00756f90    8b542410
    asm("{disp8} mov        ecx, dword ptr [esp + 0x60]");                   // 0x00756f94    8b4c2460
    asm("push               0x3f800000");                                    // 0x00756f98    680000803f
    asm("push               edx");                                           // 0x00756f9d    52
    asm("{disp8} lea        eax, dword ptr [edi + 0x14]");                   // 0x00756f9e    8d4714
    asm("push               eax");                                           // 0x00756fa1    50
    asm("push               ecx");                                           // 0x00756fa2    51
    asm("push               0xb");                                           // 0x00756fa3    6a0b
    asm("call               _jmp_addr_0x00648290");                          // 0x00756fa5    e8e612efff
    asm("push               0x8");                                           // 0x00756faa    6a08
    asm("call               ??2@YAPAXI@Z");                                  // 0x00756fac    e83df50600
    asm("xor.s              ebp, ebp");                                      // 0x00756fb1    33ed
    asm("add                esp, 0x18");                                     // 0x00756fb3    83c418
    asm("cmp.s              eax, ebp");                                      // 0x00756fb6    3bc5
    asm("{disp8} je         _jmp_addr_0x00756fc5");                          // 0x00756fb8    740b
    asm("mov                dword ptr [eax], edi");                          // 0x00756fba    8938
    asm("{disp8} mov        dword ptr [eax + 0x04], ebp");                   // 0x00756fbc    896804
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x00756fbf    89442410
    asm("{disp8} jmp        _jmp_addr_0x00756fc9");                          // 0x00756fc3    eb04
    asm("_jmp_addr_0x00756fc5:");
    asm("{disp8} mov        dword ptr [esp + 0x10], ebp");                   // 0x00756fc5    896c2410
    asm("_jmp_addr_0x00756fc9:");
    asm("mov                esi, dword ptr [ebx]");                          // 0x00756fc9    8b33
    asm("cmp.s              esi, ebp");                                      // 0x00756fcb    3bf5
    asm("{disp32} je        _jmp_addr_0x007570de");                          // 0x00756fcd    0f840b010000
    asm("_jmp_addr_0x00756fd3:");
    asm("{disp32} mov       eax, dword ptr [_VillagerCheck_bss_globals + 0xc]"); // 0x00756fd3    a1cc9ddb00
    asm("mov                edx, dword ptr [edi]");                          // 0x00756fd8    8b17
    asm("mov                ebx, dword ptr [esi]");                          // 0x00756fda    8b1e
    asm("push               eax");                                           // 0x00756fdc    50
    asm("mov.s              ecx, edi");                                      // 0x00756fdd    8bcf
    asm("call               dword ptr [edx + 0x6c4]");                       // 0x00756fdf    ff92c4060000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00756fe5    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00756feb    dfe0
    asm("test               ah, 0x41");                                      // 0x00756fed    f6c441
    asm("{disp8} jne        _jmp_addr_0x00757008");                          // 0x00756ff0    7516
    asm("{disp32} mov       eax, dword ptr [_VillagerCheck_bss_globals + 0xc]"); // 0x00756ff2    a1cc9ddb00
    asm("mov                edx, dword ptr [edi]");                          // 0x00756ff7    8b17
    asm("push               eax");                                           // 0x00756ff9    50
    asm("mov.s              ecx, edi");                                      // 0x00756ffa    8bcf
    asm("call               dword ptr [edx + 0x6c4]");                       // 0x00756ffc    ff92c4060000
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x00757002    d95c2418
    asm("{disp8} jmp        _jmp_addr_0x00757010");                          // 0x00757006    eb08
    asm("_jmp_addr_0x00757008:");
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000000");            // 0x00757008    c744241800000000
    asm("_jmp_addr_0x00757010:");
    asm("{disp8} mov        ecx, dword ptr [edi + 0x28]");                   // 0x00757010    8b4f28
    asm("{disp32} mov       edx, dword ptr [ecx + 0x000000e0]");             // 0x00757013    8b91e0000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x00757019    8b442418
    asm("{disp32} mov       ecx, dword ptr [_VillagerCheck_bss_globals + 0xc]"); // 0x0075701d    8b0dcc9ddb00
    asm("push               0x40c00000");                                    // 0x00757023    680000c040
    asm("push               eax");                                           // 0x00757028    50
    asm("{disp8} mov        dword ptr [esp + 0x34], edx");                   // 0x00757029    89542434
    asm("call               _jmp_addr_0x005eca20");                          // 0x0075702d    e8ee59e9ff
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x00757032    d95c2428
    asm("{disp32} mov       eax, dword ptr [_VillagerCheck_bss_globals + 0xc]"); // 0x00757036    a1cc9ddb00
    asm("mov                edx, dword ptr [ebx]");                          // 0x0075703b    8b13
    asm("push               eax");                                           // 0x0075703d    50
    asm("mov.s              ecx, ebx");                                      // 0x0075703e    8bcb
    asm("call               dword ptr [edx + 0x6c4]");                       // 0x00757040    ff92c4060000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00757046    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075704c    dfe0
    asm("test               ah, 0x41");                                      // 0x0075704e    f6c441
    asm("{disp8} jne        _jmp_addr_0x00757069");                          // 0x00757051    7516
    asm("{disp32} mov       eax, dword ptr [_VillagerCheck_bss_globals + 0xc]"); // 0x00757053    a1cc9ddb00
    asm("mov                edx, dword ptr [ebx]");                          // 0x00757058    8b13
    asm("push               eax");                                           // 0x0075705a    50
    asm("mov.s              ecx, ebx");                                      // 0x0075705b    8bcb
    asm("call               dword ptr [edx + 0x6c4]");                       // 0x0075705d    ff92c4060000
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x00757063    d95c241c
    asm("{disp8} jmp        _jmp_addr_0x00757071");                          // 0x00757067    eb08
    asm("_jmp_addr_0x00757069:");
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");            // 0x00757069    c744241c00000000
    asm("_jmp_addr_0x00757071:");
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x00757071    d9442428
    asm("{disp8} mov        ecx, dword ptr [ebx + 0x28]");                   // 0x00757075    8b4b28
    asm("{disp8} fmul       dword ptr [esp + 0x2c]");                        // 0x00757078    d84c242c
    asm("{disp32} mov       edx, dword ptr [ecx + 0x000000e0]");             // 0x0075707c    8b91e0000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                   // 0x00757082    8b44241c
    asm("{disp32} mov       ecx, dword ptr [_VillagerCheck_bss_globals + 0xc]"); // 0x00757086    8b0dcc9ddb00
    asm("push               0x40c00000");                                    // 0x0075708c    680000c040
    asm("{disp8} fstp       dword ptr [esp + 0x2c]");                        // 0x00757091    d95c242c
    asm("push               eax");                                           // 0x00757095    50
    asm("{disp8} mov        dword ptr [esp + 0x38], edx");                   // 0x00757096    89542438
    asm("call               _jmp_addr_0x005eca20");                          // 0x0075709a    e88159e9ff
    asm("{disp8} fmul       dword ptr [esp + 0x30]");                        // 0x0075709f    d84c2430
    asm("{disp8} fcomp      dword ptr [esp + 0x28]");                        // 0x007570a3    d85c2428
    asm("fnstsw             ax");                                            // 0x007570a7    dfe0
    asm("test               ah, 0x01");                                      // 0x007570a9    f6c401
    asm("{disp8} jne        _jmp_addr_0x007570bc");                          // 0x007570ac    750e
    asm("mov.s              ebp, esi");                                      // 0x007570ae    8bee
    asm("{disp8} mov        esi, dword ptr [esi + 0x04]");                   // 0x007570b0    8b7604
    asm("test               esi, esi");                                      // 0x007570b3    85f6
    asm("{disp8} je         _jmp_addr_0x007570d6");                          // 0x007570b5    741f
    asm("{disp32} jmp       _jmp_addr_0x00756fd3");                          // 0x007570b7    e917ffffff
    asm("_jmp_addr_0x007570bc:");
    asm("test               ebp, ebp");                                      // 0x007570bc    85ed
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x007570be    8b442410
    asm("{disp8} mov        dword ptr [eax + 0x04], esi");                   // 0x007570c2    897004
    asm("{disp8} jne        _jmp_addr_0x007570cf");                          // 0x007570c5    7508
    asm("{disp8} mov        ecx, dword ptr [esp + 0x5c]");                   // 0x007570c7    8b4c245c
    asm("mov                dword ptr [ecx], eax");                          // 0x007570cb    8901
    asm("{disp8} jmp        _jmp_addr_0x007570d2");                          // 0x007570cd    eb03
    asm("_jmp_addr_0x007570cf:");
    asm("{disp8} mov        dword ptr [ebp + 0x04], eax");                   // 0x007570cf    894504
    asm("_jmp_addr_0x007570d2:");
    asm("test               esi, esi");                                      // 0x007570d2    85f6
    asm("{disp8} jne        _jmp_addr_0x007570ed");                          // 0x007570d4    7517
    asm("_jmp_addr_0x007570d6:");
    asm("test               ebp, ebp");                                      // 0x007570d6    85ed
    asm("{disp8} jne        _jmp_addr_0x007570e6");                          // 0x007570d8    750c
    asm("{disp8} mov        ebx, dword ptr [esp + 0x5c]");                   // 0x007570da    8b5c245c
    asm("_jmp_addr_0x007570de:");
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                   // 0x007570de    8b542410
    asm("mov                dword ptr [ebx], edx");                          // 0x007570e2    8913
    asm("{disp8} jmp        _jmp_addr_0x007570f1");                          // 0x007570e4    eb0b
    asm("_jmp_addr_0x007570e6:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x007570e6    8b442410
    asm("{disp8} mov        dword ptr [ebp + 0x04], eax");                   // 0x007570ea    894504
    asm("_jmp_addr_0x007570ed:");
    asm("{disp8} mov        ebx, dword ptr [esp + 0x5c]");                   // 0x007570ed    8b5c245c
    asm("_jmp_addr_0x007570f1:");
    asm("{disp8} mov        eax, dword ptr [ebx + 0x04]");                   // 0x007570f1    8b4304
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                   // 0x007570f4    8b4c2440
    asm("{disp8} mov        ebp, dword ptr [esp + 0x34]");                   // 0x007570f8    8b6c2434
    asm("inc                eax");                                           // 0x007570fc    40
    asm("{disp8} mov        dword ptr [ebx + 0x04], eax");                   // 0x007570fd    894304
    asm("mov                esi, 0x00000001");                               // 0x00757100    be01000000
    asm("{disp8} jmp        _jmp_addr_0x0075710b");                          // 0x00757105    eb04
    asm("_jmp_addr_0x00757107:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                   // 0x00757107    8b4c2440
    asm("_jmp_addr_0x0075710b:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x48]");                   // 0x0075710b    8b442448
    asm("mov                edx, dword ptr [ecx]");                          // 0x0075710f    8b11
    asm("push               eax");                                           // 0x00757111    50
    asm("call               dword ptr [edx + 0x53c]");                       // 0x00757112    ff923c050000
    asm("mov.s              ecx, eax");                                      // 0x00757118    8bc8
    asm("test               ecx, ecx");                                      // 0x0075711a    85c9
    asm("{disp8} mov        dword ptr [esp + 0x40], ecx");                   // 0x0075711c    894c2440
    asm("{disp32} jne       _jmp_addr_0x00756eff");                          // 0x00757120    0f85d9fdffff
    asm("{disp8} mov        eax, dword ptr [esp + 0x44]");                   // 0x00757126    8b442444
    asm("test               eax, eax");                                      // 0x0075712a    85c0
    asm("{disp8} je         _jmp_addr_0x00757148");                          // 0x0075712c    741a
    asm("{disp8} mov        ecx, dword ptr [esp + 0x48]");                   // 0x0075712e    8b4c2448
    asm("mov                ecx, dword ptr [ecx]");                          // 0x00757132    8b09
    asm("test               ecx, ecx");                                      // 0x00757134    85c9
    asm("{disp8} mov        dword ptr [esp + 0x40], ecx");                   // 0x00757136    894c2440
    asm("{disp8} mov        dword ptr [esp + 0x44], 0x00000000");            // 0x0075713a    c744244400000000
    asm("{disp32} jne       _jmp_addr_0x00756eff");                          // 0x00757142    0f85b7fdffff
    asm("_jmp_addr_0x00757148:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x38]");                   // 0x00757148    8d542438
    asm("push               edx");                                           // 0x0075714c    52
    asm("{disp8} lea        eax, dword ptr [esp + 0x40]");                   // 0x0075714d    8d442440
    asm("push               eax");                                           // 0x00757151    50
    asm("call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z");        // 0x00757152    e88966ffff
    asm("add                esp, 0x08");                                     // 0x00757157    83c408
    asm("push               eax");                                           // 0x0075715a    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x50]");                   // 0x0075715b    8d4c2450
    asm("call               @__apl__9MapCoordsFRC9JustMapXZ@12");            // 0x0075715f    e80ce3eaff
    asm("dec                dword ptr [esp + 0x20]");                        // 0x00757164    ff4c2420
    asm("{disp32} jne       _jmp_addr_0x00756ed4");                          // 0x00757168    0f8566fdffff
    asm("pop                edi");                                           // 0x0075716e    5f
    asm("mov.s              eax, esi");                                      // 0x0075716f    8bc6
    asm("pop                esi");                                           // 0x00757171    5e
    asm("pop                ebp");                                           // 0x00757172    5d
    asm("pop                ebx");                                           // 0x00757173    5b
    asm("add                esp, 0x48");                                     // 0x00757174    83c448
    asm("ret                0x0008");                                        // 0x00757177    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckMoveHouse__8VillagerFP6Object(struct Villager* this, const void* edx, struct Object* object)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00757180    8b442404
    asm("push               esi");                                           // 0x00757184    56
    asm("push               edi");                                           // 0x00757185    57
    asm("push               0x0");                                           // 0x00757186    6a00
    asm("push               0x009c7fa0");                                    // 0x00757188    68a07f9c00
    asm("push               0x009c7f50");                                    // 0x0075718d    68507f9c00
    asm("push               0x0");                                           // 0x00757192    6a00
    asm("push               eax");                                           // 0x00757194    50
    asm("mov.s              edi, ecx");                                      // 0x00757195    8bf9
    asm("call               ___RTDynamicCast");                              // 0x00757197    e87de80600
    asm("mov.s              esi, eax");                                      // 0x0075719c    8bf0
    asm("add                esp, 0x14");                                     // 0x0075719e    83c414
    asm("test               esi, esi");                                      // 0x007571a1    85f6
    asm("{disp8} je         _jmp_addr_0x00757200");                          // 0x007571a3    745b
    asm("mov                edx, dword ptr [edi]");                          // 0x007571a5    8b17
    asm("mov.s              ecx, edi");                                      // 0x007571a7    8bcf
    asm("call               dword ptr [edx + 0xaf8]");                       // 0x007571a9    ff92f80a0000
    asm("test               eax, eax");                                      // 0x007571af    85c0
    asm("{disp8} je         _jmp_addr_0x007571bf");                          // 0x007571b1    740c
    asm("mov                eax, dword ptr [esi]");                          // 0x007571b3    8b06
    asm("mov.s              ecx, esi");                                      // 0x007571b5    8bce
    asm("call               dword ptr [eax + 0x8a0]");                       // 0x007571b7    ff90a0080000
    asm("{disp8} jmp        _jmp_addr_0x007571c9");                          // 0x007571bd    eb0a
    asm("_jmp_addr_0x007571bf:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007571bf    8b16
    asm("mov.s              ecx, esi");                                      // 0x007571c1    8bce
    asm("call               dword ptr [edx + 0x89c]");                       // 0x007571c3    ff929c080000
    asm("_jmp_addr_0x007571c9:");
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x007571c9    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x007571cf    dfe0
    asm("test               ah, 0x01");                                      // 0x007571d1    f6c401
    asm("{disp8} je         _jmp_addr_0x007571e8");                          // 0x007571d4    7412
    asm("push               esi");                                           // 0x007571d6    56
    asm("mov.s              ecx, edi");                                      // 0x007571d7    8bcf
    asm("call               ?ForceMoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");  // 0x007571d9    e862f0ffff
    asm("pop                edi");                                           // 0x007571de    5f
    asm("mov                eax, 0x00000001");                               // 0x007571df    b801000000
    asm("pop                esi");                                           // 0x007571e4    5e
    asm("ret                0x0004");                                        // 0x007571e5    c20400
    asm("_jmp_addr_0x007571e8:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007571e8    8b06
    asm("mov.s              ecx, esi");                                      // 0x007571ea    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x007571ec    ff5048
    asm("test               eax, eax");                                      // 0x007571ef    85c0
    asm("{disp8} je         _jmp_addr_0x00757200");                          // 0x007571f1    740d
    asm("push               eax");                                           // 0x007571f3    50
    asm("mov.s              ecx, edi");                                      // 0x007571f4    8bcf
    asm("call               ?CheckMoveIntoTown@Villager@@QAEIAAVTown@@@Z");  // 0x007571f6    e815000000
    asm("pop                edi");                                           // 0x007571fb    5f
    asm("pop                esi");                                           // 0x007571fc    5e
    asm("ret                0x0004");                                        // 0x007571fd    c20400
    asm("_jmp_addr_0x00757200:");
    asm("pop                edi");                                           // 0x00757200    5f
    asm("xor.s              eax, eax");                                      // 0x00757201    33c0
    asm("pop                esi");                                           // 0x00757203    5e
    asm("ret                0x0004");                                        // 0x00757204    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckMoveIntoTown__8VillagerFR4Town(struct Villager* this, const void* edx, struct Town* param_1)
{
    asm("push               esi");                                           // 0x00757210    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x08]");                   // 0x00757211    8b742408
    asm("push               edi");                                           // 0x00757215    57
    asm("mov.s              edi, ecx");                                      // 0x00757216    8bf9
    asm("push               0x0");                                           // 0x00757218    6a00
    asm("push               edi");                                           // 0x0075721a    57
    asm("mov.s              ecx, esi");                                      // 0x0075721b    8bce
    asm("call               ?FindAbodeWithSpaceInTown@Town@@QAEPAVAbode@@PAVVillager@@M@Z");                          // 0x0075721d    e84e41feff
    asm("test               eax, eax");                                      // 0x00757222    85c0
    asm("{disp8} jne        _jmp_addr_0x00757245");                          // 0x00757224    751f
    asm("mov.s              ecx, esi");                                      // 0x00757226    8bce
    asm("call               ?IsSpaceForNewVillager@Town@@QAE_NXZ");          // 0x00757228    e8a38dfeff
    asm("test               al, al");                                        // 0x0075722d    84c0
    asm("{disp8} je         _jmp_addr_0x00757257");                          // 0x0075722f    7426
    asm("{disp32} mov       eax, dword ptr [esi + 0x000009a4]");             // 0x00757231    8b86a4090000
    asm("test               eax, eax");                                      // 0x00757237    85c0
    asm("{disp8} jne        _jmp_addr_0x00757245");                          // 0x00757239    750a
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000754]");             // 0x0075723b    8b8654070000
    asm("test               eax, eax");                                      // 0x00757241    85c0
    asm("{disp8} je         _jmp_addr_0x00757257");                          // 0x00757243    7412
    asm("_jmp_addr_0x00757245:");
    asm("push               eax");                                           // 0x00757245    50
    asm("mov.s              ecx, edi");                                      // 0x00757246    8bcf
    asm("call               ?ForceMoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");  // 0x00757248    e8f3efffff
    asm("pop                edi");                                           // 0x0075724d    5f
    asm("mov                eax, 0x00000001");                               // 0x0075724e    b801000000
    asm("pop                esi");                                           // 0x00757253    5e
    asm("ret                0x0004");                                        // 0x00757254    c20400
    asm("_jmp_addr_0x00757257:");
    asm("pop                edi");                                           // 0x00757257    5f
    asm("xor.s              eax, eax");                                      // 0x00757258    33c0
    asm("pop                esi");                                           // 0x0075725a    5e
    asm("ret                0x0004");                                        // 0x0075725b    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithAnimal__8VillagerFv(struct Villager* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithWorshipSite__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                     // 0x00757270    83ec08
    asm("push               ebx");                                           // 0x00757273    53
    asm("push               ebp");                                           // 0x00757274    55
    asm("push               esi");                                           // 0x00757275    56
    asm("push               edi");                                           // 0x00757276    57
    asm("push               0x0");                                           // 0x00757277    6a00
    asm("push               0x009c7f80");                                    // 0x00757279    68807f9c00
    asm("mov.s              esi, ecx");                                      // 0x0075727e    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x00757280    8b8618010000
    asm("push               0x009c7f50");                                    // 0x00757286    68507f9c00
    asm("push               0x0");                                           // 0x0075728b    6a00
    asm("push               eax");                                           // 0x0075728d    50
    asm("call               ___RTDynamicCast");                              // 0x0075728e    e886e70600
    asm("mov.s              edi, eax");                                      // 0x00757293    8bf8
    asm("mov                eax, dword ptr [edi]");                          // 0x00757295    8b07
    asm("add                esp, 0x14");                                     // 0x00757297    83c414
    asm("mov.s              ecx, edi");                                      // 0x0075729a    8bcf
    asm("call               dword ptr [eax + 0x890]");                       // 0x0075729c    ff9090080000
    asm("test               eax, eax");                                      // 0x007572a2    85c0
    asm("{disp8} je         _jmp_addr_0x007572bd");                          // 0x007572a4    7417
    asm("mov                edx, dword ptr [edi]");                          // 0x007572a6    8b17
    asm("mov.s              ecx, edi");                                      // 0x007572a8    8bcf
    asm("call               dword ptr [edx + 0x8d8]");                       // 0x007572aa    ff92d8080000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x007572b0    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x007572b6    dfe0
    asm("test               ah, 0x41");                                      // 0x007572b8    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075730f");                          // 0x007572bb    7552
    asm("_jmp_addr_0x007572bd:");
    asm("mov                eax, dword ptr [edi]");                          // 0x007572bd    8b07
    asm("mov.s              ecx, edi");                                      // 0x007572bf    8bcf
    asm("call               dword ptr [eax + 0x1c]");                        // 0x007572c1    ff501c
    asm("mov                edx, dword ptr [esi]");                          // 0x007572c4    8b16
    asm("mov.s              ecx, esi");                                      // 0x007572c6    8bce
    asm("mov.s              ebx, eax");                                      // 0x007572c8    8bd8
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007572ca    ff521c
    asm("cmp.s              ebx, eax");                                      // 0x007572cd    3bd8
    asm("{disp8} jne        _jmp_addr_0x0075730f");                          // 0x007572cf    753e
    asm("push               edi");                                           // 0x007572d1    57
    asm("mov.s              ecx, esi");                                      // 0x007572d2    8bce
    asm("call               ?SetupBuildingObject@Villager@@QAEIPAVMultiMapFixed@@@Z");                          // 0x007572d4    e857120000
    asm("cmp                eax, 0x01");                                     // 0x007572d9    83f801
    asm("{disp8} jne        _jmp_addr_0x0075730f");                          // 0x007572dc    7531
    asm("mov                eax, dword ptr [esi]");                          // 0x007572de    8b06
    asm("mov.s              ecx, esi");                                      // 0x007572e0    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x007572e2    ff501c
    asm("test               eax, eax");                                      // 0x007572e5    85c0
    asm("{disp8} je         _jmp_addr_0x00757302");                          // 0x007572e7    7419
    asm("mov                edx, dword ptr [esi]");                          // 0x007572e9    8b16
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x007572eb    8d4e14
    asm("push               ecx");                                           // 0x007572ee    51
    asm("push               0x3f000000");                                    // 0x007572ef    680000003f
    asm("push               0x9");                                           // 0x007572f4    6a09
    asm("mov.s              ecx, esi");                                      // 0x007572f6    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007572f8    ff521c
    asm("mov.s              ecx, eax");                                      // 0x007572fb    8bc8
    asm("call               _jmp_addr_0x004c80f0");                          // 0x007572fd    e8ee0dd7ff
    asm("_jmp_addr_0x00757302:");
    asm("pop                edi");                                           // 0x00757302    5f
    asm("pop                esi");                                           // 0x00757303    5e
    asm("pop                ebp");                                           // 0x00757304    5d
    asm("mov                eax, 0x00000001");                               // 0x00757305    b801000000
    asm("pop                ebx");                                           // 0x0075730a    5b
    asm("add                esp, 0x08");                                     // 0x0075730b    83c408
    asm("ret");                                                              // 0x0075730e    c3
    asm("_jmp_addr_0x0075730f:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075730f    8b06
    asm("mov.s              ecx, esi");                                      // 0x00757311    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00757313    ff5048
    asm("mov.s              ebp, eax");                                      // 0x00757316    8be8
    asm("test               ebp, ebp");                                      // 0x00757318    85ed
    asm("{disp32} je        _jmp_addr_0x0075740f");                          // 0x0075731a    0f84ef000000
    asm("mov                edx, dword ptr [esi]");                          // 0x00757320    8b16
    asm("mov.s              ecx, esi");                                      // 0x00757322    8bce
    asm("call               dword ptr [edx + 0x30c]");                       // 0x00757324    ff920c030000
    asm("mov.s              edi, eax");                                      // 0x0075732a    8bf8
    asm("test               edi, edi");                                      // 0x0075732c    85ff
    asm("{disp32} je        _jmp_addr_0x0075740f");                          // 0x0075732e    0f84db000000
    asm("mov                eax, dword ptr [edi]");                          // 0x00757334    8b07
    asm("{disp32} mov       ebx, dword ptr [esi + 0x00000118]");             // 0x00757336    8b9e18010000
    asm("mov.s              ecx, edi");                                      // 0x0075733c    8bcf
    asm("call               dword ptr [eax + 0x1c]");                        // 0x0075733e    ff501c
    asm("mov.s              edx, eax");                                      // 0x00757341    8bd0
    asm("mov                eax, dword ptr [ebx]");                          // 0x00757343    8b03
    asm("mov.s              ecx, ebx");                                      // 0x00757345    8bcb
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                   // 0x00757347    89542410
    asm("call               dword ptr [eax + 0x1c]");                        // 0x0075734b    ff501c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x0075734e    8b4c2410
    asm("cmp.s              eax, ecx");                                      // 0x00757352    3bc1
    asm("{disp32} jne       _jmp_addr_0x0075740f");                          // 0x00757354    0f85b5000000
    asm("mov                edx, dword ptr [edi]");                          // 0x0075735a    8b17
    asm("mov.s              ecx, edi");                                      // 0x0075735c    8bcf
    asm("call               dword ptr [edx + 0xd4]");                        // 0x0075735e    ff92d4000000
    asm("test               eax, eax");                                      // 0x00757364    85c0
    asm("{disp32} je        _jmp_addr_0x0075740f");                          // 0x00757366    0f84a3000000
    asm("mov                eax, dword ptr [esi]");                          // 0x0075736c    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075736e    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00757370    ff501c
    asm("test               eax, eax");                                      // 0x00757373    85c0
    asm("{disp8} je         _jmp_addr_0x00757390");                          // 0x00757375    7419
    asm("mov                edx, dword ptr [esi]");                          // 0x00757377    8b16
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00757379    8d4e14
    asm("push               ecx");                                           // 0x0075737c    51
    asm("push               0x3f000000");                                    // 0x0075737d    680000003f
    asm("push               0x7");                                           // 0x00757382    6a07
    asm("mov.s              ecx, esi");                                      // 0x00757384    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00757386    ff521c
    asm("mov.s              ecx, eax");                                      // 0x00757389    8bc8
    asm("call               _jmp_addr_0x004c80f0");                          // 0x0075738b    e8600dd7ff
    asm("_jmp_addr_0x00757390:");
    asm("mov.s              ecx, esi");                                      // 0x00757390    8bce
    asm("call               ?CheckNeededForWorship@Villager@@QAEMXZ");                          // 0x00757392    e8c9460100
    asm("cmp                eax, 0x01");                                     // 0x00757397    83f801
    asm("{disp8} jne        _jmp_addr_0x007573a4");                          // 0x0075739a    7508
    asm("pop                edi");                                           // 0x0075739c    5f
    asm("pop                esi");                                           // 0x0075739d    5e
    asm("pop                ebp");                                           // 0x0075739e    5d
    asm("pop                ebx");                                           // 0x0075739f    5b
    asm("add                esp, 0x08");                                     // 0x007573a0    83c408
    asm("ret");                                                              // 0x007573a3    c3
    asm("_jmp_addr_0x007573a4:");
    asm("{disp32} mov       eax, dword ptr [ebp + 0x0000061c]");             // 0x007573a4    8b851c060000
    asm("add                eax, dword ptr [ebp + 0x00000618]");             // 0x007573aa    038518060000
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x007573b0    89442410
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x007573b4    c744241400000000
    asm("{disp8} fild       qword ptr [esp + 0x10]");                        // 0x007573bc    df6c2410
    asm("{disp32} fdivr     qword ptr [__real@8@3fff8000000000000000]");   // 0x007573c0    dc3d80b68a00
    asm("{disp32} fadd      dword ptr [ebp + 0x000005c0]");                  // 0x007573c6    d885c0050000
    asm("{disp8} fst        dword ptr [esp + 0x10]");                        // 0x007573cc    d9542410
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x007573d0    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x007573d6    dfe0
    asm("test               ah, 0x41");                                      // 0x007573d8    f6c441
    asm("{disp8} je         _jmp_addr_0x007573fb");                          // 0x007573db    741e
    asm("mov.s              ecx, ebp");                                      // 0x007573dd    8bcd
    asm("call               ?GetTotemStatue@Town@@QAEPAVTotemStatue@@XZ");   // 0x007573df    e8ec6dfeff
    asm("test               eax, eax");                                      // 0x007573e4    85c0
    asm("{disp8} je         _jmp_addr_0x007573fb");                          // 0x007573e6    7413
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x007573e8    8b4c2410
    asm("push               ecx");                                           // 0x007573ec    51
    asm("mov.s              ecx, ebp");                                      // 0x007573ed    8bcd
    asm("call               ?GetTotemStatue@Town@@QAEPAVTotemStatue@@XZ");   // 0x007573ef    e8dc6dfeff
    asm("mov.s              ecx, eax");                                      // 0x007573f4    8bc8
    asm("call               @SetWorshipPercentage__11TotemStatueFf@12");     // 0x007573f6    e8750efeff
    asm("_jmp_addr_0x007573fb:");
    asm("mov.s              ecx, esi");                                      // 0x007573fb    8bce
    asm("call               ?CheckNeededForWorship@Villager@@QAEMXZ");                          // 0x007573fd    e85e460100
    asm("cmp                eax, 0x01");                                     // 0x00757402    83f801
    asm("{disp8} jne        _jmp_addr_0x0075740f");                          // 0x00757405    7508
    asm("pop                edi");                                           // 0x00757407    5f
    asm("pop                esi");                                           // 0x00757408    5e
    asm("pop                ebp");                                           // 0x00757409    5d
    asm("pop                ebx");                                           // 0x0075740a    5b
    asm("add                esp, 0x08");                                     // 0x0075740b    83c408
    asm("ret");                                                              // 0x0075740e    c3
    asm("_jmp_addr_0x0075740f:");
    asm("pop                edi");                                           // 0x0075740f    5f
    asm("pop                esi");                                           // 0x00757410    5e
    asm("pop                ebp");                                           // 0x00757411    5d
    asm("xor.s              eax, eax");                                      // 0x00757412    33c0
    asm("pop                ebx");                                           // 0x00757414    5b
    asm("add                esp, 0x08");                                     // 0x00757415    83c408
    asm("ret");                                                              // 0x00757418    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithAbode__8VillagerFv(struct Villager* this)
{
    asm("push               ebx");                                           // 0x00757420    53
    asm("push               esi");                                           // 0x00757421    56
    asm("push               edi");                                           // 0x00757422    57
    asm("push               0x0");                                           // 0x00757423    6a00
    asm("push               0x009c7f80");                                    // 0x00757425    68807f9c00
    asm("mov.s              esi, ecx");                                      // 0x0075742a    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x0075742c    8b8618010000
    asm("push               0x009c7f50");                                    // 0x00757432    68507f9c00
    asm("push               0x0");                                           // 0x00757437    6a00
    asm("push               eax");                                           // 0x00757439    50
    asm("call               ___RTDynamicCast");                              // 0x0075743a    e8dae50600
    asm("mov.s              edi, eax");                                      // 0x0075743f    8bf8
    asm("add                esp, 0x14");                                     // 0x00757441    83c414
    asm("test               edi, edi");                                      // 0x00757444    85ff
    asm("{disp32} je        _jmp_addr_0x0075757d");                          // 0x00757446    0f8431010000
    asm("mov                eax, dword ptr [edi]");                          // 0x0075744c    8b07
    asm("mov.s              ecx, edi");                                      // 0x0075744e    8bcf
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00757450    ff502c
    asm("test               eax, eax");                                      // 0x00757453    85c0
    asm("{disp32} je        _jmp_addr_0x0075757d");                          // 0x00757455    0f8422010000
    asm("mov                edx, dword ptr [edi]");                          // 0x0075745b    8b17
    asm("mov.s              ecx, edi");                                      // 0x0075745d    8bcf
    asm("call               dword ptr [edx + 0x890]");                       // 0x0075745f    ff9290080000
    asm("test               eax, eax");                                      // 0x00757465    85c0
    asm("{disp8} je         _jmp_addr_0x00757480");                          // 0x00757467    7417
    asm("mov                eax, dword ptr [edi]");                          // 0x00757469    8b07
    asm("mov.s              ecx, edi");                                      // 0x0075746b    8bcf
    asm("call               dword ptr [eax + 0x8d8]");                       // 0x0075746d    ff90d8080000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00757473    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00757479    dfe0
    asm("test               ah, 0x41");                                      // 0x0075747b    f6c441
    asm("{disp8} jne        _jmp_addr_0x007574fb");                          // 0x0075747e    757b
    asm("_jmp_addr_0x00757480:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00757480    8b17
    asm("mov.s              ecx, edi");                                      // 0x00757482    8bcf
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00757484    ff521c
    asm("mov.s              ebx, eax");                                      // 0x00757487    8bd8
    asm("mov                eax, dword ptr [esi]");                          // 0x00757489    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075748b    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x0075748d    ff501c
    asm("cmp.s              ebx, eax");                                      // 0x00757490    3bd8
    asm("{disp8} jne        _jmp_addr_0x007574fb");                          // 0x00757492    7567
    asm("mov                edx, dword ptr [edi]");                          // 0x00757494    8b17
    asm("mov.s              ecx, edi");                                      // 0x00757496    8bcf
    asm("call               dword ptr [edx + 0x48]");                        // 0x00757498    ff5248
    asm("mov.s              ebx, eax");                                      // 0x0075749b    8bd8
    asm("mov                eax, dword ptr [esi]");                          // 0x0075749d    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075749f    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x007574a1    ff5048
    asm("cmp.s              eax, ebx");                                      // 0x007574a4    3bc3
    asm("{disp8} je         _jmp_addr_0x007574be");                          // 0x007574a6    7416
    asm("mov                edx, dword ptr [edi]");                          // 0x007574a8    8b17
    asm("mov.s              ecx, edi");                                      // 0x007574aa    8bcf
    asm("call               dword ptr [edx + 0x1e0]");                       // 0x007574ac    ff92e0010000
    asm("test               eax, eax");                                      // 0x007574b2    85c0
    asm("{disp8} je         _jmp_addr_0x007574fb");                          // 0x007574b4    7445
    asm("push               edi");                                           // 0x007574b6    57
    asm("mov.s              ecx, esi");                                      // 0x007574b7    8bce
    asm("call               ?ForceMoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");  // 0x007574b9    e882edffff
    asm("_jmp_addr_0x007574be:");
    asm("push               edi");                                           // 0x007574be    57
    asm("mov.s              ecx, esi");                                      // 0x007574bf    8bce
    asm("call               ?SetupBuildingObject@Villager@@QAEIPAVMultiMapFixed@@@Z");                          // 0x007574c1    e86a100000
    asm("cmp                eax, 0x01");                                     // 0x007574c6    83f801
    asm("{disp8} jne        _jmp_addr_0x007574ed");                          // 0x007574c9    7522
    asm("mov                edx, dword ptr [esi]");                          // 0x007574cb    8b16
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x007574cd    8d4614
    asm("push               eax");                                           // 0x007574d0    50
    asm("push               0x3f000000");                                    // 0x007574d1    680000003f
    asm("push               0x5");                                           // 0x007574d6    6a05
    asm("mov.s              ecx, esi");                                      // 0x007574d8    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007574da    ff521c
    asm("mov.s              ecx, eax");                                      // 0x007574dd    8bc8
    asm("call               _jmp_addr_0x004c80f0");                          // 0x007574df    e80c0cd7ff
    asm("pop                edi");                                           // 0x007574e4    5f
    asm("pop                esi");                                           // 0x007574e5    5e
    asm("mov                eax, 0x00000001");                               // 0x007574e6    b801000000
    asm("pop                ebx");                                           // 0x007574eb    5b
    asm("ret");                                                              // 0x007574ec    c3
    asm("_jmp_addr_0x007574ed:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007574ed    8b06
    asm("mov.s              ecx, esi");                                      // 0x007574ef    8bce
    asm("call               dword ptr [eax + 0x8c8]");                       // 0x007574f1    ff90c8080000
    asm("pop                edi");                                           // 0x007574f7    5f
    asm("pop                esi");                                           // 0x007574f8    5e
    asm("pop                ebx");                                           // 0x007574f9    5b
    asm("ret");                                                              // 0x007574fa    c3
    asm("_jmp_addr_0x007574fb:");
    asm("push               edi");                                           // 0x007574fb    57
    asm("mov.s              ecx, esi");                                      // 0x007574fc    8bce
    asm("call               ?CheckMoveHouse@Villager@@QAEIPAVObject@@@Z");   // 0x007574fe    e87dfcffff
    asm("cmp                eax, 0x01");                                     // 0x00757503    83f801
    asm("{disp8} jne        _jmp_addr_0x0075750c");                          // 0x00757506    7504
    asm("pop                edi");                                           // 0x00757508    5f
    asm("pop                esi");                                           // 0x00757509    5e
    asm("pop                ebx");                                           // 0x0075750a    5b
    asm("ret");                                                              // 0x0075750b    c3
    asm("_jmp_addr_0x0075750c:");
    asm("mov                edx, dword ptr [edi]");                          // 0x0075750c    8b17
    asm("mov.s              ecx, edi");                                      // 0x0075750e    8bcf
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00757510    ff521c
    asm("mov.s              ebx, eax");                                      // 0x00757513    8bd8
    asm("mov                eax, dword ptr [esi]");                          // 0x00757515    8b06
    asm("mov.s              ecx, esi");                                      // 0x00757517    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00757519    ff501c
    asm("cmp.s              ebx, eax");                                      // 0x0075751c    3bd8
    asm("mov                edx, dword ptr [edi]");                          // 0x0075751e    8b17
    asm("mov.s              ecx, edi");                                      // 0x00757520    8bcf
    asm("{disp8} je         _jmp_addr_0x00757545");                          // 0x00757522    7421
    asm("call               dword ptr [edx + 0x48]");                        // 0x00757524    ff5248
    asm("{disp32} mov       dword ptr [esi + 0x0000011c], eax");             // 0x00757527    89861c010000
    asm("mov                eax, dword ptr [esi]");                          // 0x0075752d    8b06
    asm("push               0x000000a3");                                    // 0x0075752f    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00757534    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00757536    ff90e8080000
    asm("pop                edi");                                           // 0x0075753c    5f
    asm("pop                esi");                                           // 0x0075753d    5e
    asm("mov                eax, 0x00000001");                               // 0x0075753e    b801000000
    asm("pop                ebx");                                           // 0x00757543    5b
    asm("ret");                                                              // 0x00757544    c3
    asm("_jmp_addr_0x00757545:");
    asm("call               dword ptr [edx + 0x310]");                       // 0x00757545    ff9210030000
    asm("test               eax, eax");                                      // 0x0075754b    85c0
    asm("{disp8} je         _jmp_addr_0x00757567");                          // 0x0075754d    7418
    asm("mov                eax, dword ptr [esi]");                          // 0x0075754f    8b06
    asm("push               0x000000a3");                                    // 0x00757551    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00757556    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00757558    ff90e8080000
    asm("pop                edi");                                           // 0x0075755e    5f
    asm("pop                esi");                                           // 0x0075755f    5e
    asm("mov                eax, 0x00000001");                               // 0x00757560    b801000000
    asm("pop                ebx");                                           // 0x00757565    5b
    asm("ret");                                                              // 0x00757566    c3
    asm("_jmp_addr_0x00757567:");
    asm("mov.s              ecx, esi");                                      // 0x00757567    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00757569    e8f2abffff
    asm("cmp.s              edi, eax");                                      // 0x0075756e    3bf8
    asm("{disp8} jne        _jmp_addr_0x0075757d");                          // 0x00757570    750b
    asm("mov.s              ecx, esi");                                      // 0x00757572    8bce
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x00757574    e8f78c0000
    asm("pop                edi");                                           // 0x00757579    5f
    asm("pop                esi");                                           // 0x0075757a    5e
    asm("pop                ebx");                                           // 0x0075757b    5b
    asm("ret");                                                              // 0x0075757c    c3
    asm("_jmp_addr_0x0075757d:");
    asm("pop                edi");                                           // 0x0075757d    5f
    asm("pop                esi");                                           // 0x0075757e    5e
    asm("xor.s              eax, eax");                                      // 0x0075757f    33c0
    asm("pop                ebx");                                           // 0x00757581    5b
    asm("ret");                                                              // 0x00757582    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithField__8VillagerFv(struct Villager* this)
{
    asm("push               ebx");                                           // 0x00757590    53
    asm("push               esi");                                           // 0x00757591    56
    asm("push               edi");                                           // 0x00757592    57
    asm("push               0x0");                                           // 0x00757593    6a00
    asm("push               0x00be9d68");                                    // 0x00757595    68689dbe00
    asm("mov.s              esi, ecx");                                      // 0x0075759a    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x0075759c    8b8618010000
    asm("push               0x009c7f50");                                    // 0x007575a2    68507f9c00
    asm("push               0x0");                                           // 0x007575a7    6a00
    asm("push               eax");                                           // 0x007575a9    50
    asm("call               ___RTDynamicCast");                              // 0x007575aa    e86ae40600
    asm("mov.s              edi, eax");                                      // 0x007575af    8bf8
    asm("mov                eax, dword ptr [edi]");                          // 0x007575b1    8b07
    asm("add                esp, 0x14");                                     // 0x007575b3    83c414
    asm("mov.s              ecx, edi");                                      // 0x007575b6    8bcf
    asm("call               dword ptr [eax + 0x1c]");                        // 0x007575b8    ff501c
    asm("mov                edx, dword ptr [esi]");                          // 0x007575bb    8b16
    asm("mov.s              ecx, esi");                                      // 0x007575bd    8bce
    asm("mov.s              ebx, eax");                                      // 0x007575bf    8bd8
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007575c1    ff521c
    asm("cmp.s              ebx, eax");                                      // 0x007575c4    3bd8
    asm("{disp8} jne        _jmp_addr_0x00757604");                          // 0x007575c6    753c
    asm("push               0x1");                                           // 0x007575c8    6a01
    asm("push               edi");                                           // 0x007575ca    57
    asm("mov.s              ecx, esi");                                      // 0x007575cb    8bce
    asm("call               ?SetFarmerGotoField@Villager@@QAEIPAVField@@H@Z");                          // 0x007575cd    e86e260000
    asm("cmp                eax, 0x01");                                     // 0x007575d2    83f801
    asm("{disp8} jne        _jmp_addr_0x00757604");                          // 0x007575d5    752d
    asm("mov                eax, dword ptr [esi]");                          // 0x007575d7    8b06
    asm("mov.s              ecx, esi");                                      // 0x007575d9    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x007575db    ff501c
    asm("test               eax, eax");                                      // 0x007575de    85c0
    asm("{disp8} je         _jmp_addr_0x007575fb");                          // 0x007575e0    7419
    asm("mov                edx, dword ptr [esi]");                          // 0x007575e2    8b16
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x007575e4    8d4e14
    asm("push               ecx");                                           // 0x007575e7    51
    asm("push               0x3f000000");                                    // 0x007575e8    680000003f
    asm("push               0x0");                                           // 0x007575ed    6a00
    asm("mov.s              ecx, esi");                                      // 0x007575ef    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007575f1    ff521c
    asm("mov.s              ecx, eax");                                      // 0x007575f4    8bc8
    asm("call               _jmp_addr_0x004c80f0");                          // 0x007575f6    e8f50ad7ff
    asm("_jmp_addr_0x007575fb:");
    asm("pop                edi");                                           // 0x007575fb    5f
    asm("pop                esi");                                           // 0x007575fc    5e
    asm("mov                eax, 0x00000001");                               // 0x007575fd    b801000000
    asm("pop                ebx");                                           // 0x00757602    5b
    asm("ret");                                                              // 0x00757603    c3
    asm("_jmp_addr_0x00757604:");
    asm("pop                edi");                                           // 0x00757604    5f
    asm("pop                esi");                                           // 0x00757605    5e
    asm("xor.s              eax, eax");                                      // 0x00757606    33c0
    asm("pop                ebx");                                           // 0x00757608    5b
    asm("ret");                                                              // 0x00757609    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithFishFarm__8VillagerFv(struct Villager* this)
{
    asm("push               ebx");                                           // 0x00757610    53
    asm("push               esi");                                           // 0x00757611    56
    asm("push               edi");                                           // 0x00757612    57
    asm("push               0x0");                                           // 0x00757613    6a00
    asm("push               0x009d97c8");                                    // 0x00757615    68c8979d00
    asm("mov.s              esi, ecx");                                      // 0x0075761a    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x0075761c    8b8618010000
    asm("push               0x009c7f50");                                    // 0x00757622    68507f9c00
    asm("push               0x0");                                           // 0x00757627    6a00
    asm("push               eax");                                           // 0x00757629    50
    asm("call               ___RTDynamicCast");                              // 0x0075762a    e8eae30600
    asm("mov.s              edi, eax");                                      // 0x0075762f    8bf8
    asm("mov                eax, dword ptr [edi]");                          // 0x00757631    8b07
    asm("add                esp, 0x14");                                     // 0x00757633    83c414
    asm("mov.s              ecx, edi");                                      // 0x00757636    8bcf
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00757638    ff501c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075763b    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075763d    8bce
    asm("mov.s              ebx, eax");                                      // 0x0075763f    8bd8
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00757641    ff521c
    asm("cmp.s              ebx, eax");                                      // 0x00757644    3bd8
    asm("{disp8} jne        _jmp_addr_0x00757682");                          // 0x00757646    753a
    asm("push               edi");                                           // 0x00757648    57
    asm("mov.s              ecx, esi");                                      // 0x00757649    8bce
    asm("call               ?VillagerBecomesFisherman@Villager@@QAEIPAVFishFarm@@@Z");                          // 0x0075764b    e8103f0000
    asm("cmp                eax, 0x01");                                     // 0x00757650    83f801
    asm("{disp8} jne        _jmp_addr_0x00757682");                          // 0x00757653    752d
    asm("mov                eax, dword ptr [esi]");                          // 0x00757655    8b06
    asm("mov.s              ecx, esi");                                      // 0x00757657    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00757659    ff501c
    asm("test               eax, eax");                                      // 0x0075765c    85c0
    asm("{disp8} je         _jmp_addr_0x00757679");                          // 0x0075765e    7419
    asm("mov                edx, dword ptr [esi]");                          // 0x00757660    8b16
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00757662    8d4e14
    asm("push               ecx");                                           // 0x00757665    51
    asm("push               0x3f000000");                                    // 0x00757666    680000003f
    asm("push               0x0");                                           // 0x0075766b    6a00
    asm("mov.s              ecx, esi");                                      // 0x0075766d    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x0075766f    ff521c
    asm("mov.s              ecx, eax");                                      // 0x00757672    8bc8
    asm("call               _jmp_addr_0x004c80f0");                          // 0x00757674    e8770ad7ff
    asm("_jmp_addr_0x00757679:");
    asm("pop                edi");                                           // 0x00757679    5f
    asm("pop                esi");                                           // 0x0075767a    5e
    asm("mov                eax, 0x00000001");                               // 0x0075767b    b801000000
    asm("pop                ebx");                                           // 0x00757680    5b
    asm("ret");                                                              // 0x00757681    c3
    asm("_jmp_addr_0x00757682:");
    asm("pop                edi");                                           // 0x00757682    5f
    asm("pop                esi");                                           // 0x00757683    5e
    asm("xor.s              eax, eax");                                      // 0x00757684    33c0
    asm("pop                ebx");                                           // 0x00757686    5b
    asm("ret");                                                              // 0x00757687    c3
    __builtin_unreachable();
}

bool32_t __fastcall CheckInteractWithTree__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                           // 0x00757690    51
    asm("push               esi");                                           // 0x00757691    56
    asm("push               0x0");                                           // 0x00757692    6a00
    asm("push               0x009d96e0");                                    // 0x00757694    68e0969d00
    asm("mov.s              esi, ecx");                                      // 0x00757699    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x0075769b    8b8618010000
    asm("push               0x009c7f50");                                    // 0x007576a1    68507f9c00
    asm("push               0x0");                                           // 0x007576a6    6a00
    asm("push               eax");                                           // 0x007576a8    50
    asm("call               ___RTDynamicCast");                              // 0x007576a9    e86be30600
    asm("add                esp, 0x14");                                     // 0x007576ae    83c414
    asm("test               eax, eax");                                      // 0x007576b1    85c0
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x007576b3    89442404
    asm("{disp8} je         _jmp_addr_0x00757703");                          // 0x007576b7    744a
    asm("{disp8} lea        eax, dword ptr [esp + 0x04]");                   // 0x007576b9    8d442404
    asm("push               eax");                                           // 0x007576bd    50
    asm("mov.s              ecx, esi");                                      // 0x007576be    8bce
    asm("call               ?FindTreeNearVillager@Villager@@QAEIPAPAVTree@@@Z");                          // 0x007576c0    e83b860000
    asm("test               eax, eax");                                      // 0x007576c5    85c0
    asm("{disp8} je         _jmp_addr_0x00757703");                          // 0x007576c7    743a
    asm("mov                edx, dword ptr [esi]");                          // 0x007576c9    8b16
    asm("mov.s              ecx, esi");                                      // 0x007576cb    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007576cd    ff521c
    asm("test               eax, eax");                                      // 0x007576d0    85c0
    asm("{disp8} je         _jmp_addr_0x007576ed");                          // 0x007576d2    7419
    asm("mov                edx, dword ptr [esi]");                          // 0x007576d4    8b16
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x007576d6    8d4614
    asm("push               eax");                                           // 0x007576d9    50
    asm("push               0x3f000000");                                    // 0x007576da    680000003f
    asm("push               0x1");                                           // 0x007576df    6a01
    asm("mov.s              ecx, esi");                                      // 0x007576e1    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007576e3    ff521c
    asm("mov.s              ecx, eax");                                      // 0x007576e6    8bc8
    asm("call               _jmp_addr_0x004c80f0");                          // 0x007576e8    e8030ad7ff
    asm("_jmp_addr_0x007576ed:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007576ed    8b06
    asm("push               0x31");                                          // 0x007576ef    6a31
    asm("mov.s              ecx, esi");                                      // 0x007576f1    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x007576f3    ff90e8080000
    asm("mov.s              ecx, esi");                                      // 0x007576f9    8bce
    asm("call               ?ForesterArrivesAtForest@Villager@@QAEIXZ");                          // 0x007576fb    e830820000
    asm("pop                esi");                                           // 0x00757700    5e
    asm("pop                ecx");                                           // 0x00757701    59
    asm("ret");                                                              // 0x00757702    c3
    asm("_jmp_addr_0x00757703:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00757703    8b16
    asm("push               0x000000a4");                                    // 0x00757705    68a4000000
    asm("mov.s              ecx, esi");                                      // 0x0075770a    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075770c    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x00757712    b801000000
    asm("pop                esi");                                           // 0x00757717    5e
    asm("pop                ecx");                                           // 0x00757718    59
    asm("ret");                                                              // 0x00757719    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithBall__8VillagerFv(struct Villager* this)
{
    return 0;
}

bool32_t __fastcall CheckInteractWithPot__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall CheckInteractWithRock__8VillagerFv(struct Villager* this)
{
    return 1;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithFootBall__8VillagerFv(struct Villager* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithVillager__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00757760    56
    asm("push               edi");                                           // 0x00757761    57
    asm("push               0x0");                                           // 0x00757762    6a00
    asm("push               0x009cafc8");                                    // 0x00757764    68c8af9c00
    asm("mov.s              edi, ecx");                                      // 0x00757769    8bf9
    asm("{disp32} mov       eax, dword ptr [edi + 0x00000118]");             // 0x0075776b    8b8718010000
    asm("push               0x009c7f50");                                    // 0x00757771    68507f9c00
    asm("push               0x0");                                           // 0x00757776    6a00
    asm("push               eax");                                           // 0x00757778    50
    asm("call               ___RTDynamicCast");                              // 0x00757779    e89be20600
    asm("mov.s              esi, eax");                                      // 0x0075777e    8bf0
    asm("add                esp, 0x14");                                     // 0x00757780    83c414
    asm("test               esi, esi");                                      // 0x00757783    85f6
    asm("{disp32} je        _jmp_addr_0x00757816");                          // 0x00757785    0f848b000000
    asm("mov                eax, dword ptr [esi]");                          // 0x0075778b    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075778d    8bce
    asm("call               dword ptr [eax + 0xd4]");                        // 0x0075778f    ff90d4000000
    asm("test               eax, eax");                                      // 0x00757795    85c0
    asm("{disp8} je         _jmp_addr_0x00757816");                          // 0x00757797    747d
    asm("mov                edx, dword ptr [esi]");                          // 0x00757799    8b16
    asm("push               ebx");                                           // 0x0075779b    53
    asm("mov.s              ecx, esi");                                      // 0x0075779c    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x0075779e    ff521c
    asm("mov.s              ebx, eax");                                      // 0x007577a1    8bd8
    asm("mov                eax, dword ptr [edi]");                          // 0x007577a3    8b07
    asm("mov.s              ecx, edi");                                      // 0x007577a5    8bcf
    asm("call               dword ptr [eax + 0x1c]");                        // 0x007577a7    ff501c
    asm("cmp.s              ebx, eax");                                      // 0x007577aa    3bd8
    asm("pop                ebx");                                           // 0x007577ac    5b
    asm("{disp8} jne        _jmp_addr_0x007577fc");                          // 0x007577ad    754d
    asm("mov.s              ecx, edi");                                      // 0x007577af    8bcf
    asm("call               ?IsSexuallyActive@Villager@@QAEIXZ");                          // 0x007577b1    e8da980000
    asm("test               eax, eax");                                      // 0x007577b6    85c0
    asm("{disp8} je         _jmp_addr_0x007577fc");                          // 0x007577b8    7442
    asm("mov.s              ecx, esi");                                      // 0x007577ba    8bce
    asm("call               ?IsSexuallyActive@Villager@@QAEIXZ");                          // 0x007577bc    e8cf980000
    asm("test               eax, eax");                                      // 0x007577c1    85c0
    asm("{disp8} je         _jmp_addr_0x007577fc");                          // 0x007577c3    7437
    asm("{disp8} mov        edx, dword ptr [edi + 0x28]");                   // 0x007577c5    8b5728
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x007577c8    8b4e28
    asm("{disp32} mov       eax, dword ptr [edx + 0x000001f8]");             // 0x007577cb    8b82f8010000
    asm("cmp                eax, dword ptr [ecx + 0x000001f8]");             // 0x007577d1    3b81f8010000
    asm("{disp8} je         _jmp_addr_0x007577fc");                          // 0x007577d7    7423
    asm("push               0x3f0fdf3b");                                    // 0x007577d9    683bdf0f3f
    asm("push               0x7a");                                          // 0x007577de    6a7a
    asm("push               esi");                                           // 0x007577e0    56
    asm("mov.s              ecx, edi");                                      // 0x007577e1    8bcf
    asm("call               ?MakeVillagesMeet@Villager@@QAE_NPAV1@W4VILLAGER_STATES@@M@Z");                          // 0x007577e3    e8a8aeffff
    asm("{disp32} mov       dword ptr [edi + 0x00000118], esi");             // 0x007577e8    89b718010000
    asm("{disp32} mov       dword ptr [esi + 0x00000118], edi");             // 0x007577ee    89be18010000
    asm("pop                edi");                                           // 0x007577f4    5f
    asm("mov                eax, 0x00000001");                               // 0x007577f5    b801000000
    asm("pop                esi");                                           // 0x007577fa    5e
    asm("ret");                                                              // 0x007577fb    c3
    asm("_jmp_addr_0x007577fc:");
    asm("push               0x40400000");                                    // 0x007577fc    6800004040
    asm("push               0x000000a9");                                    // 0x00757801    68a9000000
    asm("push               esi");                                           // 0x00757806    56
    asm("mov.s              ecx, edi");                                      // 0x00757807    8bcf
    asm("call               ?MakeVillagesMeet@Villager@@QAE_NPAV1@W4VILLAGER_STATES@@M@Z");                          // 0x00757809    e882aeffff
    asm("pop                edi");                                           // 0x0075780e    5f
    asm("mov                eax, 0x00000001");                               // 0x0075780f    b801000000
    asm("pop                esi");                                           // 0x00757814    5e
    asm("ret");                                                              // 0x00757815    c3
    asm("_jmp_addr_0x00757816:");
    asm("pop                edi");                                           // 0x00757816    5f
    asm("xor.s              eax, eax");                                      // 0x00757817    33c0
    asm("pop                esi");                                           // 0x00757819    5e
    asm("ret");                                                              // 0x0075781a    c3
    __builtin_unreachable();
}

void __fastcall SetDiscipleFollower__8VillagerF17VILLAGER_DISCIPLE(struct Villager* this, const void* edx, enum VILLAGER_DISCIPLE param_1)
{
    asm("{disp8} mov        al, byte ptr [esp + 0x04]");                     // 0x00757820    8a442404
    asm("mov                edx, dword ptr [ecx]");                          // 0x00757824    8b11
    asm("or                 byte ptr [ecx + 0xe1], 4");                      // 0x00757826    8089e100000004
    asm("push               0x000000a3");                                    // 0x0075782d    68a3000000
    asm("{disp32} mov       byte ptr [ecx + 0x000000f2], al");               // 0x00757832    8881f2000000
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00757838    ff92e8080000
    asm("ret                0x0004");                                        // 0x0075783e    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithMagicLiving__8VillagerFv(struct Villager* this)
{
    return 0;
}
