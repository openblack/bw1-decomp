#include "Villager.h"

const float villager_home_num_days_in_year_0x0099a994 = 365.25f;
const float villager_home_seconds_in_day_0x0099a998 = 86400.0f;

__attribute__((aligned(4))) char s_VillagerHome_cpp[] = "C:\\dev\\MP\\Black\\VillagerHome.cpp";
__attribute__((aligned(4))) uint8_t villager_home_unknown_data_0x00c24488[] = {
    0x8b, 0xc2, 0x6b, 0xff, 0xac, 0x50, 0x10, 0xf4, 0x27, 0x14, 0x87, 0x0b, 0x4d, 0x28, 0x1b, 0xe8,
    0x77, 0x3c, 0x80, 0xdd, 0x9f, 0x50, 0x09, 0xd1, 0x00, 0x00, 0x00, 0x00, 0xc2, 0x64, 0xb6, 0xc6,
    0xeb, 0x78, 0x3f, 0xba, 0x13, 0x9d, 0xb4, 0xaf, 0x3a, 0xa1, 0x2d, 0xa3, 0x5c, 0xb5, 0xaa, 0x98,
    0x00, 0x00, 0x00, 0x00, 0xc5, 0x58, 0x97, 0x8f, 0xae, 0xdd, 0xd8, 0x81, 0xd7, 0xf1, 0x41, 0x75,
    0x10, 0xb2, 0xc6, 0x03, 0x70, 0xc7, 0x77, 0x6a, 0x21, 0x1a, 0x36, 0x5e, 0x4a, 0x2e, 0xbf, 0x53,
    0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xcb, 0xdd, 0xde, 0xc7, 0x99, 0x85, 0x8a, 0x5c,
    0x83, 0x72, 0xd2, 0x15, 0x56, 0xdc, 0x3b, 0xea, 0x30, 0xa7, 0x01, 0x0d, 0x30, 0xa7, 0x01, 0x0d,
    0x58, 0xbb, 0x8e, 0x02, 0x82, 0xcf, 0x37, 0xf6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};

float villager_home_seconds_in_year_0x00db9e18;

void __cdecl globl_ct_0x0075fe40(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x0075fe40    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x0075fe46    b001
    asm("test               al, cl");                                        // 0x0075fe48    84c8
    asm("{disp8} jne        _jmp_addr_0x0075fe54");                          // 0x0075fe4a    7508
    asm("or.s               cl, al");                                        // 0x0075fe4c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x0075fe4e    880d34c9fa00
    asm("_jmp_addr_0x0075fe54:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x0075fe60");   // 0x0075fe54    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x0075fe60(void)
{
    asm("push               0x00407870");                                    // 0x0075fe60    6870784000
    asm("call               _atexit");                                       // 0x0075fe65    e827590600
    asm("pop                ecx");                                           // 0x0075fe6a    59
}

void __cdecl globl_ct_0x0075fe70(void)
{
    asm("{disp32} jmp       _FUN_0075fe80__8VillagerFv");                    // 0x0075fe70    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_0075fe80__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_home_seconds_in_day_0x0099a998]");   // 0x0075fe80    d90598a99900
    asm("{disp32} fmul dword ptr [_villager_home_num_days_in_year_0x0099a994]"); // 0x0075fe86    d80d94a99900
    asm("{disp32} fstp dword ptr [_villager_home_seconds_in_year_0x00db9e18]");  // 0x0075fe8c    d91d189edb00
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall HomeDecideWhatToDo__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075fea0    56
    asm("mov.s              esi, ecx");                                      // 0x0075fea1    8bf1
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x0075fea3    e8b822ffff
    asm("test               eax, eax");                                      // 0x0075fea8    85c0
    asm("{disp8} je         _jmp_addr_0x0075fedc");                          // 0x0075feaa    7430
    asm("mov                eax, dword ptr [esi]");                          // 0x0075feac    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075feae    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075feb0    ff5048
    asm("test               eax, eax");                                      // 0x0075feb3    85c0
    asm("{disp8} je         _jmp_addr_0x0075fedc");                          // 0x0075feb5    7425
    asm("mov                edx, dword ptr [esi]");                          // 0x0075feb7    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075feb9    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0075febb    ff5248
    asm("mov.s              ecx, eax");                                      // 0x0075febe    8bc8
    asm("call               ?IsInStateOfEmergency@Town@@QAE_NXZ");           // 0x0075fec0    e8ab7afeff
    asm("test               eax, eax");                                      // 0x0075fec5    85c0
    asm("{disp8} je         _jmp_addr_0x0075fedc");                          // 0x0075fec7    7413
    asm("mov                eax, dword ptr [esi]");                          // 0x0075fec9    8b06
    asm("push               0x77");                                          // 0x0075fecb    6a77
    asm("mov.s              ecx, esi");                                      // 0x0075fecd    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075fecf    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x0075fed5    b801000000
    asm("pop                esi");                                           // 0x0075feda    5e
    asm("ret");                                                              // 0x0075fedb    c3
    asm("_jmp_addr_0x0075fedc:");
    asm("mov.s              ecx, esi");                                      // 0x0075fedc    8bce
    asm("call               ?CheckNeedsAtHome@Villager@@QAEIXZ");            // 0x0075fede    e82d020000
    asm("cmp                eax, 0x01");                                     // 0x0075fee3    83f801
    asm("{disp8} jne        _jmp_addr_0x0075feea");                          // 0x0075fee6    7502
    asm("pop                esi");                                           // 0x0075fee8    5e
    asm("ret");                                                              // 0x0075fee9    c3
    asm("_jmp_addr_0x0075feea:");
    asm("xor.s              ecx, ecx");                                      // 0x0075feea    33c9
    asm("{disp32} mov       cx, word ptr [esi + 0x000000e0]");               // 0x0075feec    668b8ee0000000
    asm("shr                ecx, 9");                                        // 0x0075fef3    c1e909
    asm("test               cl, 0x01");                                      // 0x0075fef6    f6c101
    asm("{disp8} je         _jmp_addr_0x0075ff59");                          // 0x0075fef9    745e
    asm("xor.s              ecx, ecx");                                      // 0x0075fefb    33c9
    asm("{disp32} mov       cl, byte ptr [esi + 0x000000f2]");               // 0x0075fefd    8a8ef2000000
    asm("mov.s              eax, ecx");                                      // 0x0075ff03    8bc1
    asm("and                eax, 0x000000ff");                               // 0x0075ff05    25ff000000
    asm("{disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]");       // 0x0075ff0a    8d14c500000000
    asm("sub.s              edx, eax");                                      // 0x0075ff11    2bd0
    asm("cmp                dword ptr [edx * 0x4 + 0x0099a204], 0x01");      // 0x0075ff13    833c9504a2990001
    asm("{disp8} jne        _jmp_addr_0x0075ff59");                          // 0x0075ff1b    753c
    asm("cmp                cl, 0x05");                                      // 0x0075ff1d    80f905
    asm("{disp8} jne        _jmp_addr_0x0075ff4d");                          // 0x0075ff20    752b
    asm("mov                eax, dword ptr [esi]");                          // 0x0075ff22    8b06
    asm("push               0x0");                                           // 0x0075ff24    6a00
    asm("mov.s              ecx, esi");                                      // 0x0075ff26    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075ff28    ff5048
    asm("mov.s              ecx, eax");                                      // 0x0075ff2b    8bc8
    asm("add                ecx, 0x34");                                     // 0x0075ff2d    83c134
    asm("call               _jmp_addr_0x007465d0");                          // 0x0075ff30    e89b66feff
    asm("cmp                dword ptr [eax + 0x08], 0x10");                  // 0x0075ff35    83780810
    asm("{disp8} jne        _jmp_addr_0x0075ff4d");                          // 0x0075ff39    7512
    asm("mov.s              ecx, esi");                                      // 0x0075ff3b    8bce
    asm("call               ?CheckSatisfySleep@Villager@@QAEIXZ");           // 0x0075ff3d    e84e150000
    asm("test               eax, eax");                                      // 0x0075ff42    85c0
    asm("{disp8} je         _jmp_addr_0x0075ff4d");                          // 0x0075ff44    7407
    asm("mov                eax, 0x00000001");                               // 0x0075ff46    b801000000
    asm("pop                esi");                                           // 0x0075ff4b    5e
    asm("ret");                                                              // 0x0075ff4c    c3
    asm("_jmp_addr_0x0075ff4d:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075ff4d    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075ff4f    8bce
    asm("call               dword ptr [edx + 0x8c8]");                       // 0x0075ff51    ff92c8080000
    asm("pop                esi");                                           // 0x0075ff57    5e
    asm("ret");                                                              // 0x0075ff58    c3
    asm("_jmp_addr_0x0075ff59:");
    asm("mov.s              ecx, esi");                                      // 0x0075ff59    8bce
    asm("call               ?CheckNeededForSomething@Villager@@QAE_NXZ");    // 0x0075ff5b    e820000000
    asm("cmp                eax, 0x01");                                     // 0x0075ff60    83f801
    asm("{disp8} jne        _jmp_addr_0x0075ff67");                          // 0x0075ff63    7502
    asm("pop                esi");                                           // 0x0075ff65    5e
    asm("ret");                                                              // 0x0075ff66    c3
    asm("_jmp_addr_0x0075ff67:");
    asm("mov.s              ecx, esi");                                      // 0x0075ff67    8bce
    asm("call               ?HomeNothingToDo@Villager@@QAEIXZ");             // 0x0075ff69    e842000000
    asm("xor.s              eax, eax");                                      // 0x0075ff6e    33c0
    asm("pop                esi");                                           // 0x0075ff70    5e
    asm("ret");                                                              // 0x0075ff71    c3
    __builtin_unreachable();
}

bool32_t __fastcall CheckNeededForSomething__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075ff80    56
    asm("mov.s              esi, ecx");                                      // 0x0075ff81    8bf1
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x0075ff83    e8d821ffff
    asm("test               eax, eax");                                      // 0x0075ff88    85c0
    asm("{disp8} jne        _jmp_addr_0x0075ff9e");                          // 0x0075ff8a    7512
    asm("mov.s              ecx, esi");                                      // 0x0075ff8c    8bce
    asm("call               ?CheckHomelessMoveIntoAbode@Villager@@QAEIXZ");  // 0x0075ff8e    e8cd130000
    asm("test               eax, eax");                                      // 0x0075ff93    85c0
    asm("{disp8} je         _jmp_addr_0x0075ff9e");                          // 0x0075ff95    7407
    asm("mov                eax, 0x00000001");                               // 0x0075ff97    b801000000
    asm("pop                esi");                                           // 0x0075ff9c    5e
    asm("ret");                                                              // 0x0075ff9d    c3
    asm("_jmp_addr_0x0075ff9e:");
    asm("mov.s              ecx, esi");                                      // 0x0075ff9e    8bce
    asm("call               ?CheckNeededForSpecial@Villager@@QAEIXZ");       // 0x0075ffa0    e86b000000
    asm("dec                eax");                                           // 0x0075ffa5    48
    asm("neg                eax");                                           // 0x0075ffa6    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075ffa8    1bc0
    asm("inc                eax");                                           // 0x0075ffaa    40
    asm("pop                esi");                                           // 0x0075ffab    5e
    asm("ret");                                                              // 0x0075ffac    c3
    __builtin_unreachable();
}

bool32_t __fastcall HomeNothingToDo__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075ffb0    56
    asm("mov.s              esi, ecx");                                      // 0x0075ffb1    8bf1
    asm("test               byte ptr [esi + 0x000000e0], 0x04");             // 0x0075ffb3    f686e000000004
    asm("{disp8} je         _jmp_addr_0x0075ffe8");                          // 0x0075ffba    742c
    asm("push               0x4b");                                          // 0x0075ffbc    6a4b
    asm("push               0x00c24464");                                    // 0x0075ffbe    686444c200
    asm("push               0x4");                                           // 0x0075ffc3    6a04
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x0075ffc5    e846e5f7ff
    asm("add                esp, 0x0c");                                     // 0x0075ffca    83c40c
    asm("test               eax, eax");                                      // 0x0075ffcd    85c0
    asm("{disp8} jne        _jmp_addr_0x0075ffe8");                          // 0x0075ffcf    7517
    asm("{disp8} mov        word ptr [esi + 0x58], ax");                     // 0x0075ffd1    66894658
    asm("mov                eax, dword ptr [esi]");                          // 0x0075ffd5    8b06
    asm("push               0x77");                                          // 0x0075ffd7    6a77
    asm("mov.s              ecx, esi");                                      // 0x0075ffd9    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075ffdb    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x0075ffe1    b801000000
    asm("pop                esi");                                           // 0x0075ffe6    5e
    asm("ret");                                                              // 0x0075ffe7    c3
    asm("_jmp_addr_0x0075ffe8:");
    asm("mov.s              ecx, esi");                                      // 0x0075ffe8    8bce
    asm("call               ?SetupNothingToDo@Villager@@QAEIXZ");            // 0x0075ffea    e8613bffff
    asm("mov                eax, 0x00000001");                               // 0x0075ffef    b801000000
    asm("pop                esi");                                           // 0x0075fff4    5e
    asm("ret");                                                              // 0x0075fff5    c3
    __builtin_unreachable();
}

bool32_t __fastcall NothingToDo__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall CheckNeededForSpecial__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00760010    56
    asm("mov.s              esi, ecx");                                      // 0x00760011    8bf1
    asm("call               ?CheckNeededForWorship@Villager@@QAEMXZ");       // 0x00760013    e848ba0000
    asm("cmp                eax, 0x01");                                     // 0x00760018    83f801
    asm("{disp8} jne        _jmp_addr_0x0076001f");                          // 0x0076001b    7502
    asm("pop                esi");                                           // 0x0076001d    5e
    asm("ret");                                                              // 0x0076001e    c3
    asm("_jmp_addr_0x0076001f:");
    asm("mov.s              ecx, esi");                                      // 0x0076001f    8bce
    asm("call               ?CheckNeededForCivic@Villager@@QAEMXZ");         // 0x00760021    e85a81ffff
    asm("cmp                eax, 0x01");                                     // 0x00760026    83f801
    asm("{disp8} jne        _jmp_addr_0x0076002d");                          // 0x00760029    7502
    asm("pop                esi");                                           // 0x0076002b    5e
    asm("ret");                                                              // 0x0076002c    c3
    asm("_jmp_addr_0x0076002d:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x0076002d    8b4628
    asm("{disp32} mov       eax, dword ptr [eax + 0x0000038c]");             // 0x00760030    8b808c030000
    asm("push               eax");                                           // 0x00760036    50
    asm("mov.s              ecx, esi");                                      // 0x00760037    8bce
    asm("call               ?CheckSatisfyOwnDesire@Villager@@QAEIM@Z");      // 0x00760039    e812000000
    asm("dec                eax");                                           // 0x0076003e    48
    asm("neg                eax");                                           // 0x0076003f    f7d8
    asm("sbb.s              eax, eax");                                      // 0x00760041    1bc0
    asm("inc                eax");                                           // 0x00760043    40
    asm("pop                esi");                                           // 0x00760044    5e
    asm("ret");                                                              // 0x00760045    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfyOwnDesire__8VillagerFf(struct Villager* this, const void* edx, float param_1)
{
    asm("push               ecx");                                           // 0x00760050    51
    asm("push               esi");                                           // 0x00760051    56
    asm("mov.s              esi, ecx");                                      // 0x00760052    8bf1
    asm("call               ?GetDesireForFood@Villager@@QAEMXZ");            // 0x00760054    e8f7baffff
    asm("{disp8} fsub       dword ptr [esp + 0x0c]");                        // 0x00760059    d864240c
    asm("mov.s              ecx, esi");                                      // 0x0076005d    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x04]");                        // 0x0076005f    d95c2404
    asm("call               ?GetDesireForLife@Villager@@QAEXXZ");            // 0x00760063    e838bbffff
    asm("{disp8} fsub       dword ptr [esp + 0x0c]");                        // 0x00760068    d864240c
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x0076006c    d95c240c
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x00760070    d9442404
    asm("{disp8} fcomp      dword ptr [esp + 0x0c]");                        // 0x00760074    d85c240c
    asm("fnstsw             ax");                                            // 0x00760078    dfe0
    asm("test               ah, 0x41");                                      // 0x0076007a    f6c441
    asm("{disp8} jne        _jmp_addr_0x007600c2");                          // 0x0076007d    7543
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x0076007f    d9442404
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00760083    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00760089    dfe0
    asm("test               ah, 0x41");                                      // 0x0076008b    f6c441
    asm("{disp8} jne        _jmp_addr_0x007600c2");                          // 0x0076008e    7532
    asm("mov.s              ecx, esi");                                      // 0x00760090    8bce
    asm("call               ?CheckSatisfyOwnFoodDesire@Villager@@QAEIXZ");   // 0x00760092    e869beffff
    asm("test               eax, eax");                                      // 0x00760097    85c0
    asm("{disp8} je         _jmp_addr_0x007600a5");                          // 0x00760099    740a
    asm("mov                eax, 0x00000001");                               // 0x0076009b    b801000000
    asm("pop                esi");                                           // 0x007600a0    5e
    asm("pop                ecx");                                           // 0x007600a1    59
    asm("ret                0x0004");                                        // 0x007600a2    c20400
    asm("_jmp_addr_0x007600a5:");
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x007600a5    d944240c
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x007600a9    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x007600af    dfe0
    asm("test               ah, 0x41");                                      // 0x007600b1    f6c441
    asm("{disp8} jne        _jmp_addr_0x00760105");                          // 0x007600b4    754f
    asm("mov.s              ecx, esi");                                      // 0x007600b6    8bce
    asm("call               ?CheckSatisfySleep@Villager@@QAEIXZ");           // 0x007600b8    e8d3130000
    asm("pop                esi");                                           // 0x007600bd    5e
    asm("pop                ecx");                                           // 0x007600be    59
    asm("ret                0x0004");                                        // 0x007600bf    c20400
    asm("_jmp_addr_0x007600c2:");
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x007600c2    d944240c
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x007600c6    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x007600cc    dfe0
    asm("test               ah, 0x41");                                      // 0x007600ce    f6c441
    asm("{disp8} jne        _jmp_addr_0x00760105");                          // 0x007600d1    7532
    asm("mov.s              ecx, esi");                                      // 0x007600d3    8bce
    asm("call               ?CheckSatisfySleep@Villager@@QAEIXZ");           // 0x007600d5    e8b6130000
    asm("test               eax, eax");                                      // 0x007600da    85c0
    asm("{disp8} je         _jmp_addr_0x007600e8");                          // 0x007600dc    740a
    asm("mov                eax, 0x00000001");                               // 0x007600de    b801000000
    asm("pop                esi");                                           // 0x007600e3    5e
    asm("pop                ecx");                                           // 0x007600e4    59
    asm("ret                0x0004");                                        // 0x007600e5    c20400
    asm("_jmp_addr_0x007600e8:");
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x007600e8    d9442404
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x007600ec    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x007600f2    dfe0
    asm("test               ah, 0x41");                                      // 0x007600f4    f6c441
    asm("{disp8} jne        _jmp_addr_0x00760105");                          // 0x007600f7    750c
    asm("mov.s              ecx, esi");                                      // 0x007600f9    8bce
    asm("call               ?CheckSatisfyOwnFoodDesire@Villager@@QAEIXZ");   // 0x007600fb    e800beffff
    asm("pop                esi");                                           // 0x00760100    5e
    asm("pop                ecx");                                           // 0x00760101    59
    asm("ret                0x0004");                                        // 0x00760102    c20400
    asm("_jmp_addr_0x00760105:");
    asm("xor.s              eax, eax");                                      // 0x00760105    33c0
    asm("pop                esi");                                           // 0x00760107    5e
    asm("pop                ecx");                                           // 0x00760108    59
    asm("ret                0x0004");                                        // 0x00760109    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckNeedsAtHome__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                           // 0x00760110    51
    asm("push               esi");                                           // 0x00760111    56
    asm("mov.s              esi, ecx");                                      // 0x00760112    8bf1
    asm("call               ?IsWoman@Villager@@QAE_NXZ");                    // 0x00760114    e80725ffff
    asm("test               eax, eax");                                      // 0x00760119    85c0
    asm("{disp8} je         _jmp_addr_0x0076013f");                          // 0x0076011b    7422
    asm("mov.s              ecx, esi");                                      // 0x0076011d    8bce
    asm("call               ?WomanSpecial@Villager@@QAEIXZ");                // 0x0076011f    e81c21ffff
    asm("cmp                eax, 0x01");                                     // 0x00760124    83f801
    asm("{disp8} jne        _jmp_addr_0x0076012c");                          // 0x00760127    7503
    asm("pop                esi");                                           // 0x00760129    5e
    asm("pop                ecx");                                           // 0x0076012a    59
    asm("ret");                                                              // 0x0076012b    c3
    asm("_jmp_addr_0x0076012c:");
    asm("mov.s              ecx, esi");                                      // 0x0076012c    8bce
    asm("call               ?IsPregnant@Villager@@QAE_NXZ");                 // 0x0076012e    e8dd20ffff
    asm("test               eax, eax");                                      // 0x00760133    85c0
    asm("{disp8} je         _jmp_addr_0x0076013f");                          // 0x00760135    7408
    asm("mov                eax, 0x00000001");                               // 0x00760137    b801000000
    asm("pop                esi");                                           // 0x0076013c    5e
    asm("pop                ecx");                                           // 0x0076013d    59
    asm("ret");                                                              // 0x0076013e    c3
    asm("_jmp_addr_0x0076013f:");
    asm("xor.s              eax, eax");                                      // 0x0076013f    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");               // 0x00760141    668b86e0000000
    asm("push               edi");                                           // 0x00760148    57
    asm("shr                eax, 9");                                        // 0x00760149    c1e809
    asm("test               al, 0x01");                                      // 0x0076014c    a801
    asm("{disp8} je         _jmp_addr_0x007601b5");                          // 0x0076014e    7465
    asm("xor.s              eax, eax");                                      // 0x00760150    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x000000f2]");               // 0x00760152    8a86f2000000
    asm("{disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]");       // 0x00760158    8d0cc500000000
    asm("sub.s              ecx, eax");                                      // 0x0076015f    2bc8
    asm("cmp                dword ptr [ecx * 0x4 + 0x0099a204], 0x01");      // 0x00760161    833c8d04a2990001
    asm("{disp8} jne        _jmp_addr_0x007601b5");                          // 0x00760169    754a
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x0076016b    8b7e28
    asm("{disp32} mov       edx, dword ptr [edi + 0x0000035c]");             // 0x0076016e    8b975c030000
    asm("push               edx");                                           // 0x00760174    52
    asm("mov.s              ecx, esi");                                      // 0x00760175    8bce
    asm("call               ?GetLifeDesireFromLife@Villager@@QAEMM@Z");      // 0x00760177    e844baffff
    asm("{disp32} mov       eax, dword ptr [edi + 0x000002c4]");             // 0x0076017c    8b87c4020000
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x00760182    d95c2408
    asm("push               eax");                                           // 0x00760186    50
    asm("mov.s              ecx, esi");                                      // 0x00760187    8bce
    asm("call               _POWER_f___FfUl");                               // 0x00760189    e8d2b9ffff
    asm("{disp8} fcomp      dword ptr [esp + 0x08]");                        // 0x0076018e    d85c2408
    asm("fnstsw             ax");                                            // 0x00760192    dfe0
    asm("test               ah, 0x01");                                      // 0x00760194    f6c401
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00760197    8b4628
    asm("{disp8} je         _jmp_addr_0x007601ac");                          // 0x0076019a    7410
    asm("{disp32} mov       ecx, dword ptr [eax + 0x0000035c]");             // 0x0076019c    8b885c030000
    asm("push               ecx");                                           // 0x007601a2    51
    asm("mov.s              ecx, esi");                                      // 0x007601a3    8bce
    asm("call               ?GetLifeDesireFromLife@Villager@@QAEMM@Z");      // 0x007601a5    e816baffff
    asm("{disp8} jmp        _jmp_addr_0x00760204");                          // 0x007601aa    eb58
    asm("_jmp_addr_0x007601ac:");
    asm("{disp32} mov       edx, dword ptr [eax + 0x000002c4]");             // 0x007601ac    8b90c4020000
    asm("push               edx");                                           // 0x007601b2    52
    asm("{disp8} jmp        _jmp_addr_0x007601fd");                          // 0x007601b3    eb48
    asm("_jmp_addr_0x007601b5:");
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x007601b5    8b7e28
    asm("{disp32} mov       eax, dword ptr [edi + 0x00000360]");             // 0x007601b8    8b8760030000
    asm("push               eax");                                           // 0x007601be    50
    asm("mov.s              ecx, esi");                                      // 0x007601bf    8bce
    asm("call               ?GetLifeDesireFromLife@Villager@@QAEMM@Z");      // 0x007601c1    e8fab9ffff
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000002c0]");             // 0x007601c6    8b8fc0020000
    asm("push               ecx");                                           // 0x007601cc    51
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x007601cd    d95c240c
    asm("mov.s              ecx, esi");                                      // 0x007601d1    8bce
    asm("call               _POWER_f___FfUl");                               // 0x007601d3    e888b9ffff
    asm("{disp8} fcomp      dword ptr [esp + 0x08]");                        // 0x007601d8    d85c2408
    asm("fnstsw             ax");                                            // 0x007601dc    dfe0
    asm("test               ah, 0x01");                                      // 0x007601de    f6c401
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x007601e1    8b4628
    asm("{disp8} je         _jmp_addr_0x007601f6");                          // 0x007601e4    7410
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000360]");             // 0x007601e6    8b9060030000
    asm("push               edx");                                           // 0x007601ec    52
    asm("mov.s              ecx, esi");                                      // 0x007601ed    8bce
    asm("call               ?GetLifeDesireFromLife@Villager@@QAEMM@Z");      // 0x007601ef    e8ccb9ffff
    asm("{disp8} jmp        _jmp_addr_0x00760204");                          // 0x007601f4    eb0e
    asm("_jmp_addr_0x007601f6:");
    asm("{disp32} mov       eax, dword ptr [eax + 0x000002c0]");             // 0x007601f6    8b80c0020000
    asm("push               eax");                                           // 0x007601fc    50
    asm("_jmp_addr_0x007601fd:");
    asm("mov.s              ecx, esi");                                      // 0x007601fd    8bce
    asm("call               _POWER_f___FfUl");                               // 0x007601ff    e85cb9ffff
    asm("_jmp_addr_0x00760204:");
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x1c844]");             // 0x00760204    d80d44588c00
    asm("push               ecx");                                           // 0x0076020a    51
    asm("mov.s              ecx, esi");                                      // 0x0076020b    8bce
    asm("fstp               dword ptr [esp]");                               // 0x0076020d    d91c24
    asm("call               ?CheckSatisfyOwnDesire@Villager@@QAEIM@Z");      // 0x00760210    e83bfeffff
    asm("cmp                eax, 0x01");                                     // 0x00760215    83f801
    asm("pop                edi");                                           // 0x00760218    5f
    asm("{disp8} jne        _jmp_addr_0x0076021e");                          // 0x00760219    7503
    asm("pop                esi");                                           // 0x0076021b    5e
    asm("pop                ecx");                                           // 0x0076021c    59
    asm("ret");                                                              // 0x0076021d    c3
    asm("_jmp_addr_0x0076021e:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0076021e    8b16
    asm("mov.s              ecx, esi");                                      // 0x00760220    8bce
    asm("call               dword ptr [edx + 0xaf8]");                       // 0x00760222    ff92f80a0000
    asm("test               eax, eax");                                      // 0x00760228    85c0
    asm("{disp8} je         _jmp_addr_0x0076023b");                          // 0x0076022a    740f
    asm("mov.s              ecx, esi");                                      // 0x0076022c    8bce
    asm("call               ?CheckChildActivity@Villager@@QAEIXZ");          // 0x0076022e    e8cd7cffff
    asm("cmp                eax, 0x01");                                     // 0x00760233    83f801
    asm("{disp8} jne        _jmp_addr_0x0076023b");                          // 0x00760236    7503
    asm("pop                esi");                                           // 0x00760238    5e
    asm("pop                ecx");                                           // 0x00760239    59
    asm("ret");                                                              // 0x0076023a    c3
    asm("_jmp_addr_0x0076023b:");
    asm("xor.s              eax, eax");                                      // 0x0076023b    33c0
    asm("pop                esi");                                           // 0x0076023d    5e
    asm("pop                ecx");                                           // 0x0076023e    59
    asm("ret");                                                              // 0x0076023f    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckIllAtHome__8VillagerFv(struct Villager* this)
{
    return 0;
}

bool32_t __fastcall GoHomeDropResource__8VillagerFv(struct Villager* this)
{
    asm("cmp                word ptr [ecx + 0x000000f4], 0x00");             // 0x00760250    6683b9f400000000
    asm("{disp8} jne        _jmp_addr_0x00760264");                          // 0x00760258    750a
    asm("cmp                word ptr [ecx + 0x000000f6], 0x00");             // 0x0076025a    6683b9f600000000
    asm("{disp8} je         _jmp_addr_0x00760269");                          // 0x00760262    7405
    asm("_jmp_addr_0x00760264:");
    asm("{disp32} jmp       ?GotoStoragePitForDropOff@Villager@@QAEIXZ");    // 0x00760264    e9b7930000
    asm("_jmp_addr_0x00760269:");
    asm("{disp32} jmp       ?GoHome@Villager@@QAE_NXZ");                     // 0x00760269    e902000000
    __builtin_unreachable();
}

bool32_t __fastcall GoHome__8VillagerFv(struct Villager* this)
{
    asm("push               0x000000ee");                                    // 0x00760270    68ee000000
    asm("push               0x25");                                          // 0x00760275    6a25
    asm("call               ?DoGoingHome@Villager@@QAE_NW4VILLAGER_STATES@@0@Z"); // 0x00760277    e804000000
    asm("ret");                                                              // 0x0076027c    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall DoGoingHome__8VillagerF15VILLAGER_STATES15VILLAGER_STATES(struct Villager* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2)
{
    asm("sub                esp, 0x24");                                     // 0x00760280    83ec24
    asm("push               esi");                                           // 0x00760283    56
    asm("mov.s              esi, ecx");                                      // 0x00760284    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00760286    8b06
    asm("push               edi");                                           // 0x00760288    57
    asm("call               dword ptr [eax + 0x978]");                       // 0x00760289    ff9078090000
    asm("test               eax, eax");                                      // 0x0076028f    85c0
    asm("{disp8} je         _jmp_addr_0x007602ab");                          // 0x00760291    7418
    asm("mov                edx, dword ptr [esi]");                          // 0x00760293    8b16
    asm("xor.s              eax, eax");                                      // 0x00760295    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x000000e0]");               // 0x00760297    8a86e0000000
    asm("mov.s              ecx, esi");                                      // 0x0076029d    8bce
    asm("shr                eax, 1");                                        // 0x0076029f    d1e8
    asm("and                eax, 0x01");                                     // 0x007602a1    83e001
    asm("push               eax");                                           // 0x007602a4    50
    asm("call               dword ptr [edx + 0xb08]");                       // 0x007602a5    ff92080b0000
    asm("_jmp_addr_0x007602ab:");
    asm("mov.s              ecx, esi");                                      // 0x007602ab    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x007602ad    e8ae1effff
    asm("mov.s              edi, eax");                                      // 0x007602b2    8bf8
    asm("test               edi, edi");                                      // 0x007602b4    85ff
    asm("{disp8} je         _jmp_addr_0x00760310");                          // 0x007602b6    7458
    asm("test               byte ptr [esi + 0x000000e0], 0x04");             // 0x007602b8    f686e000000004
    asm("{disp8} je         _jmp_addr_0x007602ca");                          // 0x007602bf    7409
    asm("mov                edx, dword ptr [esi]");                          // 0x007602c1    8b16
    asm("push               0x26");                                          // 0x007602c3    6a26
    asm("{disp32} jmp       _jmp_addr_0x007604d4");                          // 0x007602c5    e90a020000
    asm("_jmp_addr_0x007602ca:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007602ca    8b06
    asm("mov.s              ecx, esi");                                      // 0x007602cc    8bce
    asm("call               dword ptr [eax + 0xb04]");                       // 0x007602ce    ff90040b0000
    asm("xor.s              ecx, ecx");                                      // 0x007602d4    33c9
    asm("mov.s              cl, al");                                        // 0x007602d6    8ac8
    asm("{disp8} mov        eax, dword ptr [esp + 0x30]");                   // 0x007602d8    8b442430
    asm("and                ecx, 0x000000ff");                               // 0x007602dc    81e1ff000000
    asm("cmp.s              ecx, eax");                                      // 0x007602e2    3bc8
    asm("{disp32} je        _jmp_addr_0x007604dc");                          // 0x007602e4    0f84f2010000
    asm("mov                edx, dword ptr [edi]");                          // 0x007602ea    8b17
    asm("push               eax");                                           // 0x007602ec    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x007602ed    8d44240c
    asm("push               eax");                                           // 0x007602f1    50
    asm("mov.s              ecx, edi");                                      // 0x007602f2    8bcf
    asm("call               dword ptr [edx + 0x104]");                       // 0x007602f4    ff9204010000
    asm("push               eax");                                           // 0x007602fa    50
    asm("push               edi");                                           // 0x007602fb    57
    asm("mov.s              ecx, esi");                                      // 0x007602fc    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x007602fe    e81ddae8ff
    asm("pop                edi");                                           // 0x00760303    5f
    asm("mov                eax, 0x00000001");                               // 0x00760304    b801000000
    asm("pop                esi");                                           // 0x00760309    5e
    asm("add                esp, 0x24");                                     // 0x0076030a    83c424
    asm("ret                0x0008");                                        // 0x0076030d    c20800
    asm("_jmp_addr_0x00760310:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00760310    8b16
    asm("mov.s              ecx, esi");                                      // 0x00760312    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00760314    ff5248
    asm("mov.s              edi, eax");                                      // 0x00760317    8bf8
    asm("test               edi, edi");                                      // 0x00760319    85ff
    asm("{disp32} je        _jmp_addr_0x007604cd");                          // 0x0076031b    0f84ac010000
    asm("push               ebx");                                           // 0x00760321    53
    asm("push               ebp");                                           // 0x00760322    55
    asm("{disp8} lea        ebp, dword ptr [esi + 0x14]");                   // 0x00760323    8d6e14
    asm("mov.s              eax, ebp");                                      // 0x00760326    8bc5
    asm("mov                ecx, dword ptr [eax]");                          // 0x00760328    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x0076032a    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x0076032d    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x00760330    894c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x00760334    89542414
    asm("mov                edx, dword ptr [esi]");                          // 0x00760338    8b16
    asm("mov.s              ecx, esi");                                      // 0x0076033a    8bce
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0076033c    89442418
    asm("call               dword ptr [edx + 0x48]");                        // 0x00760340    ff5248
    asm("add                eax, 0x14");                                     // 0x00760343    83c014
    asm("push               eax");                                           // 0x00760346    50
    asm("push               ebp");                                           // 0x00760347    55
    asm("call               _jmp_addr_0x0074cd50");                          // 0x00760348    e803cafeff
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x241c]");              // 0x0076034d    d81d1cb48a00
    asm("add                esp, 0x08");                                     // 0x00760353    83c408
    asm("fnstsw             ax");                                            // 0x00760356    dfe0
    asm("test               ah, 0x41");                                      // 0x00760358    f6c441
    asm("{disp32} jne       _jmp_addr_0x007603f1");                          // 0x0076035b    0f8590000000
    asm("push               0x00000127");                                    // 0x00760361    6827010000
    asm("push               0x00c24464");                                    // 0x00760366    686444c200
    asm("xor.s              ebx, ebx");                                      // 0x0076036b    33db
    asm("{disp32} mov       bl, byte ptr [esi + 0x0000008c]");               // 0x0076036d    8a9e8c000000
    asm("push               0x3fc90fdb");                                    // 0x00760373    68db0fc93f
    asm("add                edi, 0x14");                                     // 0x00760378    83c714
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0076037b    e8b0e1f7ff
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x1dc9c]");             // 0x00760380    d8259c6c8c00
    asm("push               ebp");                                           // 0x00760386    55
    asm("push               edi");                                           // 0x00760387    57
    asm("{disp8} fstp       dword ptr [esp + 0x4c]");                        // 0x00760388    d95c244c
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0076038c    e8dfcefeff
    asm("{disp8} fadd       dword ptr [esp + 0x4c]");                        // 0x00760391    d844244c
    asm("push               0x00000128");                                    // 0x00760395    6828010000
    asm("push               0x00c24464");                                    // 0x0076039a    686444c200
    asm("push               0x41c80000");                                    // 0x0076039f    680000c841
    asm("{disp8} fstp       dword ptr [esp + 0x58]");                        // 0x007603a4    d95c2458
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x007603a8    e883e1f7ff
    asm("{disp8} mov        eax, dword ptr [esp + 0x58]");                   // 0x007603ad    8b442458
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x2414]");              // 0x007603b1    d80514b48a00
    asm("add                esp, 0x1c");                                     // 0x007603b7    83c41c
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                   // 0x007603ba    8d4c2420
    asm("fstp               dword ptr [esp]");                               // 0x007603be    d91c24
    asm("push               eax");                                           // 0x007603c1    50
    asm("push               ecx");                                           // 0x007603c2    51
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x007603c3    e8b8d1feff
    asm("add                esp, 0x0c");                                     // 0x007603c8    83c40c
    asm("push               eax");                                           // 0x007603cb    50
    asm("{disp8} lea        edx, dword ptr [esp + 0x2c]");                   // 0x007603cc    8d54242c
    asm("push               edx");                                           // 0x007603d0    52
    asm("mov.s              ecx, edi");                                      // 0x007603d1    8bcf
    asm("call               @__pl__9MapCoordsCFRC9MapCoords@16");            // 0x007603d3    e84851eaff
    asm("mov                ecx, dword ptr [eax]");                          // 0x007603d8    8b08
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x007603da    894c2410
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x007603de    8b5004
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x007603e1    89542414
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x007603e5    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x007603e8    89442418
    asm("{disp32} jmp       _jmp_addr_0x007604b1");                          // 0x007603ec    e9c0000000
    asm("_jmp_addr_0x007603f1:");
    asm("push               0x0000012c");                                    // 0x007603f1    682c010000
    asm("push               0x00c24464");                                    // 0x007603f6    686444c200
    asm("push               0x41000000");                                    // 0x007603fb    6800000041
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00760400    e82be1f7ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x2478]");              // 0x00760405    d80578b48a00
    asm("add                esp, 0x08");                                     // 0x0076040b    83c408
    asm("fstp               dword ptr [esp]");                               // 0x0076040e    d91c24
    asm("push               0x0000012c");                                    // 0x00760411    682c010000
    asm("push               0x00c24464");                                    // 0x00760416    686444c200
    asm("push               0x40c90fdb");                                    // 0x0076041b    68db0fc940
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00760420    e80be1f7ff
    asm("add                esp, 0x08");                                     // 0x00760425    83c408
    asm("{disp8} lea        ecx, dword ptr [esp + 0x30]");                   // 0x00760428    8d4c2430
    asm("fstp               dword ptr [esp]");                               // 0x0076042c    d91c24
    asm("push               ecx");                                           // 0x0076042f    51
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x00760430    e84bd1feff
    asm("add                esp, 0x0c");                                     // 0x00760435    83c40c
    asm("push               eax");                                           // 0x00760438    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00760439    8d4c2414
    asm("call               @__apl__9MapCoordsFRC9MapCoords@12");            // 0x0076043d    e8ce4feaff
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x00760442    8d542410
    asm("push               edx");                                           // 0x00760446    52
    asm("mov.s              ecx, esi");                                      // 0x00760447    8bce
    asm("call               ?GetTentPos@Villager@@QAEPAVTown@@AAUMapCoords@@@Z"); // 0x00760449    e8a2000000
    asm("test               eax, eax");                                      // 0x0076044e    85c0
    asm("{disp8} jne        _jmp_addr_0x007604ad");                          // 0x00760450    755b
    asm("push               0x00000130");                                    // 0x00760452    6830010000
    asm("push               0x00c24464");                                    // 0x00760457    686444c200
    asm("xor.s              ebx, ebx");                                      // 0x0076045c    33db
    asm("{disp32} mov       bl, byte ptr [esi + 0x0000008c]");               // 0x0076045e    8a9e8c000000
    asm("push               0x41a00000");                                    // 0x00760464    680000a041
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00760469    e8c2e0f7ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x2414]");              // 0x0076046e    d80514b48a00
    asm("add                esp, 0x08");                                     // 0x00760474    83c408
    asm("fstp               dword ptr [esp]");                               // 0x00760477    d91c24
    asm("push               0x00000130");                                    // 0x0076047a    6830010000
    asm("push               0x00c24464");                                    // 0x0076047f    686444c200
    asm("push               0x40c90fdb");                                    // 0x00760484    68db0fc940
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00760489    e8a2e0f7ff
    asm("add                esp, 0x08");                                     // 0x0076048e    83c408
    asm("{disp8} lea        eax, dword ptr [esp + 0x30]");                   // 0x00760491    8d442430
    asm("fstp               dword ptr [esp]");                               // 0x00760495    d91c24
    asm("push               eax");                                           // 0x00760498    50
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x00760499    e8e2d0feff
    asm("add                esp, 0x0c");                                     // 0x0076049e    83c40c
    asm("push               eax");                                           // 0x007604a1    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x007604a2    8d4c2414
    asm("call               @__apl__9MapCoordsFRC9MapCoords@12");            // 0x007604a6    e8654feaff
    asm("{disp8} jmp        _jmp_addr_0x007604b1");                          // 0x007604ab    eb04
    asm("_jmp_addr_0x007604ad:");
    asm("{disp8} mov        ebx, dword ptr [esp + 0x3c]");                   // 0x007604ad    8b5c243c
    asm("_jmp_addr_0x007604b1:");
    asm("push               ebx");                                           // 0x007604b1    53
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x007604b2    8d4c2414
    asm("push               ecx");                                           // 0x007604b6    51
    asm("mov.s              ecx, esi");                                      // 0x007604b7    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x007604b9    e8d223e9ff
    asm("pop                ebp");                                           // 0x007604be    5d
    asm("pop                ebx");                                           // 0x007604bf    5b
    asm("pop                edi");                                           // 0x007604c0    5f
    asm("mov                eax, 0x00000001");                               // 0x007604c1    b801000000
    asm("pop                esi");                                           // 0x007604c6    5e
    asm("add                esp, 0x24");                                     // 0x007604c7    83c424
    asm("ret                0x0008");                                        // 0x007604ca    c20800
    asm("_jmp_addr_0x007604cd:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007604cd    8b16
    asm("push               0x00000082");                                    // 0x007604cf    6882000000
    asm("_jmp_addr_0x007604d4:");
    asm("mov.s              ecx, esi");                                      // 0x007604d4    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x007604d6    ff92e8080000
    asm("_jmp_addr_0x007604dc:");
    asm("pop                edi");                                           // 0x007604dc    5f
    asm("mov                eax, 0x00000001");                               // 0x007604dd    b801000000
    asm("pop                esi");                                           // 0x007604e2    5e
    asm("add                esp, 0x24");                                     // 0x007604e3    83c424
    asm("ret                0x0008");                                        // 0x007604e6    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct Town* __fastcall GetTentPos__8VillagerFR9MapCoords(struct Villager* this, const void* edx, struct MapCoords* coords)
{
    asm("sub                esp, 0x30");                                     // 0x007604f0    83ec30
    asm("push               ebx");                                           // 0x007604f3    53
    asm("push               ebp");                                           // 0x007604f4    55
    asm("push               esi");                                           // 0x007604f5    56
    asm("push               edi");                                           // 0x007604f6    57
    asm("mov.s              esi, ecx");                                      // 0x007604f7    8bf1
    asm("{disp8} mov        eax, dword ptr [esi + 0x14]");                   // 0x007604f9    8b4614
    asm("{disp8} fld        dword ptr [esi + 0x1c]");                        // 0x007604fc    d9461c
    asm("{disp8} mov        ecx, dword ptr [esi + 0x18]");                   // 0x007604ff    8b4e18
    asm("xor.s              ebx, ebx");                                      // 0x00760502    33db
    asm("push               ebx");                                           // 0x00760504    53
    asm("push               0x42480000");                                    // 0x00760505    6800004842
    asm("sub                esp, 0x10");                                     // 0x0076050a    83ec10
    asm("{disp8} mov        dword ptr [esp + 0x34], eax");                   // 0x0076050d    89442434
    asm("{disp8} mov        dword ptr [esp + 0x38], ecx");                   // 0x00760511    894c2438
    asm("mov                eax, 0x00761bc0");                               // 0x00760515    b8c01b7600
    asm("mov.s              ebp, esp");                                      // 0x0076051a    8bec
    asm("{disp8} mov        dword ptr [ebp + 0x00], eax");                   // 0x0076051c    894500
    asm("xor.s              ecx, ecx");                                      // 0x0076051f    33c9
    asm("{disp8} mov        dword ptr [ebp + 0x04], ecx");                   // 0x00760521    894d04
    asm("xor.s              edx, edx");                                      // 0x00760524    33d2
    asm("{disp8} mov        dword ptr [ebp + 0x08], edx");                   // 0x00760526    895508
    asm("xor.s              edi, edi");                                      // 0x00760529    33ff
    asm("{disp8} fstp       dword ptr [esp + 0x3c]");                        // 0x0076052b    d95c243c
    asm("{disp8} lea        ecx, dword ptr [esp + 0x34]");                   // 0x0076052f    8d4c2434
    asm("{disp8} mov        dword ptr [ebp + 0x0c], edi");                   // 0x00760533    897d0c
    asm("call               _jmp_addr_0x00604af0");                          // 0x00760536    e8b545eaff
    asm("cmp.s              eax, ebx");                                      // 0x0076053b    3bc3
    asm("{disp8} je         _jmp_addr_0x0076056d");                          // 0x0076053d    742e
    asm("{disp8} lea        edx, dword ptr [esp + 0x1c]");                   // 0x0076053f    8d54241c
    asm("push               edx");                                           // 0x00760543    52
    asm("push               esi");                                           // 0x00760544    56
    asm("mov.s              ecx, eax");                                      // 0x00760545    8bc8
    asm("call               _jmp_addr_0x0074c650");                          // 0x00760547    e804c1feff
    asm("test               eax, eax");                                      // 0x0076054c    85c0
    asm("{disp8} je         _jmp_addr_0x0076056d");                          // 0x0076054e    741d
    asm("{disp8} mov        ecx, dword ptr [esp + 0x44]");                   // 0x00760550    8b4c2444
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                   // 0x00760554    8d44241c
    asm("push               eax");                                           // 0x00760558    50
    asm("call               _jmp_addr_0x00603320");                          // 0x00760559    e8c22deaff
    asm("mov                eax, 0x00000001");                               // 0x0076055e    b801000000
    asm("pop                edi");                                           // 0x00760563    5f
    asm("pop                esi");                                           // 0x00760564    5e
    asm("pop                ebp");                                           // 0x00760565    5d
    asm("pop                ebx");                                           // 0x00760566    5b
    asm("add                esp, 0x30");                                     // 0x00760567    83c430
    asm("ret                0x0004");                                        // 0x0076056a    c20400
    asm("_jmp_addr_0x0076056d:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x44]");                   // 0x0076056d    8b4c2444
    asm("push               ecx");                                           // 0x00760571    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                   // 0x00760572    8d4c2420
    asm("call               _jmp_addr_0x00603320");                          // 0x00760576    e8a52deaff
    asm("{disp8} mov        byte ptr [esp + 0x13], bl");                     // 0x0076057b    885c2413
    asm("mov                ebp, 0x00000001");                               // 0x0076057f    bd01000000
    asm("_jmp_addr_0x00760584:");
    asm("push               0x19");                                          // 0x00760584    6a19
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                   // 0x00760586    8d4c2420
    asm("call               _jmp_addr_0x006033b0");                          // 0x0076058a    e8212eeaff
    asm("test               eax, eax");                                      // 0x0076058f    85c0
    asm("{disp32} jne       _jmp_addr_0x00760654");                          // 0x00760591    0f85bd000000
    asm("mov.s              esi, ebp");                                      // 0x00760597    8bf5
    asm("{disp8} mov        dword ptr [esp + 0x18], ebp");                   // 0x00760599    896c2418
    asm("{disp8} mov        dword ptr [esp + 0x14], ebp");                   // 0x0076059d    896c2414
    asm("mov                edi, 0x00000009");                               // 0x007605a1    bf09000000
    asm("_jmp_addr_0x007605a6:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x28]");                   // 0x007605a6    8d542428
    asm("push               edx");                                           // 0x007605aa    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                   // 0x007605ab    8d4c2420
    asm("call               @GetFirstIterator__9MapCoordsCFv@12");           // 0x007605af    e81c2feaff
    asm("{disp8} mov        eax, dword ptr [esp + 0x28]");                   // 0x007605b4    8b442428
    asm("cmp.s              eax, ebx");                                      // 0x007605b8    3bc3
    asm("{disp8} je         _jmp_addr_0x0076062d");                          // 0x007605ba    7471
    asm("_jmp_addr_0x007605bc:");
    asm("mov                edx, dword ptr [eax]");                          // 0x007605bc    8b10
    asm("push               ebx");                                           // 0x007605be    53
    asm("mov.s              ecx, eax");                                      // 0x007605bf    8bc8
    asm("call               dword ptr [edx + 0x2c8]");                       // 0x007605c1    ff92c8020000
    asm("test               eax, eax");                                      // 0x007605c7    85c0
    asm("{disp8} je         _jmp_addr_0x007605f8");                          // 0x007605c9    742d
    asm("{disp8} mov        eax, dword ptr [esp + 0x28]");                   // 0x007605cb    8b442428
    asm("add                eax, 0x14");                                     // 0x007605cf    83c014
    asm("push               eax");                                           // 0x007605d2    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                   // 0x007605d3    8d4c2420
    asm("call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2");                          // 0x007605d7    e8f456eaff
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x26e4]");              // 0x007605dc    d81de4b68a00
    asm("fnstsw             ax");                                            // 0x007605e2    dfe0
    asm("test               ah, 0x01");                                      // 0x007605e4    f6c401
    asm("{disp8} je         _jmp_addr_0x007605f8");                          // 0x007605e7    740f
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");                   // 0x007605e9    8b4c2428
    asm("cmp                byte ptr [ecx + 0x0000008c], -0x12");            // 0x007605ed    80b98c000000ee
    asm("{disp8} je         _jmp_addr_0x0076062b");                          // 0x007605f4    7435
    asm("{disp8} jmp        _jmp_addr_0x007605fc");                          // 0x007605f6    eb04
    asm("_jmp_addr_0x007605f8:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");                   // 0x007605f8    8b4c2428
    asm("_jmp_addr_0x007605fc:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x30]");                   // 0x007605fc    8b442430
    asm("mov                edx, dword ptr [ecx]");                          // 0x00760600    8b11
    asm("push               eax");                                           // 0x00760602    50
    asm("call               dword ptr [edx + 0x53c]");                       // 0x00760603    ff923c050000
    asm("cmp.s              eax, ebx");                                      // 0x00760609    3bc3
    asm("{disp8} mov        dword ptr [esp + 0x28], eax");                   // 0x0076060b    89442428
    asm("{disp8} jne        _jmp_addr_0x007605bc");                          // 0x0076060f    75ab
    asm("cmp                dword ptr [esp + 0x2c], ebx");                   // 0x00760611    395c242c
    asm("{disp8} je         _jmp_addr_0x0076062d");                          // 0x00760615    7416
    asm("{disp8} mov        ecx, dword ptr [esp + 0x30]");                   // 0x00760617    8b4c2430
    asm("mov                eax, dword ptr [ecx]");                          // 0x0076061b    8b01
    asm("cmp.s              eax, ebx");                                      // 0x0076061d    3bc3
    asm("{disp8} mov        dword ptr [esp + 0x28], eax");                   // 0x0076061f    89442428
    asm("{disp8} mov        dword ptr [esp + 0x2c], ebx");                   // 0x00760623    895c242c
    asm("{disp8} jne        _jmp_addr_0x007605bc");                          // 0x00760627    7593
    asm("{disp8} jmp        _jmp_addr_0x0076062d");                          // 0x00760629    eb02
    asm("_jmp_addr_0x0076062b:");
    asm("xor.s              esi, esi");                                      // 0x0076062b    33f6
    asm("_jmp_addr_0x0076062d:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x14]");                   // 0x0076062d    8d542414
    asm("push               edx");                                           // 0x00760631    52
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                   // 0x00760632    8d44241c
    asm("push               eax");                                           // 0x00760636    50
    asm("call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z");        // 0x00760637    e8a4d1feff
    asm("add                esp, 0x08");                                     // 0x0076063c    83c408
    asm("push               eax");                                           // 0x0076063f    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                   // 0x00760640    8d4c2420
    asm("call               @__apl__9MapCoordsFRC9JustMapXZ@12");            // 0x00760644    e8274eeaff
    asm("dec                edi");                                           // 0x00760649    4f
    asm("{disp32} jne       _jmp_addr_0x007605a6");                          // 0x0076064a    0f8556ffffff
    asm("cmp.s              esi, ebx");                                      // 0x00760650    3bf3
    asm("{disp8} jne        _jmp_addr_0x007606c3");                          // 0x00760652    756f
    asm("_jmp_addr_0x00760654:");
    asm("push               0x0000016d");                                    // 0x00760654    686d010000
    asm("push               0x00c24464");                                    // 0x00760659    686444c200
    asm("push               0x40a00000");                                    // 0x0076065e    680000a040
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00760663    e8c8def7ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x19c50]");             // 0x00760668    d805502c8c00
    asm("add                esp, 0x08");                                     // 0x0076066e    83c408
    asm("fstp               dword ptr [esp]");                               // 0x00760671    d91c24
    asm("push               0x0000016d");                                    // 0x00760674    686d010000
    asm("push               0x00c24464");                                    // 0x00760679    686444c200
    asm("push               0x40c90fdb");                                    // 0x0076067e    68db0fc940
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00760683    e8a8def7ff
    asm("add                esp, 0x08");                                     // 0x00760688    83c408
    asm("{disp8} lea        ecx, dword ptr [esp + 0x3c]");                   // 0x0076068b    8d4c243c
    asm("fstp               dword ptr [esp]");                               // 0x0076068f    d91c24
    asm("push               ecx");                                           // 0x00760692    51
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x00760693    e8e8cefeff
    asm("add                esp, 0x0c");                                     // 0x00760698    83c40c
    asm("push               eax");                                           // 0x0076069b    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                   // 0x0076069c    8d4c2420
    asm("call               @__apl__9MapCoordsFRC9MapCoords@12");            // 0x007606a0    e86b4deaff
    asm("{disp8} mov        al, byte ptr [esp + 0x13]");                     // 0x007606a5    8a442413
    asm("inc                al");                                            // 0x007606a9    fec0
    asm("cmp                al, 0x03");                                      // 0x007606ab    3c03
    asm("{disp8} mov        byte ptr [esp + 0x13], al");                     // 0x007606ad    88442413
    asm("{disp32} jb        _jmp_addr_0x00760584");                          // 0x007606b1    0f82cdfeffff
    asm("xor.s              eax, eax");                                      // 0x007606b7    33c0
    asm("pop                edi");                                           // 0x007606b9    5f
    asm("pop                esi");                                           // 0x007606ba    5e
    asm("pop                ebp");                                           // 0x007606bb    5d
    asm("pop                ebx");                                           // 0x007606bc    5b
    asm("add                esp, 0x30");                                     // 0x007606bd    83c430
    asm("ret                0x0004");                                        // 0x007606c0    c20400
    asm("_jmp_addr_0x007606c3:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x44]");                   // 0x007606c3    8b4c2444
    asm("{disp8} lea        edx, dword ptr [esp + 0x1c]");                   // 0x007606c7    8d54241c
    asm("push               edx");                                           // 0x007606cb    52
    asm("call               _jmp_addr_0x00603320");                          // 0x007606cc    e84f2ceaff
    asm("pop                edi");                                           // 0x007606d1    5f
    asm("pop                esi");                                           // 0x007606d2    5e
    asm("mov.s              eax, ebp");                                      // 0x007606d3    8bc5
    asm("pop                ebp");                                           // 0x007606d5    5d
    asm("pop                ebx");                                           // 0x007606d6    5b
    asm("add                esp, 0x30");                                     // 0x007606d7    83c430
    asm("ret                0x0004");                                        // 0x007606da    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall Landed__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x007606e0    83ec0c
    asm("push               ebx");                                           // 0x007606e3    53
    asm("push               ebp");                                           // 0x007606e4    55
    asm("push               esi");                                           // 0x007606e5    56
    asm("mov.s              esi, ecx");                                      // 0x007606e6    8bf1
    asm("xor.s              eax, eax");                                      // 0x007606e8    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");               // 0x007606ea    668b86e0000000
    asm("test               al, 0x20");                                      // 0x007606f1    a820
    asm("push               edi");                                           // 0x007606f3    57
    asm("{disp32} je        _jmp_addr_0x00760901");                          // 0x007606f4    0f8407020000
    asm("shr                eax, 9");                                        // 0x007606fa    c1e809
    asm("test               al, 0x01");                                      // 0x007606fd    a801
    asm("{disp32} je        _jmp_addr_0x00760901");                          // 0x007606ff    0f84fc010000
    asm("xor.s              eax, eax");                                      // 0x00760705    33c0
    asm("cmp                word ptr [esi + 0x00000090], 0x01");             // 0x00760707    6683be9000000001
    asm("{disp32} mov       al, byte ptr [esi + 0x000000f2]");               // 0x0076070f    8a86f2000000
    asm("mov.s              ebp, eax");                                      // 0x00760715    8be8
    asm("{disp8} jne        _jmp_addr_0x0076075b");                          // 0x00760717    7542
    asm("call               _jmp_addr_0x0063a710");                          // 0x00760719    e8f29fedff
    asm("mov.s              ebx, eax");                                      // 0x0076071e    8bd8
    asm("test               ebx, ebx");                                      // 0x00760720    85db
    asm("{disp8} je         _jmp_addr_0x0076072f");                          // 0x00760722    740b
    asm("mov                edx, dword ptr [ebx]");                          // 0x00760724    8b13
    asm("mov.s              ecx, ebx");                                      // 0x00760726    8bcb
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00760728    ff521c
    asm("mov.s              edi, eax");                                      // 0x0076072b    8bf8
    asm("{disp8} jmp        _jmp_addr_0x00760731");                          // 0x0076072d    eb02
    asm("_jmp_addr_0x0076072f:");
    asm("xor.s              edi, edi");                                      // 0x0076072f    33ff
    asm("_jmp_addr_0x00760731:");
    asm("test               edi, edi");                                      // 0x00760731    85ff
    asm("{disp8} lea        eax, dword ptr [ebp + 0x15]");                   // 0x00760733    8d4515
    asm("{disp8} je         _jmp_addr_0x0076075b");                          // 0x00760736    7423
    asm("cmp                eax, 0x2e");                                     // 0x00760738    83f82e
    asm("{disp8} jge        _jmp_addr_0x00760749");                          // 0x0076073b    7d0c
    asm("push               0x0");                                           // 0x0076073d    6a00
    asm("push               esi");                                           // 0x0076073f    56
    asm("push               eax");                                           // 0x00760740    50
    asm("push               ebx");                                           // 0x00760741    53
    asm("mov.s              ecx, edi");                                      // 0x00760742    8bcf
    asm("call               _jmp_addr_0x004ea900");                          // 0x00760744    e8b7a1d8ff
    asm("_jmp_addr_0x00760749:");
    asm("cmp                dword ptr [esi + 0x0000010c], ebp");             // 0x00760749    39ae0c010000
    asm("{disp8} je         _jmp_addr_0x0076075b");                          // 0x0076074f    740a
    asm("{disp8} mov        ecx, dword ptr [edi + 0x60]");                   // 0x00760751    8b4f60
    asm("push               esi");                                           // 0x00760754    56
    asm("push               edi");                                           // 0x00760755    57
    asm("call               _jmp_addr_0x00414600");                          // 0x00760756    e8a53ecbff
    asm("_jmp_addr_0x0076075b:");
    asm("push               0x1");                                           // 0x0076075b    6a01
    asm("mov.s              ecx, esi");                                      // 0x0076075d    8bce
    asm("call               @IsReadyForNewAnimation__6LivingFUl@12");        // 0x0076075f    e8fcc1e8ff
    asm("test               eax, eax");                                      // 0x00760764    85c0
    asm("{disp32} je        _jmp_addr_0x0076091a");                          // 0x00760766    0f84ae010000
    asm("push               0x20");                                          // 0x0076076c    6a20
    asm("push               esi");                                           // 0x0076076e    56
    asm("call               _jmp_addr_0x006e4780");                          // 0x0076076f    e80c40f8ff
    asm(".byte              0x66, 0x81, 0xa6, 0xe0, 0x0, 0x0, 0x0, 0xdf, 0xff");// and word ptr [esi + 0x000000e0], -0x0021 // 0x00760774    6681a6e0000000dfff
    asm("xor.s              edi, edi");                                      // 0x0076077d    33ff
    asm("add                esp, 0x08");                                     // 0x0076077f    83c408
    asm("cmp.s              ebp, edi");                                      // 0x00760782    3bef
    asm("{disp32} je        _jmp_addr_0x00760901");                          // 0x00760784    0f8477010000
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x0076078a    8d4614
    asm("push               eax");                                           // 0x0076078d    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x0076078e    8d4c2418
    asm("push               ecx");                                           // 0x00760792    51
    asm("mov.s              ecx, esi");                                      // 0x00760793    8bce
    asm("{disp8} mov        dword ptr [esp + 0x1c], edi");                   // 0x00760795    897c241c
    asm("{disp8} mov        dword ptr [esp + 0x20], edi");                   // 0x00760799    897c2420
    asm("call               @FindCloseObjectsForInteract__8VillagerFP35LHOrderedLinkedList_12SortedObject_RC9MapCoords@16");                          // 0x0076079d    e8de66ffff
    asm("test               eax, eax");                                      // 0x007607a2    85c0
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x007607a4    8b4c2414
    asm("{disp32} je        _jmp_addr_0x007608b7");                          // 0x007607a8    0f8409010000
    asm("cmp.s              ecx, edi");                                      // 0x007607ae    3bcf
    asm("{disp32} je        _jmp_addr_0x00760901");                          // 0x007607b0    0f844b010000
    asm("mov                edx, dword ptr [ecx]");                          // 0x007607b6    8b11
    asm("mov                eax, dword ptr [esi]");                          // 0x007607b8    8b06
    asm("mov.s              ecx, esi");                                      // 0x007607ba    8bce
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                   // 0x007607bc    89542410
    asm("call               dword ptr [eax + 0x48]");                        // 0x007607c0    ff5048
    asm("mov.s              ebx, eax");                                      // 0x007607c3    8bd8
    asm("cmp.s              ebx, edi");                                      // 0x007607c5    3bdf
    asm("{disp8} je         _jmp_addr_0x007607e4");                          // 0x007607c7    741b
    asm("cmp                dword ptr [esi + 0x0000010c], ebp");             // 0x007607c9    39ae0c010000
    asm("{disp8} je         _jmp_addr_0x007607e4");                          // 0x007607cf    7413
    asm("mov                edx, dword ptr [ebx]");                          // 0x007607d1    8b13
    asm("mov.s              ecx, ebx");                                      // 0x007607d3    8bcb
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007607d5    ff521c
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000a44]");             // 0x007607d8    8b88440a0000
    asm("push               ebp");                                           // 0x007607de    55
    asm("call               _jmp_addr_0x0056a450");                          // 0x007607df    e86c9ce0ff
    asm("_jmp_addr_0x007607e4:");
    asm("{disp32} lea       edi, dword ptr [ebp * 0x8 + 0x00000000]");       // 0x007607e4    8d3ced00000000
    asm("sub.s              edi, ebp");                                      // 0x007607eb    2bfd
    asm("shl                edi, 2");                                        // 0x007607ed    c1e702
    asm("{disp32} mov       eax, dword ptr [edi + 0x0099a210]");             // 0x007607f0    8b8710a29900
    asm("test               eax, eax");                                      // 0x007607f6    85c0
    asm("{disp8} je         _jmp_addr_0x00760829");                          // 0x007607f8    742f
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x007607fa    8b4c2410
    asm("mov                eax, dword ptr [ecx]");                          // 0x007607fe    8b01
    asm("call               dword ptr [eax + 0x48]");                        // 0x00760800    ff5048
    asm("mov.s              ebp, eax");                                      // 0x00760803    8be8
    asm("test               ebp, ebp");                                      // 0x00760805    85ed
    asm("{disp8} je         _jmp_addr_0x00760829");                          // 0x00760807    7420
    asm("cmp.s              ebp, ebx");                                      // 0x00760809    3beb
    asm("{disp8} je         _jmp_addr_0x00760829");                          // 0x0076080b    741c
    asm("push               ebp");                                           // 0x0076080d    55
    asm("mov.s              ecx, esi");                                      // 0x0076080e    8bce
    asm("call               ?CheckMoveIntoTown@Villager@@QAEIAAVTown@@@Z");  // 0x00760810    e8fb69ffff
    asm("test               eax, eax");                                      // 0x00760815    85c0
    asm("{disp8} je         _jmp_addr_0x00760829");                          // 0x00760817    7410
    asm("{disp32} mov       ecx, dword ptr [ebp + 0x000005b8]");             // 0x00760819    8b8db8050000
    asm("push               0x1");                                           // 0x0076081f    6a01
    asm("push               ecx");                                           // 0x00760821    51
    asm("mov.s              ecx, esi");                                      // 0x00760822    8bce
    asm("call               ?ChangeTribeIfRequired@Villager@@QAEIW4TRIBE_TYPE@@H@Z");                          // 0x00760824    e897100000
    asm("_jmp_addr_0x00760829:");
    asm("{disp32} mov       eax, dword ptr [edi + _DiscipleInfos]");         // 0x00760829    8b87f8a19900
    asm("test               eax, eax");                                      // 0x0076082f    85c0
    asm("{disp8} jne        _jmp_addr_0x00760841");                          // 0x00760831    750e
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                   // 0x00760833    8b542410
    asm("push               edx");                                           // 0x00760837    52
    asm("mov.s              ecx, esi");                                      // 0x00760838    8bce
    asm("call               ?SetupInspectObject@Villager@@QAEIPAVObject@@@Z");                          // 0x0076083a    e871a20000
    asm("{disp8} jmp        _jmp_addr_0x00760854");                          // 0x0076083f    eb13
    asm("_jmp_addr_0x00760841:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00760841    8b06
    asm("xor.s              ecx, ecx");                                      // 0x00760843    33c9
    asm("{disp32} mov       cl, byte ptr [edi + _DiscipleInfos]");           // 0x00760845    8a8ff8a19900
    asm("push               ecx");                                           // 0x0076084b    51
    asm("mov.s              ecx, esi");                                      // 0x0076084c    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0076084e    ff90e8080000
    asm("_jmp_addr_0x00760854:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x00760854    8b4c2414
    asm("test               ecx, ecx");                                      // 0x00760858    85c9
    asm("{disp32} je        _jmp_addr_0x0076091a");                          // 0x0076085a    0f84ba000000
    asm("_jmp_addr_0x00760860:");
    asm("mov                esi, dword ptr [ecx]");                          // 0x00760860    8b31
    asm("xor.s              edx, edx");                                      // 0x00760862    33d2
    asm("test               ecx, ecx");                                      // 0x00760864    85c9
    asm("mov.s              eax, ecx");                                      // 0x00760866    8bc1
    asm("{disp32} je        _jmp_addr_0x0076091a");                          // 0x00760868    0f84ac000000
    asm("_jmp_addr_0x0076086e:");
    asm("cmp                dword ptr [eax], esi");                          // 0x0076086e    3930
    asm("{disp8} je         _jmp_addr_0x0076087d");                          // 0x00760870    740b
    asm("mov.s              edx, eax");                                      // 0x00760872    8bd0
    asm("{disp8} mov        eax, dword ptr [eax + 0x04]");                   // 0x00760874    8b4004
    asm("test               eax, eax");                                      // 0x00760877    85c0
    asm("{disp8} jne        _jmp_addr_0x0076086e");                          // 0x00760879    75f3
    asm("{disp8} jmp        _jmp_addr_0x007608a6");                          // 0x0076087b    eb29
    asm("_jmp_addr_0x0076087d:");
    asm("test               edx, edx");                                      // 0x0076087d    85d2
    asm("{disp8} jne        _jmp_addr_0x0076088a");                          // 0x0076087f    7509
    asm("{disp8} mov        edx, dword ptr [ecx + 0x04]");                   // 0x00760881    8b5104
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x00760884    89542414
    asm("{disp8} jmp        _jmp_addr_0x00760890");                          // 0x00760888    eb06
    asm("_jmp_addr_0x0076088a:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x0076088a    8b4804
    asm("{disp8} mov        dword ptr [edx + 0x04], ecx");                   // 0x0076088d    894a04
    asm("_jmp_addr_0x00760890:");
    asm("push               eax");                                           // 0x00760890    50
    asm("call               ??3@YAXPAX@Z");                                  // 0x00760891    e802e60400
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                   // 0x00760896    8b44241c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x0076089a    8b4c2418
    asm("add                esp, 0x04");                                     // 0x0076089e    83c404
    asm("dec                eax");                                           // 0x007608a1    48
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x007608a2    89442418
    asm("_jmp_addr_0x007608a6:");
    asm("test               ecx, ecx");                                      // 0x007608a6    85c9
    asm("{disp8} jne        _jmp_addr_0x00760860");                          // 0x007608a8    75b6
    asm("pop                edi");                                           // 0x007608aa    5f
    asm("pop                esi");                                           // 0x007608ab    5e
    asm("pop                ebp");                                           // 0x007608ac    5d
    asm("mov                eax, 0x00000001");                               // 0x007608ad    b801000000
    asm("pop                ebx");                                           // 0x007608b2    5b
    asm("add                esp, 0x0c");                                     // 0x007608b3    83c40c
    asm("ret");                                                              // 0x007608b6    c3
    asm("_jmp_addr_0x007608b7:");
    asm("cmp.s              ecx, edi");                                      // 0x007608b7    3bcf
    asm("{disp8} je         _jmp_addr_0x00760901");                          // 0x007608b9    7446
    asm("_jmp_addr_0x007608bb:");
    asm("mov                edi, dword ptr [ecx]");                          // 0x007608bb    8b39
    asm("xor.s              edx, edx");                                      // 0x007608bd    33d2
    asm("test               ecx, ecx");                                      // 0x007608bf    85c9
    asm("mov.s              eax, ecx");                                      // 0x007608c1    8bc1
    asm("{disp8} je         _jmp_addr_0x00760901");                          // 0x007608c3    743c
    asm("_jmp_addr_0x007608c5:");
    asm("cmp                dword ptr [eax], edi");                          // 0x007608c5    3938
    asm("{disp8} je         _jmp_addr_0x007608d4");                          // 0x007608c7    740b
    asm("mov.s              edx, eax");                                      // 0x007608c9    8bd0
    asm("{disp8} mov        eax, dword ptr [eax + 0x04]");                   // 0x007608cb    8b4004
    asm("test               eax, eax");                                      // 0x007608ce    85c0
    asm("{disp8} jne        _jmp_addr_0x007608c5");                          // 0x007608d0    75f3
    asm("{disp8} jmp        _jmp_addr_0x007608fd");                          // 0x007608d2    eb29
    asm("_jmp_addr_0x007608d4:");
    asm("test               edx, edx");                                      // 0x007608d4    85d2
    asm("{disp8} jne        _jmp_addr_0x007608e1");                          // 0x007608d6    7509
    asm("{disp8} mov        edx, dword ptr [ecx + 0x04]");                   // 0x007608d8    8b5104
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x007608db    89542414
    asm("{disp8} jmp        _jmp_addr_0x007608e7");                          // 0x007608df    eb06
    asm("_jmp_addr_0x007608e1:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x007608e1    8b4804
    asm("{disp8} mov        dword ptr [edx + 0x04], ecx");                   // 0x007608e4    894a04
    asm("_jmp_addr_0x007608e7:");
    asm("push               eax");                                           // 0x007608e7    50
    asm("call               ??3@YAXPAX@Z");                                  // 0x007608e8    e8abe50400
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                   // 0x007608ed    8b44241c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x007608f1    8b4c2418
    asm("add                esp, 0x04");                                     // 0x007608f5    83c404
    asm("dec                eax");                                           // 0x007608f8    48
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x007608f9    89442418
    asm("_jmp_addr_0x007608fd:");
    asm("test               ecx, ecx");                                      // 0x007608fd    85c9
    asm("{disp8} jne        _jmp_addr_0x007608bb");                          // 0x007608ff    75ba
    asm("_jmp_addr_0x00760901:");
    asm("push               0x20");                                          // 0x00760901    6a20
    asm("push               esi");                                           // 0x00760903    56
    asm("call               _jmp_addr_0x006e4780");                          // 0x00760904    e8773ef8ff
    asm("add                esp, 0x08");                                     // 0x00760909    83c408
    asm("push               0x1");                                           // 0x0076090c    6a01
    asm("push               0x000000a3");                                    // 0x0076090e    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00760913    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");        // 0x00760915    e8a6c1e8ff
    asm("_jmp_addr_0x0076091a:");
    asm("pop                edi");                                           // 0x0076091a    5f
    asm("pop                esi");                                           // 0x0076091b    5e
    asm("pop                ebp");                                           // 0x0076091c    5d
    asm("mov                eax, 0x00000001");                               // 0x0076091d    b801000000
    asm("pop                ebx");                                           // 0x00760922    5b
    asm("add                esp, 0x0c");                                     // 0x00760923    83c40c
    asm("ret");                                                              // 0x00760926    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ArrivesHome__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x1c");                                     // 0x00760930    83ec1c
    asm("push               ebx");                                           // 0x00760933    53
    asm("push               esi");                                           // 0x00760934    56
    asm("push               edi");                                           // 0x00760935    57
    asm("mov.s              esi, ecx");                                      // 0x00760936    8bf1
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00760938    e82318ffff
    asm("mov.s              edi, eax");                                      // 0x0076093d    8bf8
    asm("test               edi, edi");                                      // 0x0076093f    85ff
    asm("{disp32} je        _jmp_addr_0x00760aea");                          // 0x00760941    0f84a3010000
    asm("mov                eax, dword ptr [edi]");                          // 0x00760947    8b07
    asm("mov                ebx, dword ptr [esi]");                          // 0x00760949    8b1e
    asm("push               0x0");                                           // 0x0076094b    6a00
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x0076094d    8d4c2414
    asm("push               ecx");                                           // 0x00760951    51
    asm("mov.s              ecx, edi");                                      // 0x00760952    8bcf
    asm("call               dword ptr [eax + 0x104]");                       // 0x00760954    ff9004010000
    asm("push               eax");                                           // 0x0076095a    50
    asm("mov.s              ecx, esi");                                      // 0x0076095b    8bce
    asm("call               dword ptr [ebx + 0x85c]");                       // 0x0076095d    ff935c080000
    asm("test               eax, eax");                                      // 0x00760963    85c0
    asm("{disp32} je        _jmp_addr_0x00760ac4");                          // 0x00760965    0f8459010000
    asm("mov                edx, dword ptr [edi]");                          // 0x0076096b    8b17
    asm("mov.s              ecx, edi");                                      // 0x0076096d    8bcf
    asm("call               dword ptr [edx + 0x890]");                       // 0x0076096f    ff9290080000
    asm("test               eax, eax");                                      // 0x00760975    85c0
    asm("{disp8} je         _jmp_addr_0x0076098b");                          // 0x00760977    7412
    asm("mov                eax, dword ptr [edi]");                          // 0x00760979    8b07
    asm("mov.s              ecx, edi");                                      // 0x0076097b    8bcf
    asm("call               dword ptr [eax + 0x88c]");                       // 0x0076097d    ff908c080000
    asm("test               eax, eax");                                      // 0x00760983    85c0
    asm("{disp32} jne       _jmp_addr_0x00760a91");                          // 0x00760985    0f8506010000
    asm("_jmp_addr_0x0076098b:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0076098b    8b16
    asm("{disp8} mov        ebx, dword ptr [esi + 0x28]");                   // 0x0076098d    8b5e28
    asm("mov.s              ecx, esi");                                      // 0x00760990    8bce
    asm("call               dword ptr [edx + 0x11c]");                       // 0x00760992    ff921c010000
    asm("{disp32} fcomp     dword ptr [ebx + 0x0000035c]");                  // 0x00760998    d89b5c030000
    asm("fnstsw             ax");                                            // 0x0076099e    dfe0
    asm("test               ah, 0x01");                                      // 0x007609a0    f6c401
    asm("{disp32} je        _jmp_addr_0x00760a5e");                          // 0x007609a3    0f84b5000000
    asm("mov                eax, dword ptr [edi]");                          // 0x007609a9    8b07
    asm("mov.s              ecx, edi");                                      // 0x007609ab    8bcf
    asm("call               dword ptr [eax + 0xd4]");                        // 0x007609ad    ff90d4000000
    asm("test               eax, eax");                                      // 0x007609b3    85c0
    asm("{disp32} jne       _jmp_addr_0x00760a91");                          // 0x007609b5    0f85d6000000
    asm("push               0x000001d1");                                    // 0x007609bb    68d1010000
    asm("push               0x00c24464");                                    // 0x007609c0    686444c200
    asm("push               0x3f490fdb");                                    // 0x007609c5    68db0f493f
    asm("{disp8} lea        ebx, dword ptr [esi + 0x14]");                   // 0x007609ca    8d5e14
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x007609cd    e85edbf7ff
    asm("{disp32} fsubr     dword ptr [rdata_bytes + 0x1dca0]");             // 0x007609d2    d82da06c8c00
    asm("push               ebx");                                           // 0x007609d8    53
    asm("add                edi, 0x14");                                     // 0x007609d9    83c714
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x007609dc    d95c241c
    asm("push               edi");                                           // 0x007609e0    57
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x007609e1    e88ac8feff
    asm("{disp8} fadd       dword ptr [esp + 0x20]");                        // 0x007609e6    d8442420
    asm("push               0x000001d2");                                    // 0x007609ea    68d2010000
    asm("push               0x00c24464");                                    // 0x007609ef    686444c200
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x007609f4    d95c2428
    asm("push               0x40a00000");                                    // 0x007609f8    680000a040
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x007609fd    e82edbf7ff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x2c]");                   // 0x00760a02    8b4c242c
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x26e4]");              // 0x00760a06    d805e4b68a00
    asm("add                esp, 0x1c");                                     // 0x00760a0c    83c41c
    asm("{disp8} lea        edx, dword ptr [esp + 0x20]");                   // 0x00760a0f    8d542420
    asm("fstp               dword ptr [esp]");                               // 0x00760a13    d91c24
    asm("push               ecx");                                           // 0x00760a16    51
    asm("push               edx");                                           // 0x00760a17    52
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x00760a18    e863cbfeff
    asm("add                esp, 0x0c");                                     // 0x00760a1d    83c40c
    asm("push               eax");                                           // 0x00760a20    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x00760a21    8d442414
    asm("push               eax");                                           // 0x00760a25    50
    asm("mov.s              ecx, ebx");                                      // 0x00760a26    8bcb
    asm("call               @__pl__9MapCoordsCFRC9MapCoords@16");            // 0x00760a28    e8f34aeaff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x00760a2d    8d4c2410
    asm("push               ecx");                                           // 0x00760a31    51
    asm("mov.s              ecx, esi");                                      // 0x00760a32    8bce
    asm("call               ?GetTentPos@Villager@@QAEPAVTown@@AAUMapCoords@@@Z"); // 0x00760a34    e8b7faffff
    asm("test               eax, eax");                                      // 0x00760a39    85c0
    asm("{disp32} je        _jmp_addr_0x00760ade");                          // 0x00760a3b    0f849d000000
    asm("push               0x000000ee");                                    // 0x00760a41    68ee000000
    asm("{disp8} lea        edx, dword ptr [esp + 0x14]");                   // 0x00760a46    8d542414
    asm("push               edx");                                           // 0x00760a4a    52
    asm("mov.s              ecx, esi");                                      // 0x00760a4b    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00760a4d    e83e1ee9ff
    asm("pop                edi");                                           // 0x00760a52    5f
    asm("pop                esi");                                           // 0x00760a53    5e
    asm("mov                eax, 0x00000001");                               // 0x00760a54    b801000000
    asm("pop                ebx");                                           // 0x00760a59    5b
    asm("add                esp, 0x1c");                                     // 0x00760a5a    83c41c
    asm("ret");                                                              // 0x00760a5d    c3
    asm("_jmp_addr_0x00760a5e:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00760a5e    8b4628
    asm("{disp32} fld       dword ptr [esi + 0x000000e8]");                  // 0x00760a61    d986e8000000
    asm("{disp32} fcomp     dword ptr [eax + 0x000002c0]");                  // 0x00760a67    d898c0020000
    asm("fnstsw             ax");                                            // 0x00760a6d    dfe0
    asm("test               ah, 0x01");                                      // 0x00760a6f    f6c401
    asm("{disp8} je         _jmp_addr_0x00760ab0");                          // 0x00760a72    743c
    asm("mov                edx, dword ptr [edi]");                          // 0x00760a74    8b17
    asm("mov.s              ecx, edi");                                      // 0x00760a76    8bcf
    asm("call               dword ptr [edx + 0xd4]");                        // 0x00760a78    ff92d4000000
    asm("test               eax, eax");                                      // 0x00760a7e    85c0
    asm("{disp8} jne        _jmp_addr_0x00760a91");                          // 0x00760a80    750f
    asm("mov                eax, dword ptr [esi]");                          // 0x00760a82    8b06
    asm("push               0x000000a3");                                    // 0x00760a84    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00760a89    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00760a8b    ff90e8080000
    asm("_jmp_addr_0x00760a91:");
    asm("mov.s              ecx, esi");                                      // 0x00760a91    8bce
    asm("call               ?ArriveHome@Villager@@QAEXXZ");                  // 0x00760a93    e80815ffff
    asm("mov                edx, dword ptr [esi]");                          // 0x00760a98    8b16
    asm("push               0x26");                                          // 0x00760a9a    6a26
    asm("mov.s              ecx, esi");                                      // 0x00760a9c    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00760a9e    ff92e8080000
    asm("pop                edi");                                           // 0x00760aa4    5f
    asm("pop                esi");                                           // 0x00760aa5    5e
    asm("mov                eax, 0x00000001");                               // 0x00760aa6    b801000000
    asm("pop                ebx");                                           // 0x00760aab    5b
    asm("add                esp, 0x1c");                                     // 0x00760aac    83c41c
    asm("ret");                                                              // 0x00760aaf    c3
    asm("_jmp_addr_0x00760ab0:");
    asm("push               edi");                                           // 0x00760ab0    57
    asm("mov.s              ecx, esi");                                      // 0x00760ab1    8bce
    asm("call               ?SetupBuildingObject@Villager@@QAEIPAVMultiMapFixed@@@Z");                          // 0x00760ab3    e8787affff
    asm("cmp                eax, 0x01");                                     // 0x00760ab8    83f801
    asm("{disp8} jne        _jmp_addr_0x00760a91");                          // 0x00760abb    75d4
    asm("pop                edi");                                           // 0x00760abd    5f
    asm("pop                esi");                                           // 0x00760abe    5e
    asm("pop                ebx");                                           // 0x00760abf    5b
    asm("add                esp, 0x1c");                                     // 0x00760ac0    83c41c
    asm("ret");                                                              // 0x00760ac3    c3
    asm("_jmp_addr_0x00760ac4:");
    asm("mov                eax, dword ptr [edi]");                          // 0x00760ac4    8b07
    asm("push               0x25");                                          // 0x00760ac6    6a25
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                   // 0x00760ac8    8d4c2420
    asm("push               ecx");                                           // 0x00760acc    51
    asm("mov.s              ecx, edi");                                      // 0x00760acd    8bcf
    asm("call               dword ptr [eax + 0x104]");                       // 0x00760acf    ff9004010000
    asm("push               eax");                                           // 0x00760ad5    50
    asm("push               edi");                                           // 0x00760ad6    57
    asm("mov.s              ecx, esi");                                      // 0x00760ad7    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00760ad9    e842d2e8ff
    asm("_jmp_addr_0x00760ade:");
    asm("pop                edi");                                           // 0x00760ade    5f
    asm("pop                esi");                                           // 0x00760adf    5e
    asm("mov                eax, 0x00000001");                               // 0x00760ae0    b801000000
    asm("pop                ebx");                                           // 0x00760ae5    5b
    asm("add                esp, 0x1c");                                     // 0x00760ae6    83c41c
    asm("ret");                                                              // 0x00760ae9    c3
    asm("_jmp_addr_0x00760aea:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00760aea    8b16
    asm("push               0x00000081");                                    // 0x00760aec    6881000000
    asm("mov.s              ecx, esi");                                      // 0x00760af1    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00760af3    ff92e8080000
    asm("pop                edi");                                           // 0x00760af9    5f
    asm("pop                esi");                                           // 0x00760afa    5e
    asm("xor.s              eax, eax");                                      // 0x00760afb    33c0
    asm("pop                ebx");                                           // 0x00760afd    5b
    asm("add                esp, 0x1c");                                     // 0x00760afe    83c41c
    asm("ret");                                                              // 0x00760b01    c3
    __builtin_unreachable();
}

bool32_t __fastcall AtHome__8VillagerFv(struct Villager* this)
{
    asm("call               ?HomeDecideWhatToDo@Villager@@QAEIXZ");          // 0x00760b10    e88bf3ffff
    asm("mov                eax, 0x00000001");                               // 0x00760b15    b801000000
    asm("ret");                                                              // 0x00760b1a    c3
    __builtin_unreachable();
}

bool32_t __fastcall SitsDownToDinner__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall GotoBedAtHome__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00760b30    56
    asm("mov.s              esi, ecx");                                      // 0x00760b31    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00760b33    8b06
    asm("push               0x78");                                          // 0x00760b35    6a78
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00760b37    ff90e8080000
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00760b3d    8b4e28
    asm("{disp32} mov       dx, word ptr [ecx + 0x0000024c]");               // 0x00760b40    668b914c020000
    asm("{disp8} mov        word ptr [esi + 0x58], dx");                     // 0x00760b47    66895658
    asm("mov                eax, 0x00000001");                               // 0x00760b4b    b801000000
    asm("pop                esi");                                           // 0x00760b50    5e
    asm("ret");                                                              // 0x00760b51    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckWhenGoingToBed__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00760b60    56
    asm("push               edi");                                           // 0x00760b61    57
    asm("mov.s              edi, ecx");                                      // 0x00760b62    8bf9
    asm("xor.s              eax, eax");                                      // 0x00760b64    33c0
    asm("{disp32} mov       ax, word ptr [edi + 0x000000e0]");               // 0x00760b66    668b87e0000000
    asm("test               ah, 0x20");                                      // 0x00760b6d    f6c420
    asm("{disp32} jne       _jmp_addr_0x00760c6d");                          // 0x00760b70    0f85f7000000
    asm("or                 eax, 0x2000");                                   // 0x00760b76    0d00200000
    asm("{disp32} mov       word ptr [edi + 0x000000e0], ax");               // 0x00760b7b    668987e0000000
    asm("call               ?CheckDeathFromOldAge@Villager@@QAEIXZ");        // 0x00760b82    e819010000
    asm("test               eax, eax");                                      // 0x00760b87    85c0
    asm("{disp8} je         _jmp_addr_0x00760b90");                          // 0x00760b89    7405
    asm("pop                edi");                                           // 0x00760b8b    5f
    asm("xor.s              eax, eax");                                      // 0x00760b8c    33c0
    asm("pop                esi");                                           // 0x00760b8e    5e
    asm("ret");                                                              // 0x00760b8f    c3
    asm("_jmp_addr_0x00760b90:");
    asm("mov                eax, dword ptr [edi]");                          // 0x00760b90    8b07
    asm("mov.s              ecx, edi");                                      // 0x00760b92    8bcf
    asm("call               dword ptr [eax + 0x48]");                        // 0x00760b94    ff5048
    asm("test               eax, eax");                                      // 0x00760b97    85c0
    asm("{disp32} je        _jmp_addr_0x00760c6d");                          // 0x00760b99    0f84ce000000
    asm("mov                edx, dword ptr [edi]");                          // 0x00760b9f    8b17
    asm("push               0x10");                                          // 0x00760ba1    6a10
    asm("mov.s              ecx, edi");                                      // 0x00760ba3    8bcf
    asm("call               dword ptr [edx + 0x48]");                        // 0x00760ba5    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00760ba8    8bc8
    asm("call               ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z");// 0x00760baa    e871d8fdff
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x00760baf    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x00760bb5    dfe0
    asm("test               ah, 0x01");                                      // 0x00760bb7    f6c401
    asm("{disp32} jne       _jmp_addr_0x00760c6d");                          // 0x00760bba    0f85ad000000
    asm("mov.s              ecx, edi");                                      // 0x00760bc0    8bcf
    asm("call               ?IsSexuallyActive@Villager@@QAEIXZ");            // 0x00760bc2    e8c9040000
    asm("test               eax, eax");                                      // 0x00760bc7    85c0
    asm("{disp32} je        _jmp_addr_0x00760c6d");                          // 0x00760bc9    0f849e000000
    asm("mov                eax, dword ptr [edi]");                          // 0x00760bcf    8b07
    asm("mov.s              ecx, edi");                                      // 0x00760bd1    8bcf
    asm("call               dword ptr [eax + 0x450]");                       // 0x00760bd3    ff9050040000
    asm("test               eax, eax");                                      // 0x00760bd9    85c0
    asm("{disp8} je         _jmp_addr_0x00760c26");                          // 0x00760bdb    7449
    asm("mov.s              ecx, edi");                                      // 0x00760bdd    8bcf
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00760bdf    e87c15ffff
    asm("{disp32} mov       esi, dword ptr [eax + 0x000000a0]");             // 0x00760be4    8bb0a0000000
    asm("test               esi, esi");                                      // 0x00760bea    85f6
    asm("{disp8} je         _jmp_addr_0x00760c6d");                          // 0x00760bec    747f
    asm("_jmp_addr_0x00760bee:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00760bee    8b16
    asm("mov.s              ecx, esi");                                      // 0x00760bf0    8bce
    asm("call               dword ptr [edx + 0x44c]");                       // 0x00760bf2    ff924c040000
    asm("test               eax, eax");                                      // 0x00760bf8    85c0
    asm("{disp8} je         _jmp_addr_0x00760c05");                          // 0x00760bfa    7409
    asm("test               byte ptr [esi + 0x000000e0], 0x04");             // 0x00760bfc    f686e000000004
    asm("{disp8} jne        _jmp_addr_0x00760c17");                          // 0x00760c03    7512
    asm("_jmp_addr_0x00760c05:");
    asm("{disp32} mov       esi, dword ptr [esi + 0x000000e4]");             // 0x00760c05    8bb6e4000000
    asm("test               esi, esi");                                      // 0x00760c0b    85f6
    asm("{disp8} jne        _jmp_addr_0x00760bee");                          // 0x00760c0d    75df
    asm("pop                edi");                                           // 0x00760c0f    5f
    asm("mov                eax, 0x00000001");                               // 0x00760c10    b801000000
    asm("pop                esi");                                           // 0x00760c15    5e
    asm("ret");                                                              // 0x00760c16    c3
    asm("_jmp_addr_0x00760c17:");
    asm("mov.s              ecx, edi");                                      // 0x00760c17    8bcf
    asm("call               ?CheckGetPregnantAtHome@Villager@@QAEIXZ");      // 0x00760c19    e862000000
    asm("pop                edi");                                           // 0x00760c1e    5f
    asm("mov                eax, 0x00000001");                               // 0x00760c1f    b801000000
    asm("pop                esi");                                           // 0x00760c24    5e
    asm("ret");                                                              // 0x00760c25    c3
    asm("_jmp_addr_0x00760c26:");
    asm("mov                eax, dword ptr [edi]");                          // 0x00760c26    8b07
    asm("mov.s              ecx, edi");                                      // 0x00760c28    8bcf
    asm("call               dword ptr [eax + 0x44c]");                       // 0x00760c2a    ff904c040000
    asm("test               eax, eax");                                      // 0x00760c30    85c0
    asm("{disp8} je         _jmp_addr_0x00760c6d");                          // 0x00760c32    7439
    asm("mov.s              ecx, edi");                                      // 0x00760c34    8bcf
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00760c36    e82515ffff
    asm("{disp32} mov       esi, dword ptr [eax + 0x000000a0]");             // 0x00760c3b    8bb0a0000000
    asm("test               esi, esi");                                      // 0x00760c41    85f6
    asm("{disp8} je         _jmp_addr_0x00760c6d");                          // 0x00760c43    7428
    asm("_jmp_addr_0x00760c45:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00760c45    8b16
    asm("mov.s              ecx, esi");                                      // 0x00760c47    8bce
    asm("call               dword ptr [edx + 0x450]");                       // 0x00760c49    ff9250040000
    asm("test               eax, eax");                                      // 0x00760c4f    85c0
    asm("{disp8} je         _jmp_addr_0x00760c63");                          // 0x00760c51    7410
    asm("test               byte ptr [esi + 0x000000e0], 0x04");             // 0x00760c53    f686e000000004
    asm("{disp8} je         _jmp_addr_0x00760c63");                          // 0x00760c5a    7407
    asm("mov.s              ecx, esi");                                      // 0x00760c5c    8bce
    asm("call               ?CheckGetPregnantAtHome@Villager@@QAEIXZ");      // 0x00760c5e    e81d000000
    asm("_jmp_addr_0x00760c63:");
    asm("{disp32} mov       esi, dword ptr [esi + 0x000000e4]");             // 0x00760c63    8bb6e4000000
    asm("test               esi, esi");                                      // 0x00760c69    85f6
    asm("{disp8} jne        _jmp_addr_0x00760c45");                          // 0x00760c6b    75d8
    asm("_jmp_addr_0x00760c6d:");
    asm("pop                edi");                                           // 0x00760c6d    5f
    asm("mov                eax, 0x00000001");                               // 0x00760c6e    b801000000
    asm("pop                esi");                                           // 0x00760c73    5e
    asm("ret");                                                              // 0x00760c74    c3
    __builtin_unreachable();
}

bool32_t __fastcall CheckGetPregnantAtHome__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00760c80    56
    asm("mov.s              esi, ecx");                                      // 0x00760c81    8bf1
    asm("push               0x0");                                           // 0x00760c83    6a00
    asm("call               ?WillHousewifeGetPregnant@Villager@@QAEIPAV1@@Z");                          // 0x00760c85    e836180000
    asm("test               eax, eax");                                      // 0x00760c8a    85c0
    asm("{disp8} je         _jmp_addr_0x00760c97");                          // 0x00760c8c    7409
    asm("push               0x0");                                           // 0x00760c8e    6a00
    asm("mov.s              ecx, esi");                                      // 0x00760c90    8bce
    asm("call               ?HousewifeGetsPregnant@Villager@@QAEIPAV1@@Z");  // 0x00760c92    e8d9180000
    asm("_jmp_addr_0x00760c97:");
    asm("pop                esi");                                           // 0x00760c97    5e
    asm("ret");                                                              // 0x00760c98    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckDeathFromOldAge__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                     // 0x00760ca0    83ec08
    asm("push               esi");                                           // 0x00760ca3    56
    asm("mov.s              esi, ecx");                                      // 0x00760ca4    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00760ca6    8b06
    asm("push               edi");                                           // 0x00760ca8    57
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x00760ca9    8b7e28
    asm("call               dword ptr [eax + 0x8d0]");                       // 0x00760cac    ff90d0080000
    asm("cmp                eax, dword ptr [edi + 0x0000013c]");             // 0x00760cb2    3b873c010000
    asm("{disp32} jbe       _jmp_addr_0x00760d61");                          // 0x00760cb8    0f86a3000000
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00760cbe    8b4628
    asm("{disp32} mov       edi, dword ptr [eax + 0x00000140]");             // 0x00760cc1    8bb840010000
    asm("{disp32} mov       ecx, dword ptr [eax + 0x0000013c]");             // 0x00760cc7    8b883c010000
    asm("push               0x00000258");                                    // 0x00760ccd    6858020000
    asm("push               0x00c24464");                                    // 0x00760cd2    686444c200
    asm("push               0x3f800000");                                    // 0x00760cd7    680000803f
    asm("sub.s              edi, ecx");                                      // 0x00760cdc    2bf9
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00760cde    e84dd8f7ff
    asm("{disp8} fst        dword ptr [esp + 0x14]");                        // 0x00760ce3    d9542414
    asm("add                esp, 0x0c");                                     // 0x00760ce7    83c40c
    asm("mov                eax, 0x00000002");                               // 0x00760cea    b802000000
    asm("_jmp_addr_0x00760cef:");
    asm("dec                eax");                                           // 0x00760cef    48
    asm("{disp8} fmul       dword ptr [esp + 0x08]");                        // 0x00760cf0    d84c2408
    asm("{disp8} jne        _jmp_addr_0x00760cef");                          // 0x00760cf4    75f9
    asm("{disp8} mov        dword ptr [esp + 0x08], edi");                   // 0x00760cf6    897c2408
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x00760cfa    c744240c00000000
    asm("{disp8} fild       qword ptr [esp + 0x08]");                        // 0x00760d02    df6c2408
    asm("push               ebx");                                           // 0x00760d06    53
    asm("fxch               st(1)");                                         // 0x00760d07    d9c9
    asm("push               0x0000025a");                                    // 0x00760d09    685a020000
    asm("fmulp              st(1), st");                                     // 0x00760d0e    dec9
    asm("push               0x00c24464");                                    // 0x00760d10    686444c200
    asm("call               _jmp_addr_0x007a1400");                          // 0x00760d15    e8e6060400
    asm("push               eax");                                           // 0x00760d1a    50
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00760d1b    e8f0d7f7ff
    asm("mov                edx, dword ptr [esi]");                          // 0x00760d20    8b16
    asm("{disp8} mov        ebx, dword ptr [esi + 0x28]");                   // 0x00760d22    8b5e28
    asm("add                esp, 0x0c");                                     // 0x00760d25    83c40c
    asm("mov.s              ecx, esi");                                      // 0x00760d28    8bce
    asm("mov.s              edi, eax");                                      // 0x00760d2a    8bf8
    asm("call               dword ptr [edx + 0x8d0]");                       // 0x00760d2c    ff92d0080000
    asm("{disp32} mov       ecx, dword ptr [ebx + 0x00000140]");             // 0x00760d32    8b8b40010000
    asm("add.s              eax, edi");                                      // 0x00760d38    03c7
    asm("cmp.s              eax, ecx");                                      // 0x00760d3a    3bc1
    asm("pop                ebx");                                           // 0x00760d3c    5b
    asm("{disp8} jbe        _jmp_addr_0x00760d61");                          // 0x00760d3d    7622
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00760d3f    8b4628
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000128]");             // 0x00760d42    8b8828010000
    asm("push               0x1");                                           // 0x00760d48    6a01
    asm("push               ecx");                                           // 0x00760d4a    51
    asm("push               0x0");                                           // 0x00760d4b    6a00
    asm("push               0x9");                                           // 0x00760d4d    6a09
    asm("mov.s              ecx, esi");                                      // 0x00760d4f    8bce
    asm("call               ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z");                          // 0x00760d51    e86af9feff
    asm("pop                edi");                                           // 0x00760d56    5f
    asm("mov                eax, 0x00000001");                               // 0x00760d57    b801000000
    asm("pop                esi");                                           // 0x00760d5c    5e
    asm("add                esp, 0x08");                                     // 0x00760d5d    83c408
    asm("ret");                                                              // 0x00760d60    c3
    asm("_jmp_addr_0x00760d61:");
    asm("pop                edi");                                           // 0x00760d61    5f
    asm("xor.s              eax, eax");                                      // 0x00760d62    33c0
    asm("pop                esi");                                           // 0x00760d64    5e
    asm("add                esp, 0x08");                                     // 0x00760d65    83c408
    asm("ret");                                                              // 0x00760d68    c3
    __builtin_unreachable();
}

bool32_t __fastcall SleepingAtHome__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00760d70    56
    asm("mov.s              esi, ecx");                                      // 0x00760d71    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00760d73    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00760d75    ff5048
    asm("test               eax, eax");                                      // 0x00760d78    85c0
    asm("{disp8} je         _jmp_addr_0x00760da3");                          // 0x00760d7a    7427
    asm("dec                word ptr [esi + 0x58]");                         // 0x00760d7c    66ff4e58
    asm("cmp                word ptr [esi + 0x58], 0x00");                   // 0x00760d80    66837e5800
    asm("{disp8} jne        _jmp_addr_0x00760da3");                          // 0x00760d85    751c
    asm("push               0x3f800000");                                    // 0x00760d87    680000803f
    asm("mov.s              ecx, esi");                                      // 0x00760d8c    8bce
    asm("call               ?DoSleeping@Villager@@QAEIM@Z");                 // 0x00760d8e    e81d000000
    asm("test               eax, eax");                                      // 0x00760d93    85c0
    asm("{disp8} jne        _jmp_addr_0x00760da3");                          // 0x00760d95    750c
    asm("mov                edx, dword ptr [esi]");                          // 0x00760d97    8b16
    asm("push               0x26");                                          // 0x00760d99    6a26
    asm("mov.s              ecx, esi");                                      // 0x00760d9b    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00760d9d    ff92e8080000
    asm("_jmp_addr_0x00760da3:");
    asm("mov                eax, 0x00000001");                               // 0x00760da3    b801000000
    asm("pop                esi");                                           // 0x00760da8    5e
    asm("ret");                                                              // 0x00760da9    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall DoSleeping__8VillagerFf(struct Villager* this, const void* edx, float param_1)
{
    asm("push               esi");                                           // 0x00760db0    56
    asm("mov.s              esi, ecx");                                      // 0x00760db1    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00760db3    8b06
    asm("push               edi");                                           // 0x00760db5    57
    asm("call               dword ptr [eax + 0x4a4]");                       // 0x00760db6    ff90a4040000
    asm("test               al, al");                                        // 0x00760dbc    84c0
    asm("{disp32} jne       _jmp_addr_0x00760e48");                          // 0x00760dbe    0f8584000000
    asm("mov                edx, dword ptr [esi]");                          // 0x00760dc4    8b16
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x00760dc6    8b7e28
    asm("mov.s              ecx, esi");                                      // 0x00760dc9    8bce
    asm("call               dword ptr [edx + 0x11c]");                       // 0x00760dcb    ff921c010000
    asm("{disp32} fcomp     dword ptr [edi + 0x00000128]");                  // 0x00760dd1    d89f28010000
    asm("fnstsw             ax");                                            // 0x00760dd7    dfe0
    asm("test               ah, 0x01");                                      // 0x00760dd9    f6c401
    asm("{disp8} je         _jmp_addr_0x00760dfb");                          // 0x00760ddc    741d
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00760dde    8b4e28
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x00760de1    d944240c
    asm("{disp32} fmul      dword ptr [ecx + 0x00000250]");                  // 0x00760de5    d88950020000
    asm("mov                eax, dword ptr [esi]");                          // 0x00760deb    8b06
    asm("push               ecx");                                           // 0x00760ded    51
    asm("mov.s              ecx, esi");                                      // 0x00760dee    8bce
    asm("fstp               dword ptr [esp]");                               // 0x00760df0    d91c24
    asm("call               dword ptr [eax + 0x5bc]");                       // 0x00760df3    ff90bc050000
    asm("fstp               st(0)");                                         // 0x00760df9    ddd8
    asm("_jmp_addr_0x00760dfb:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00760dfb    8b16
    asm("mov.s              ecx, esi");                                      // 0x00760dfd    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00760dff    ff5248
    asm("test               eax, eax");                                      // 0x00760e02    85c0
    asm("{disp8} je         _jmp_addr_0x00760e16");                          // 0x00760e04    7410
    asm("push               0x0");                                           // 0x00760e06    6a00
    asm("{disp8} lea        ecx, dword ptr [eax + 0x34]");                   // 0x00760e08    8d4834
    asm("call               _jmp_addr_0x007465d0");                          // 0x00760e0b    e8c057feff
    asm("cmp                dword ptr [eax + 0x08], 0x10");                  // 0x00760e10    83780810
    asm("{disp8} je         _jmp_addr_0x00760e30");                          // 0x00760e14    741a
    asm("_jmp_addr_0x00760e16:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00760e16    8b06
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x00760e18    8b7e28
    asm("mov.s              ecx, esi");                                      // 0x00760e1b    8bce
    asm("call               dword ptr [eax + 0x11c]");                       // 0x00760e1d    ff901c010000
    asm("{disp32} fcomp     dword ptr [edi + 0x00000360]");                  // 0x00760e23    d89f60030000
    asm("fnstsw             ax");                                            // 0x00760e29    dfe0
    asm("test               ah, 0x01");                                      // 0x00760e2b    f6c401
    asm("{disp8} je         _jmp_addr_0x00760e48");                          // 0x00760e2e    7418
    asm("_jmp_addr_0x00760e30:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00760e30    8b4e28
    asm("{disp32} mov       dx, word ptr [ecx + 0x0000024c]");               // 0x00760e33    668b914c020000
    asm("pop                edi");                                           // 0x00760e3a    5f
    asm("{disp8} mov        word ptr [esi + 0x58], dx");                     // 0x00760e3b    66895658
    asm("mov                eax, 0x00000001");                               // 0x00760e3f    b801000000
    asm("pop                esi");                                           // 0x00760e44    5e
    asm("ret                0x0004");                                        // 0x00760e45    c20400
    asm("_jmp_addr_0x00760e48:");
    asm("pop                edi");                                           // 0x00760e48    5f
    asm("xor.s              eax, eax");                                      // 0x00760e49    33c0
    asm("pop                esi");                                           // 0x00760e4b    5e
    asm("ret                0x0004");                                        // 0x00760e4c    c20400
    __builtin_unreachable();
}

bool32_t __fastcall WakeUpAtHome__8VillagerFv(struct Villager* this)
{
    asm("{disp32} jmp       ?GoHome@Villager@@QAE_NXZ");                     // 0x00760e50    e91bf4ffff
    __builtin_unreachable();
}

bool32_t __fastcall StartHavingSex__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00760e60    56
    asm("push               edi");                                           // 0x00760e61    57
    asm("mov.s              edi, ecx");                                      // 0x00760e62    8bf9
    asm("{disp32} mov       esi, dword ptr [edi + 0x00000118]");             // 0x00760e64    8bb718010000
    asm("test               esi, esi");                                      // 0x00760e6a    85f6
    asm("{disp8} je         _jmp_addr_0x00760ebc");                          // 0x00760e6c    744e
    asm("mov                eax, dword ptr [esi]");                          // 0x00760e6e    8b06
    asm("mov.s              ecx, esi");                                      // 0x00760e70    8bce
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00760e72    ff502c
    asm("test               eax, eax");                                      // 0x00760e75    85c0
    asm("{disp8} je         _jmp_addr_0x00760ebc");                          // 0x00760e77    7443
    asm("mov                edx, dword ptr [esi]");                          // 0x00760e79    8b16
    asm("push               0x3f11eb85");                                    // 0x00760e7b    6885eb113f
    asm("push               edi");                                           // 0x00760e80    57
    asm("mov.s              ecx, esi");                                      // 0x00760e81    8bce
    asm("call               dword ptr [edx + 0x6b8]");                       // 0x00760e83    ff92b8060000
    asm("test               eax, eax");                                      // 0x00760e89    85c0
    asm("push               esi");                                           // 0x00760e8b    56
    asm("mov.s              ecx, edi");                                      // 0x00760e8c    8bcf
    asm("{disp8} je         _jmp_addr_0x00760eaf");                          // 0x00760e8e    741f
    asm("call               ?MakeVillagerFaceObject@Villager@@QAE_NPAVObject@@@Z");                          // 0x00760e90    e8cb18ffff
    asm("push               edi");                                           // 0x00760e95    57
    asm("mov.s              ecx, esi");                                      // 0x00760e96    8bce
    asm("call               ?MakeVillagerFaceObject@Villager@@QAE_NPAVObject@@@Z");                          // 0x00760e98    e8c318ffff
    asm("push               0x7b");                                          // 0x00760e9d    6a7b
    asm("push               esi");                                           // 0x00760e9f    56
    asm("mov.s              ecx, edi");                                      // 0x00760ea0    8bcf
    asm("call               ?StartHavingSex@Villager@@QAEIPAV1@W4VILLAGER_STATES@@@Z");                          // 0x00760ea2    e8e9000000
    asm("cmp                eax, 0x01");                                     // 0x00760ea7    83f801
    asm("{disp8} jne        _jmp_addr_0x00760ebc");                          // 0x00760eaa    7510
    asm("pop                edi");                                           // 0x00760eac    5f
    asm("pop                esi");                                           // 0x00760ead    5e
    asm("ret");                                                              // 0x00760eae    c3
    asm("_jmp_addr_0x00760eaf:");
    asm("call               ?GoAndHaveSexWith@Villager@@QAEIPAV1@@Z");       // 0x00760eaf    e80c640000
    asm("pop                edi");                                           // 0x00760eb4    5f
    asm("mov                eax, 0x00000001");                               // 0x00760eb5    b801000000
    asm("pop                esi");                                           // 0x00760eba    5e
    asm("ret");                                                              // 0x00760ebb    c3
    asm("_jmp_addr_0x00760ebc:");
    asm("mov                eax, dword ptr [edi]");                          // 0x00760ebc    8b07
    asm("push               0x000000a3");                                    // 0x00760ebe    68a3000000
    asm("mov.s              ecx, edi");                                      // 0x00760ec3    8bcf
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00760ec5    ff90e8080000
    asm("pop                edi");                                           // 0x00760ecb    5f
    asm("mov                eax, 0x00000001");                               // 0x00760ecc    b801000000
    asm("pop                esi");                                           // 0x00760ed1    5e
    asm("ret");                                                              // 0x00760ed2    c3
    __builtin_unreachable();
}

bool32_t __fastcall HavingSex__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00760ee0    56
    asm("mov.s              esi, ecx");                                      // 0x00760ee1    8bf1
    asm("push               0x1");                                           // 0x00760ee3    6a01
    asm("call               @IsReadyForNewAnimation__6LivingFUl@12");        // 0x00760ee5    e876bae8ff
    asm("test               eax, eax");                                      // 0x00760eea    85c0
    asm("{disp8} je         _jmp_addr_0x00760f43");                          // 0x00760eec    7455
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00760eee    8b4628
    asm("cmp                dword ptr [eax + 0x000001f8], 0x01");            // 0x00760ef1    83b8f801000001
    asm("{disp8} jne        _jmp_addr_0x00760f37");                          // 0x00760ef8    753d
    asm("mov.s              ecx, esi");                                      // 0x00760efa    8bce
    asm("call               ?IsSexuallyActive@Villager@@QAEIXZ");            // 0x00760efc    e88f010000
    asm("test               eax, eax");                                      // 0x00760f01    85c0
    asm("{disp8} je         _jmp_addr_0x00760f37");                          // 0x00760f03    7432
    asm("push               edi");                                           // 0x00760f05    57
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x00760f06    8b7e28
    asm("push               0x000002b3");                                    // 0x00760f09    68b3020000
    asm("push               0x00c24464");                                    // 0x00760f0e    686444c200
    asm("push               0x3f800000");                                    // 0x00760f13    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00760f18    e813d6f7ff
    asm("{disp32} fcomp     dword ptr [edi + 0x00000254]");                  // 0x00760f1d    d89f54020000
    asm("add                esp, 0x0c");                                     // 0x00760f23    83c40c
    asm("pop                edi");                                           // 0x00760f26    5f
    asm("fnstsw             ax");                                            // 0x00760f27    dfe0
    asm("test               ah, 0x01");                                      // 0x00760f29    f6c401
    asm("{disp8} je         _jmp_addr_0x00760f37");                          // 0x00760f2c    7409
    asm("push               0x0");                                           // 0x00760f2e    6a00
    asm("mov.s              ecx, esi");                                      // 0x00760f30    8bce
    asm("call               ?HousewifeGetsPregnant@Villager@@QAEIPAV1@@Z");  // 0x00760f32    e839160000
    asm("_jmp_addr_0x00760f37:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00760f37    8b16
    asm("push               0x7c");                                          // 0x00760f39    6a7c
    asm("mov.s              ecx, esi");                                      // 0x00760f3b    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00760f3d    ff92e8080000
    asm("_jmp_addr_0x00760f43:");
    asm("mov                eax, 0x00000001");                               // 0x00760f43    b801000000
    asm("pop                esi");                                           // 0x00760f48    5e
    asm("ret");                                                              // 0x00760f49    c3
    __builtin_unreachable();
}

bool32_t __fastcall StopHavingSex__8VillagerFv(struct Villager* this)
{
    asm("test               byte ptr [ecx + 0x000000e0], 0x04");             // 0x00760f50    f681e000000004
    asm("{disp8} je         _jmp_addr_0x00760f5e");                          // 0x00760f57    7405
    asm("{disp32} jmp       ?GoHome@Villager@@QAE_NXZ");                     // 0x00760f59    e912f3ffff
    asm("_jmp_addr_0x00760f5e:");
    asm("mov                eax, dword ptr [ecx]");                          // 0x00760f5e    8b01
    asm("push               0x000000a3");                                    // 0x00760f60    68a3000000
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00760f65    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x00760f6b    b801000000
    asm("ret");                                                              // 0x00760f70    c3
    __builtin_unreachable();
}

bool32_t __fastcall StartHavingSexAtHome__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall StartHavingSex__8VillagerFP8Villager15VILLAGER_STATES(struct Villager* this, const void* edx, struct Villager* param_1, enum VILLAGER_STATES param_2)
{
    asm("push               ebx");                                           // 0x00760f90    53
    asm("push               ebp");                                           // 0x00760f91    55
    asm("{disp8} mov        ebp, dword ptr [esp + 0x10]");                   // 0x00760f92    8b6c2410
    asm("push               esi");                                           // 0x00760f96    56
    asm("push               edi");                                           // 0x00760f97    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x14]");                   // 0x00760f98    8b7c2414
    asm("test               edi, edi");                                      // 0x00760f9c    85ff
    asm("mov.s              esi, ecx");                                      // 0x00760f9e    8bf1
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00760fa0    8b4628
    asm("{disp32} mov       ebx, dword ptr [eax + 0x000002e0]");             // 0x00760fa3    8b98e0020000
    asm("{disp8} je         _jmp_addr_0x00760fed");                          // 0x00760fa9    7442
    asm("mov                edx, dword ptr [edi]");                          // 0x00760fab    8b17
    asm("mov.s              ecx, edi");                                      // 0x00760fad    8bcf
    asm("call               dword ptr [edx + 0x2c]");                        // 0x00760faf    ff522c
    asm("test               eax, eax");                                      // 0x00760fb2    85c0
    asm("{disp8} jne        _jmp_addr_0x00760fbd");                          // 0x00760fb4    7507
    asm("pop                edi");                                           // 0x00760fb6    5f
    asm("pop                esi");                                           // 0x00760fb7    5e
    asm("pop                ebp");                                           // 0x00760fb8    5d
    asm("pop                ebx");                                           // 0x00760fb9    5b
    asm("ret                0x0008");                                        // 0x00760fba    c20800
    asm("_jmp_addr_0x00760fbd:");
    asm("{disp8} mov        eax, dword ptr [edi + 0x28]");                   // 0x00760fbd    8b4728
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00760fc0    8b4e28
    asm("{disp32} mov       edx, dword ptr [eax + 0x000002e0]");             // 0x00760fc3    8b90e0020000
    asm("add                edx, dword ptr [ecx + 0x000002e0]");             // 0x00760fc9    0391e0020000
    asm("mov                eax, dword ptr [edi]");                          // 0x00760fcf    8b07
    asm("add.s              edx, ebx");                                      // 0x00760fd1    03d3
    asm("shr                edx, 1");                                        // 0x00760fd3    d1ea
    asm("push               ebp");                                           // 0x00760fd5    55
    asm("mov.s              ecx, edi");                                      // 0x00760fd6    8bcf
    asm("mov.s              ebx, edx");                                      // 0x00760fd8    8bda
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00760fda    ff90e8080000
    asm("{disp8} lea        ecx, dword ptr [ebx + 0x01]");                   // 0x00760fe0    8d4b01
    asm("{disp32} mov       dword ptr [edi + 0x00000118], esi");             // 0x00760fe3    89b718010000
    asm("{disp8} mov        word ptr [edi + 0x58], cx");                     // 0x00760fe9    66894f58
    asm("_jmp_addr_0x00760fed:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00760fed    8b16
    asm("push               ebp");                                           // 0x00760fef    55
    asm("mov.s              ecx, esi");                                      // 0x00760ff0    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00760ff2    ff92e8080000
    asm("{disp32} mov       dword ptr [esi + 0x00000118], edi");             // 0x00760ff8    89be18010000
    asm("inc                ebx");                                           // 0x00760ffe    43
    asm("pop                edi");                                           // 0x00760fff    5f
    asm("{disp8} mov        word ptr [esi + 0x58], bx");                     // 0x00761000    66895e58
    asm("pop                esi");                                           // 0x00761004    5e
    asm("pop                ebp");                                           // 0x00761005    5d
    asm("mov                eax, 0x00000001");                               // 0x00761006    b801000000
    asm("pop                ebx");                                           // 0x0076100b    5b
    asm("ret                0x0008");                                        // 0x0076100c    c20800
    __builtin_unreachable();
}

bool32_t __fastcall HavingSexAtHome__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall StopHavingSexAtHome__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall WaitForDinner__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall GetPromiscuity__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761040    56
    asm("mov.s              esi, ecx");                                      // 0x00761041    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00761043    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00761045    ff5048
    asm("test               eax, eax");                                      // 0x00761048    85c0
    asm("{disp8} je         _jmp_addr_0x0076105b");                          // 0x0076104a    740f
    asm("mov                edx, dword ptr [esi]");                          // 0x0076104c    8b16
    asm("mov.s              ecx, esi");                                      // 0x0076104e    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00761050    ff5248
    asm("{disp32} fld       dword ptr [eax + 0x000005d4]");                  // 0x00761053    d980d4050000
    asm("pop                esi");                                           // 0x00761059    5e
    asm("ret");                                                              // 0x0076105a    c3
    asm("_jmp_addr_0x0076105b:");
    asm("{disp32} fld       dword ptr [_rdata_float0p5]");                   // 0x0076105b    d905b4a38a00
    asm("pop                esi");                                           // 0x00761061    5e
    asm("ret");                                                              // 0x00761062    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsAvailableForSex__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761070    56
    asm("mov.s              esi, ecx");                                      // 0x00761071    8bf1
    asm("call               ?GetVillagerAvailableState@Villager@@QAE?AW4VILLAGER_STATES@@XZ");     // 0x00761073    e8c80effff
    asm("test               al, 0x01");                                      // 0x00761078    a801
    asm("{disp8} je         _jmp_addr_0x00761085");                          // 0x0076107a    7409
    asm("mov.s              ecx, esi");                                      // 0x0076107c    8bce
    asm("call               ?IsSexuallyActive@Villager@@QAEIXZ");            // 0x0076107e    e80d000000
    asm("pop                esi");                                           // 0x00761083    5e
    asm("ret");                                                              // 0x00761084    c3
    asm("_jmp_addr_0x00761085:");
    asm("xor.s              eax, eax");                                      // 0x00761085    33c0
    asm("pop                esi");                                           // 0x00761087    5e
    asm("ret");                                                              // 0x00761088    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsSexuallyActive__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761090    56
    asm("mov.s              esi, ecx");                                      // 0x00761091    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00761093    8b06
    asm("push               edi");                                           // 0x00761095    57
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x00761096    8b7e28
    asm("call               dword ptr [eax + 0x8d0]");                       // 0x00761099    ff90d0080000
    asm("cmp                eax, dword ptr [edi + 0x00000228]");             // 0x0076109f    3b8728020000
    asm(".byte              0x72, 0x1d");// {disp8} jb _jmp_addr_0x007610c4  // 0x007610a5    721d
    asm("mov                edx, dword ptr [esi]");                          // 0x007610a7    8b16
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x007610a9    8b7e28
    asm("mov.s              ecx, esi");                                      // 0x007610ac    8bce
    asm("call               dword ptr [edx + 0x8d0]");                       // 0x007610ae    ff92d0080000
    asm("cmp                eax, dword ptr [edi + 0x0000022c]");             // 0x007610b4    3b872c020000
    asm("{disp8} jae        _jmp_addr_0x007610c4");                          // 0x007610ba    7308
    asm("pop                edi");                                           // 0x007610bc    5f
    asm("mov                eax, 0x00000001");                               // 0x007610bd    b801000000
    asm("pop                esi");                                           // 0x007610c2    5e
    asm("ret");                                                              // 0x007610c3    c3
    asm("_jmp_addr_0x007610c4:");
    asm("pop                edi");                                           // 0x007610c4    5f
    asm("xor.s              eax, eax");                                      // 0x007610c5    33c0
    asm("pop                esi");                                           // 0x007610c7    5e
    asm("ret");                                                              // 0x007610c8    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsPromiscious__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                           // 0x007610d0    51
    asm("push               esi");                                           // 0x007610d1    56
    asm("push               0x0000034d");                                    // 0x007610d2    684d030000
    asm("push               0x00c24464");                                    // 0x007610d7    686444c200
    asm("push               0x3f800000");                                    // 0x007610dc    680000803f
    asm("mov.s              esi, ecx");                                      // 0x007610e1    8bf1
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x007610e3    e848d4f7ff
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x007610e8    d95c2410
    asm("add                esp, 0x0c");                                     // 0x007610ec    83c40c
    asm("mov.s              ecx, esi");                                      // 0x007610ef    8bce
    asm("call               ?GetPromiscuity@Villager@@QAEIXZ");              // 0x007610f1    e84affffff
    asm("{disp8} fcomp      dword ptr [esp + 0x04]");                        // 0x007610f6    d85c2404
    asm("pop                esi");                                           // 0x007610fa    5e
    asm("fnstsw             ax");                                            // 0x007610fb    dfe0
    asm("test               ah, 0x41");                                      // 0x007610fd    f6c441
    asm("{disp8} jne        _jmp_addr_0x00761109");                          // 0x00761100    7507
    asm("mov                eax, 0x00000001");                               // 0x00761102    b801000000
    asm("pop                ecx");                                           // 0x00761107    59
    asm("ret");                                                              // 0x00761108    c3
    asm("_jmp_addr_0x00761109:");
    asm("xor.s              eax, eax");                                      // 0x00761109    33c0
    asm("pop                ecx");                                           // 0x0076110b    59
    asm("ret");                                                              // 0x0076110c    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FindAMateAtHome__8VillagerFv(struct Villager* this)
{
    asm("push               ebx");                                           // 0x00761110    53
    asm("push               esi");                                           // 0x00761111    56
    asm("push               edi");                                           // 0x00761112    57
    asm("mov.s              edi, ecx");                                      // 0x00761113    8bf9
    asm("call               ?IsPromiscious@Villager@@QAEIXZ");               // 0x00761115    e8b6ffffff
    asm("test               eax, eax");                                      // 0x0076111a    85c0
    asm("{disp8} je         _jmp_addr_0x0076116e");                          // 0x0076111c    7450
    asm("mov.s              ecx, edi");                                      // 0x0076111e    8bcf
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761120    e83b10ffff
    asm("{disp32} mov       esi, dword ptr [eax + 0x000000a0]");             // 0x00761125    8bb0a0000000
    asm("test               esi, esi");                                      // 0x0076112b    85f6
    asm("{disp8} je         _jmp_addr_0x0076116e");                          // 0x0076112d    743f
    asm("mov                bl, 0x04");                                      // 0x0076112f    b304
    asm("_jmp_addr_0x00761131:");
    asm("cmp.s              esi, edi");                                      // 0x00761131    3bf7
    asm("{disp8} je         _jmp_addr_0x00761164");                          // 0x00761133    742f
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00761135    8b4628
    asm("{disp8} mov        ecx, dword ptr [edi + 0x28]");                   // 0x00761138    8b4f28
    asm("{disp32} mov       edx, dword ptr [eax + 0x000001f8]");             // 0x0076113b    8b90f8010000
    asm("cmp                edx, dword ptr [ecx + 0x000001f8]");             // 0x00761141    3b91f8010000
    asm("{disp8} je         _jmp_addr_0x00761164");                          // 0x00761147    741b
    asm("test               byte ptr [esi + 0x000000e0], bl");               // 0x00761149    849ee0000000
    asm("{disp8} je         _jmp_addr_0x00761164");                          // 0x0076114f    7413
    asm("mov.s              ecx, esi");                                      // 0x00761151    8bce
    asm("call               ?IsAvailableForSex@Villager@@QAEIXZ");           // 0x00761153    e818ffffff
    asm("test               eax, eax");                                      // 0x00761158    85c0
    asm("{disp8} je         _jmp_addr_0x00761164");                          // 0x0076115a    7408
    asm("test               byte ptr [esi + 0x000000e0], bl");               // 0x0076115c    849ee0000000
    asm("{disp8} jne        _jmp_addr_0x00761174");                          // 0x00761162    7510
    asm("_jmp_addr_0x00761164:");
    asm("{disp32} mov       esi, dword ptr [esi + 0x000000e4]");             // 0x00761164    8bb6e4000000
    asm("test               esi, esi");                                      // 0x0076116a    85f6
    asm("{disp8} jne        _jmp_addr_0x00761131");                          // 0x0076116c    75c3
    asm("_jmp_addr_0x0076116e:");
    asm("pop                edi");                                           // 0x0076116e    5f
    asm("pop                esi");                                           // 0x0076116f    5e
    asm("xor.s              eax, eax");                                      // 0x00761170    33c0
    asm("pop                ebx");                                           // 0x00761172    5b
    asm("ret");                                                              // 0x00761173    c3
    asm("_jmp_addr_0x00761174:");
    asm("pop                edi");                                           // 0x00761174    5f
    asm("mov.s              eax, esi");                                      // 0x00761175    8bc6
    asm("pop                esi");                                           // 0x00761177    5e
    asm("pop                ebx");                                           // 0x00761178    5b
    asm("ret");                                                              // 0x00761179    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckForSexAtHome__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761180    56
    asm("mov.s              esi, ecx");                                      // 0x00761181    8bf1
    asm("test               byte ptr [esi + 0x000000e0], 0x04");             // 0x00761183    f686e000000004
    asm("{disp8} je         _jmp_addr_0x0076119e");                          // 0x0076118a    7412
    asm("call               ?IsSexuallyActive@Villager@@QAEIXZ");            // 0x0076118c    e8fffeffff
    asm("test               eax, eax");                                      // 0x00761191    85c0
    asm("{disp8} je         _jmp_addr_0x0076119e");                          // 0x00761193    7409
    asm("mov.s              ecx, esi");                                      // 0x00761195    8bce
    asm("call               ?StartHavingSexAtHome@Villager@@QAEIXZ");        // 0x00761197    e8e4fdffff
    asm("pop                esi");                                           // 0x0076119c    5e
    asm("ret");                                                              // 0x0076119d    c3
    asm("_jmp_addr_0x0076119e:");
    asm("xor.s              eax, eax");                                      // 0x0076119e    33c0
    asm("pop                esi");                                           // 0x007611a0    5e
    asm("ret");                                                              // 0x007611a1    c3
    __builtin_unreachable();
}

bool32_t __fastcall ShallIWaitForDinner__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x007611b0    56
    asm("mov.s              esi, ecx");                                      // 0x007611b1    8bf1
    asm("call               ?IsHungry@Villager@@QAE_NXZ");                   // 0x007611b3    e84814ffff
    asm("test               eax, eax");                                      // 0x007611b8    85c0
    asm("{disp8} je         _jmp_addr_0x007611c9");                          // 0x007611ba    740d
    asm("mov.s              ecx, esi");                                      // 0x007611bc    8bce
    asm("call               ?HousewifeAskForMeal@Villager@@QAEIXZ");         // 0x007611be    e83d140000
    asm("test               eax, eax");                                      // 0x007611c3    85c0
    asm("{disp8} jne        _jmp_addr_0x007611c9");                          // 0x007611c5    7502
    asm("pop                esi");                                           // 0x007611c7    5e
    asm("ret");                                                              // 0x007611c8    c3
    asm("_jmp_addr_0x007611c9:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x007611c9    8b4628
    asm("{disp32} mov       cx, word ptr [eax + 0x00000248]");               // 0x007611cc    668b8848020000
    asm("mov                edx, dword ptr [esi]");                          // 0x007611d3    8b16
    asm("{disp8} mov        word ptr [esi + 0x58], cx");                     // 0x007611d5    66894e58
    asm("push               0x00000080");                                    // 0x007611d9    6880000000
    asm("mov.s              ecx, esi");                                      // 0x007611de    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x007611e0    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x007611e6    b801000000
    asm("pop                esi");                                           // 0x007611eb    5e
    asm("ret");                                                              // 0x007611ec    c3
    __builtin_unreachable();
}

void __fastcall HomeDeleted__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x007611f0    56
    asm("mov.s              esi, ecx");                                      // 0x007611f1    8bf1
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x007611f3    e8680fffff
    asm("cmp                dword ptr [esi + 0x60], eax");                   // 0x007611f8    394660
    asm("{disp8} jne        _jmp_addr_0x00761204");                          // 0x007611fb    7507
    asm("{disp8} mov        dword ptr [esi + 0x60], 0x00000000");            // 0x007611fd    c7466000000000
    asm("_jmp_addr_0x00761204:");
    asm("mov.s              ecx, esi");                                      // 0x00761204    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761206    e8550fffff
    asm("test               eax, eax");                                      // 0x0076120b    85c0
    asm("mov.s              ecx, esi");                                      // 0x0076120d    8bce
    asm("{disp8} je         _jmp_addr_0x00761218");                          // 0x0076120f    7407
    asm("call               ?MakeHomeless@Villager@@QAE_NXZ");               // 0x00761211    e80a000000
    asm("pop                esi");                                           // 0x00761216    5e
    asm("ret");                                                              // 0x00761217    c3
    asm("_jmp_addr_0x00761218:");
    asm("call               ?TownDeleted@Villager@@QAEXXZ");                 // 0x00761218    e833f9feff
    asm("pop                esi");                                           // 0x0076121d    5e
    asm("ret");                                                              // 0x0076121e    c3
    __builtin_unreachable();
}

bool32_t __fastcall MakeHomeless__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761220    56
    asm("push               edi");                                           // 0x00761221    57
    asm("mov.s              esi, ecx");                                      // 0x00761222    8bf1
    asm("call               ?MakeHomelessNoStateChange@Villager@@QAE_NXZ");  // 0x00761224    e817000000
    asm("mov.s              edi, eax");                                      // 0x00761229    8bf8
    asm("mov                eax, dword ptr [esi]");                          // 0x0076122b    8b06
    asm("push               0x00000081");                                    // 0x0076122d    6881000000
    asm("mov.s              ecx, esi");                                      // 0x00761232    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00761234    ff90e8080000
    asm("mov.s              eax, edi");                                      // 0x0076123a    8bc7
    asm("pop                edi");                                           // 0x0076123c    5f
    asm("pop                esi");                                           // 0x0076123d    5e
    asm("ret");                                                              // 0x0076123e    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall MakeHomelessNoStateChange__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761240    56
    asm("mov.s              esi, ecx");                                      // 0x00761241    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00761243    8b06
    asm("push               edi");                                           // 0x00761245    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00761246    ff5048
    asm("mov.s              ecx, esi");                                      // 0x00761249    8bce
    asm("mov.s              edi, eax");                                      // 0x0076124b    8bf8
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x0076124d    e80e0fffff
    asm("test               eax, eax");                                      // 0x00761252    85c0
    asm("{disp8} je         _jmp_addr_0x00761276");                          // 0x00761254    7420
    asm("push               esi");                                           // 0x00761256    56
    asm("mov.s              ecx, esi");                                      // 0x00761257    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761259    e8020fffff
    asm("mov.s              ecx, eax");                                      // 0x0076125e    8bc8
    asm("call               ?RemoveAliveVillagerFromAbode@Abode@@QAEXPAVVillager@@@Z");  // 0x00761260    e8db30caff
    asm("push               0x0");                                           // 0x00761265    6a00
    asm("mov.s              ecx, esi");                                      // 0x00761267    8bce
    asm("call               ?SetAbode@Villager@@QAEXPAVAbode@@@Z");          // 0x00761269    e872fbfeff
    asm("push               edi");                                           // 0x0076126e    57
    asm("mov.s              ecx, esi");                                      // 0x0076126f    8bce
    asm("call               ?SetTown@Villager@@QAEXPAVTown@@@Z");            // 0x00761271    e8ba52ffff
    asm("_jmp_addr_0x00761276:");
    asm("test               edi, edi");                                      // 0x00761276    85ff
    asm("{disp8} jne        _jmp_addr_0x0076127f");                          // 0x00761278    7505
    asm("pop                edi");                                           // 0x0076127a    5f
    asm("xor.s              eax, eax");                                      // 0x0076127b    33c0
    asm("pop                esi");                                           // 0x0076127d    5e
    asm("ret");                                                              // 0x0076127e    c3
    asm("_jmp_addr_0x0076127f:");
    asm("push               esi");                                           // 0x0076127f    56
    asm("mov.s              ecx, edi");                                      // 0x00761280    8bcf
    asm("call               ?IsVillagerInHomelessList@Town@@QAE_NPAVVillager@@@Z");                          // 0x00761282    e8f9a2fdff
    asm("test               eax, eax");                                      // 0x00761287    85c0
    asm("{disp8} je         _jmp_addr_0x00761290");                          // 0x00761289    7405
    asm("pop                edi");                                           // 0x0076128b    5f
    asm("xor.s              eax, eax");                                      // 0x0076128c    33c0
    asm("pop                esi");                                           // 0x0076128e    5e
    asm("ret");                                                              // 0x0076128f    c3
    asm("_jmp_addr_0x00761290:");
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x00761290    8b0d5c19d000
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00205bfc]");             // 0x00761296    8b81fc5b2000
    asm("test               eax, eax");                                      // 0x0076129c    85c0
    asm("{disp32} lea       edx, dword ptr [ecx + 0x00205bfc]");             // 0x0076129e    8d91fc5b2000
    asm("{disp8} je         _jmp_addr_0x007612f9");                          // 0x007612a4    7453
    asm("_jmp_addr_0x007612a6:");
    asm("cmp.s              eax, esi");                                      // 0x007612a6    3bc6
    asm("{disp8} je         _jmp_addr_0x007612b6");                          // 0x007612a8    740c
    asm("{disp32} mov       eax, dword ptr [eax + 0x000000e4]");             // 0x007612aa    8b80e4000000
    asm("test               eax, eax");                                      // 0x007612b0    85c0
    asm("{disp8} jne        _jmp_addr_0x007612a6");                          // 0x007612b2    75f2
    asm("{disp8} jmp        _jmp_addr_0x007612f9");                          // 0x007612b4    eb43
    asm("_jmp_addr_0x007612b6:");
    asm("test               eax, eax");                                      // 0x007612b6    85c0
    asm("{disp8} je         _jmp_addr_0x007612f9");                          // 0x007612b8    743f
    asm("mov                eax, dword ptr [edx]");                          // 0x007612ba    8b02
    asm("cmp.s              eax, esi");                                      // 0x007612bc    3bc6
    asm("{disp8} jne        _jmp_addr_0x007612ca");                          // 0x007612be    750a
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000e4]");             // 0x007612c0    8b86e4000000
    asm("mov                dword ptr [edx], eax");                          // 0x007612c6    8902
    asm("{disp8} jmp        _jmp_addr_0x007612ec");                          // 0x007612c8    eb22
    asm("_jmp_addr_0x007612ca:");
    asm("test               eax, eax");                                      // 0x007612ca    85c0
    asm("{disp8} je         _jmp_addr_0x007612f9");                          // 0x007612cc    742b
    asm("_jmp_addr_0x007612ce:");
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000000e4]");             // 0x007612ce    8b88e4000000
    asm("cmp.s              ecx, esi");                                      // 0x007612d4    3bce
    asm("{disp8} je         _jmp_addr_0x007612e0");                          // 0x007612d6    7408
    asm("mov.s              eax, ecx");                                      // 0x007612d8    8bc1
    asm("test               eax, eax");                                      // 0x007612da    85c0
    asm("{disp8} jne        _jmp_addr_0x007612ce");                          // 0x007612dc    75f0
    asm("{disp8} jmp        _jmp_addr_0x007612f9");                          // 0x007612de    eb19
    asm("_jmp_addr_0x007612e0:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000e4]");             // 0x007612e0    8b8ee4000000
    asm("{disp32} mov       dword ptr [eax + 0x000000e4], ecx");             // 0x007612e6    8988e4000000
    asm("_jmp_addr_0x007612ec:");
    asm("dec                dword ptr [edx + 0x04]");                        // 0x007612ec    ff4a04
    asm("{disp32} mov       dword ptr [esi + 0x000000e4], 0x00000000");      // 0x007612ef    c786e400000000000000
    asm("_jmp_addr_0x007612f9:");
    asm("{disp32} mov       edx, dword ptr [edi + 0x00000768]");             // 0x007612f9    8b9768070000
    asm("{disp32} mov       dword ptr [esi + 0x000000e4], edx");             // 0x007612ff    8996e4000000
    asm("{disp32} mov       eax, dword ptr [edi + 0x0000076c]");             // 0x00761305    8b876c070000
    asm("inc                eax");                                           // 0x0076130b    40
    asm("{disp32} mov       dword ptr [edi + 0x00000768], esi");             // 0x0076130c    89b768070000
    asm("{disp32} mov       dword ptr [edi + 0x0000076c], eax");             // 0x00761312    89876c070000
    asm("pop                edi");                                           // 0x00761318    5f
    asm("mov                eax, 0x00000001");                               // 0x00761319    b801000000
    asm("pop                esi");                                           // 0x0076131e    5e
    asm("ret");                                                              // 0x0076131f    c3
    __builtin_unreachable();
}

bool32_t __fastcall HomelessStart__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761320    56
    asm("mov.s              esi, ecx");                                      // 0x00761321    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00761323    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00761325    ff5048
    asm("mov.s              ecx, esi");                                      // 0x00761328    8bce
    asm("call               ?CheckHungry@Villager@@QAE_NXZ");                // 0x0076132a    e891a9ffff
    asm("cmp                eax, 0x01");                                     // 0x0076132f    83f801
    asm("{disp8} je         _jmp_addr_0x00761352");                          // 0x00761332    741e
    asm("mov.s              ecx, esi");                                      // 0x00761334    8bce
    asm("call               ?CheckNeededForSomething@Villager@@QAE_NXZ");    // 0x00761336    e845ecffff
    asm("cmp                eax, 0x01");                                     // 0x0076133b    83f801
    asm("{disp8} je         _jmp_addr_0x00761352");                          // 0x0076133e    7412
    asm("mov.s              ecx, esi");                                      // 0x00761340    8bce
    asm("call               ?CheckHomelessMoveIntoAbode@Villager@@QAEIXZ");  // 0x00761342    e819000000
    asm("test               eax, eax");                                      // 0x00761347    85c0
    asm("{disp8} jne        _jmp_addr_0x00761352");                          // 0x00761349    7507
    asm("mov.s              ecx, esi");                                      // 0x0076134b    8bce
    asm("call               ?SetupNothingToDo@Villager@@QAEIXZ");            // 0x0076134d    e8fe27ffff
    asm("_jmp_addr_0x00761352:");
    asm("mov                eax, 0x00000001");                               // 0x00761352    b801000000
    asm("pop                esi");                                           // 0x00761357    5e
    asm("ret");                                                              // 0x00761358    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckHomelessMoveIntoAbode__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761360    56
    asm("mov.s              esi, ecx");                                      // 0x00761361    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00761363    8b06
    asm("push               edi");                                           // 0x00761365    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00761366    ff5048
    asm("mov.s              edi, eax");                                      // 0x00761369    8bf8
    asm("test               edi, edi");                                      // 0x0076136b    85ff
    asm("{disp8} je         _jmp_addr_0x007613e5");                          // 0x0076136d    7476
    asm("push               0x0");                                           // 0x0076136f    6a00
    asm("push               esi");                                           // 0x00761371    56
    asm("mov.s              ecx, edi");                                      // 0x00761372    8bcf
    asm("call               ?FindAbodeWithSpaceInTown@Town@@QAEPAVAbode@@PAVVillager@@M@Z");                          // 0x00761374    e8f79ffdff
    asm("test               eax, eax");                                      // 0x00761379    85c0
    asm("{disp8} je         _jmp_addr_0x007613e5");                          // 0x0076137b    7468
    asm("{disp32} mov       edx, dword ptr [edi + 0x00000768]");             // 0x0076137d    8b9768070000
    asm("cmp.s              edx, esi");                                      // 0x00761383    3bd6
    asm("push               ebx");                                           // 0x00761385    53
    asm("{disp8} jne        _jmp_addr_0x00761396");                          // 0x00761386    750e
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000e4]");             // 0x00761388    8b8ee4000000
    asm("{disp32} mov       dword ptr [edi + 0x00000768], ecx");             // 0x0076138e    898f68070000
    asm("{disp8} jmp        _jmp_addr_0x007613b8");                          // 0x00761394    eb22
    asm("_jmp_addr_0x00761396:");
    asm("test               edx, edx");                                      // 0x00761396    85d2
    asm("{disp8} je         _jmp_addr_0x007613c8");                          // 0x00761398    742e
    asm("_jmp_addr_0x0076139a:");
    asm("{disp32} mov       ebx, dword ptr [edx + 0x000000e4]");             // 0x0076139a    8b9ae4000000
    asm("cmp.s              ebx, esi");                                      // 0x007613a0    3bde
    asm("{disp8} je         _jmp_addr_0x007613ac");                          // 0x007613a2    7408
    asm("mov.s              edx, ebx");                                      // 0x007613a4    8bd3
    asm("test               edx, edx");                                      // 0x007613a6    85d2
    asm("{disp8} jne        _jmp_addr_0x0076139a");                          // 0x007613a8    75f0
    asm("{disp8} jmp        _jmp_addr_0x007613c8");                          // 0x007613aa    eb1c
    asm("_jmp_addr_0x007613ac:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000e4]");             // 0x007613ac    8b8ee4000000
    asm("{disp32} mov       dword ptr [edx + 0x000000e4], ecx");             // 0x007613b2    898ae4000000
    asm("_jmp_addr_0x007613b8:");
    asm("dec                dword ptr [edi + 0x0000076c]");                  // 0x007613b8    ff8f6c070000
    asm("{disp32} mov       dword ptr [esi + 0x000000e4], 0x00000000");      // 0x007613be    c786e400000000000000
    asm("_jmp_addr_0x007613c8:");
    asm("push               esi");                                           // 0x007613c8    56
    asm("mov.s              ecx, eax");                                      // 0x007613c9    8bc8
    asm("call               ?AddVillagerToAbode@Abode@@QAEXPAVVillager@@@Z");     // 0x007613cb    e8902ccaff
    asm("mov                edx, dword ptr [esi]");                          // 0x007613d0    8b16
    asm("push               0x24");                                          // 0x007613d2    6a24
    asm("mov.s              ecx, esi");                                      // 0x007613d4    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x007613d6    ff92e8080000
    asm("pop                ebx");                                           // 0x007613dc    5b
    asm("pop                edi");                                           // 0x007613dd    5f
    asm("mov                eax, 0x00000001");                               // 0x007613de    b801000000
    asm("pop                esi");                                           // 0x007613e3    5e
    asm("ret");                                                              // 0x007613e4    c3
    asm("_jmp_addr_0x007613e5:");
    asm("pop                edi");                                           // 0x007613e5    5f
    asm("xor.s              eax, eax");                                      // 0x007613e6    33c0
    asm("pop                esi");                                           // 0x007613e8    5e
    asm("ret");                                                              // 0x007613e9    c3
    __builtin_unreachable();
}

bool32_t __fastcall VillagerGossips__8VillagerFv(struct Villager* this)
{
    return 1;
}

void __fastcall SetupAfterTapOnAbode__8VillagerFR9MapCoords15VILLAGER_STATES(struct Villager* this, const void* edx, struct MapCoords* param_1, enum VILLAGER_STATES param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00761400    8b442408
    asm("push               esi");                                           // 0x00761404    56
    asm("mov.s              esi, ecx");                                      // 0x00761405    8bf1
    asm("push               eax");                                           // 0x00761407    50
    asm("push               0x2");                                           // 0x00761408    6a02
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000008c]");             // 0x0076140a    8d8e8c000000
    asm("call               @SetState__12LivingActionFUlUc@16");             // 0x00761410    e87bb8e8ff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x00761415    8b4c2408
    asm("push               0x000000c5");                                    // 0x00761419    68c5000000
    asm("push               ecx");                                           // 0x0076141e    51
    asm("mov.s              ecx, esi");                                      // 0x0076141f    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x00761421    e8da230000
    asm("or                 byte ptr [esi + 0xe0], 1");                      // 0x00761426    808ee000000001
    asm("pop                esi");                                           // 0x0076142d    5e
    asm("ret                0x0008");                                        // 0x0076142e    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall AfterTapOnAbode__8VillagerFv(struct Villager* this)
{
    asm("xor.s              eax, eax");                                      // 0x00761440    33c0
    asm("{disp32} mov       al, byte ptr [ecx + 0x0000008e]");               // 0x00761442    8a818e000000
    asm("push               0x1");                                           // 0x00761448    6a01
    asm("push               eax");                                           // 0x0076144a    50
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");        // 0x0076144b    e870b6e8ff
    asm("mov                eax, 0x00000001");                               // 0x00761450    b801000000
    asm("ret");                                                              // 0x00761455    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfyRelaxation__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761460    56
    asm("mov.s              esi, ecx");                                      // 0x00761461    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00761463    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00761465    ff5048
    asm("test               eax, eax");                                      // 0x00761468    85c0
    asm("{disp8} je         _jmp_addr_0x00761486");                          // 0x0076146a    741a
    asm("mov                edx, dword ptr [esi]");                          // 0x0076146c    8b16
    asm("mov.s              ecx, esi");                                      // 0x0076146e    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00761470    ff5248
    asm("mov                edx, dword ptr [eax]");                          // 0x00761473    8b10
    asm("push               esi");                                           // 0x00761475    56
    asm("mov.s              ecx, eax");                                      // 0x00761476    8bc8
    asm("call               dword ptr [edx + 0x50]");                        // 0x00761478    ff5250
    asm("test               eax, eax");                                      // 0x0076147b    85c0
    asm("{disp8} je         _jmp_addr_0x00761486");                          // 0x0076147d    7407
    asm("mov                eax, 0x00000001");                               // 0x0076147f    b801000000
    asm("pop                esi");                                           // 0x00761484    5e
    asm("ret");                                                              // 0x00761485    c3
    asm("_jmp_addr_0x00761486:");
    asm("xor.s              eax, eax");                                      // 0x00761486    33c0
    asm("pop                esi");                                           // 0x00761488    5e
    asm("ret");                                                              // 0x00761489    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfySleep__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761490    56
    asm("mov.s              esi, ecx");                                      // 0x00761491    8bf1
    asm("test               byte ptr [esi + 0x000000e0], 0x01");             // 0x00761493    f686e000000001
    asm("{disp8} je         _jmp_addr_0x007614b6");                          // 0x0076149a    741a
    asm("mov                eax, dword ptr [esi]");                          // 0x0076149c    8b06
    asm("push               edi");                                           // 0x0076149e    57
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x0076149f    8b7e28
    asm("call               dword ptr [eax + 0x11c]");                       // 0x007614a2    ff901c010000
    asm("{disp32} fcomp     dword ptr [edi + 0x0000035c]");                  // 0x007614a8    d89f5c030000
    asm("pop                edi");                                           // 0x007614ae    5f
    asm("fnstsw             ax");                                            // 0x007614af    dfe0
    asm("test               ah, 0x01");                                      // 0x007614b1    f6c401
    asm("{disp8} je         _jmp_addr_0x00761509");                          // 0x007614b4    7453
    asm("_jmp_addr_0x007614b6:");
    asm("test               byte ptr [esi + 0x000000e0], 0x04");             // 0x007614b6    f686e000000004
    asm("mov.s              ecx, esi");                                      // 0x007614bd    8bce
    asm("{disp8} je         _jmp_addr_0x007614dd");                          // 0x007614bf    741c
    asm("call               ?CheckWhenGoingToBed@Villager@@QAEIXZ");         // 0x007614c1    e89af6ffff
    asm("test               eax, eax");                                      // 0x007614c6    85c0
    asm("{disp8} je         _jmp_addr_0x007614d6");                          // 0x007614c8    740c
    asm("mov                edx, dword ptr [esi]");                          // 0x007614ca    8b16
    asm("push               0x77");                                          // 0x007614cc    6a77
    asm("mov.s              ecx, esi");                                      // 0x007614ce    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x007614d0    ff92e8080000
    asm("_jmp_addr_0x007614d6:");
    asm("mov                eax, 0x00000001");                               // 0x007614d6    b801000000
    asm("pop                esi");                                           // 0x007614db    5e
    asm("ret");                                                              // 0x007614dc    c3
    asm("_jmp_addr_0x007614dd:");
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x007614dd    e87e0cffff
    asm("test               eax, eax");                                      // 0x007614e2    85c0
    asm("{disp8} je         _jmp_addr_0x007614f9");                          // 0x007614e4    7413
    asm("mov                eax, dword ptr [esi]");                          // 0x007614e6    8b06
    asm("push               0x24");                                          // 0x007614e8    6a24
    asm("mov.s              ecx, esi");                                      // 0x007614ea    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x007614ec    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x007614f2    b801000000
    asm("pop                esi");                                           // 0x007614f7    5e
    asm("ret");                                                              // 0x007614f8    c3
    asm("_jmp_addr_0x007614f9:");
    asm("cmp                byte ptr [esi + 0x0000008c], -0x12");            // 0x007614f9    80be8c000000ee
    asm("{disp8} jne        _jmp_addr_0x00761509");                          // 0x00761500    7507
    asm("mov                eax, 0x00000001");                               // 0x00761502    b801000000
    asm("pop                esi");                                           // 0x00761507    5e
    asm("ret");                                                              // 0x00761508    c3
    asm("_jmp_addr_0x00761509:");
    asm("xor.s              eax, eax");                                      // 0x00761509    33c0
    asm("pop                esi");                                           // 0x0076150b    5e
    asm("ret");                                                              // 0x0076150c    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ArtifactDance__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x18");                                     // 0x00761510    83ec18
    asm("push               esi");                                           // 0x00761513    56
    asm("xor.s              eax, eax");                                      // 0x00761514    33c0
    asm("mov.s              esi, ecx");                                      // 0x00761516    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000d8]");             // 0x00761518    8b8ed8000000
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x0076151e    89442404
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x00761522    89442408
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x00761526    8944240c
    asm("{disp8} mov        edx, dword ptr [ecx + 0x14]");                   // 0x0076152a    8b5114
    asm("push               edi");                                           // 0x0076152d    57
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                   // 0x0076152e    8d442408
    asm("push               eax");                                           // 0x00761532    50
    asm("add                edx, 0x14");                                     // 0x00761533    83c214
    asm("push               edx");                                           // 0x00761536    52
    asm("mov.s              ecx, esi");                                      // 0x00761537    8bce
    asm("call               ?CalculateDancePosition@Living@@QAE_NABUMapCoords@@PAU2@@Z");                          // 0x00761539    e882e4e8ff
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                   // 0x0076153e    8d442408
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                   // 0x00761542    8d7e14
    asm("push               eax");                                           // 0x00761545    50
    asm("mov.s              ecx, edi");                                      // 0x00761546    8bcf
    asm("call               ?__ne@MapCoords@@QBE_NABV1@@Z");                 // 0x00761548    e86341eaff
    asm("test               eax, eax");                                      // 0x0076154d    85c0
    asm("{disp8} je         _jmp_addr_0x0076158f");                          // 0x0076154f    743e
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000d8]");             // 0x00761551    8b8ed8000000
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x14]");                   // 0x00761557    8b4914
    asm("mov                edx, dword ptr [ecx]");                          // 0x0076155a    8b11
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x0076155c    8d442414
    asm("push               eax");                                           // 0x00761560    50
    asm("call               dword ptr [edx + 0x104]");                       // 0x00761561    ff9204010000
    asm("push               eax");                                           // 0x00761567    50
    asm("mov.s              ecx, edi");                                      // 0x00761568    8bcf
    asm("call               @__eq__9MapCoordsCFRC9MapCoords@12");            // 0x0076156a    e8f140eaff
    asm("test               eax, eax");                                      // 0x0076156f    85c0
    asm("{disp8} je         _jmp_addr_0x0076158f");                          // 0x00761571    741c
    asm("push               0x000000e6");                                    // 0x00761573    68e6000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x00761578    8d4c240c
    asm("push               ecx");                                           // 0x0076157c    51
    asm("mov.s              ecx, esi");                                      // 0x0076157d    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x0076157f    e87c220000
    asm("pop                edi");                                           // 0x00761584    5f
    asm("mov                eax, 0x00000001");                               // 0x00761585    b801000000
    asm("pop                esi");                                           // 0x0076158a    5e
    asm("add                esp, 0x18");                                     // 0x0076158b    83c418
    asm("ret");                                                              // 0x0076158e    c3
    asm("_jmp_addr_0x0076158f:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000d8]");             // 0x0076158f    8b86d8000000
    asm("{disp8} mov        edx, dword ptr [eax + 0x5c]");                   // 0x00761595    8b505c
    asm("{disp8} mov        eax, dword ptr [eax + 0x18]");                   // 0x00761598    8b4018
    asm("push               edx");                                           // 0x0076159b    52
    asm("push               0x000000e6");                                    // 0x0076159c    68e6000000
    asm("add                eax, 0x14");                                     // 0x007615a1    83c014
    asm("push               eax");                                           // 0x007615a4    50
    asm("mov.s              ecx, esi");                                      // 0x007615a5    8bce
    asm("call               ?PerformDance@Living@@QAEIABUMapCoords@@EK@Z");  // 0x007615a7    e844e4e8ff
    asm("pop                edi");                                           // 0x007615ac    5f
    asm("mov                eax, 0x00000001");                               // 0x007615ad    b801000000
    asm("pop                esi");                                           // 0x007615b2    5e
    asm("add                esp, 0x18");                                     // 0x007615b3    83c418
    asm("ret");                                                              // 0x007615b6    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall WaitForArtifactDance__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x20");                                     // 0x007615c0    83ec20
    asm("push               ebx");                                           // 0x007615c3    53
    asm("push               ebp");                                           // 0x007615c4    55
    asm("push               esi");                                           // 0x007615c5    56
    asm("mov.s              esi, ecx");                                      // 0x007615c6    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000d8]");             // 0x007615c8    8b86d8000000
    asm("test               eax, eax");                                      // 0x007615ce    85c0
    asm("push               edi");                                           // 0x007615d0    57
    asm("{disp32} je        _jmp_addr_0x007617e4");                          // 0x007615d1    0f840d020000
    asm("{disp8} mov        ecx, dword ptr [eax + 0x14]");                   // 0x007615d7    8b4814
    asm("test               ecx, ecx");                                      // 0x007615da    85c9
    asm("{disp32} je        _jmp_addr_0x007617e4");                          // 0x007615dc    0f8402020000
    asm("mov                eax, dword ptr [esi]");                          // 0x007615e2    8b06
    asm("mov.s              ecx, esi");                                      // 0x007615e4    8bce
    asm("call               dword ptr [eax + 0x64]");                        // 0x007615e6    ff5064
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x1dc98]");             // 0x007615e9    d80d986c8c00
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000d8]");             // 0x007615ef    8b86d8000000
    asm("{disp8} mov        ecx, dword ptr [eax + 0x14]");                   // 0x007615f5    8b4814
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                   // 0x007615f8    8d7e14
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x007615fb    d95c2410
    asm("push               edi");                                           // 0x007615ff    57
    asm("add                ecx, 0x14");                                     // 0x00761600    83c114
    asm("call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2");                          // 0x00761603    e8c846eaff
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x261c0]");             // 0x00761608    d81dc0f18c00
    asm("fnstsw             ax");                                            // 0x0076160e    dfe0
    asm("test               ah, 0x41");                                      // 0x00761610    f6c441
    asm("{disp32} jne       _jmp_addr_0x00761703");                          // 0x00761613    0f85ea000000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000d8]");             // 0x00761619    8b8ed8000000
    asm("{disp8} mov        edx, dword ptr [ecx + 0x14]");                   // 0x0076161f    8b5114
    asm("add                edx, 0x14");                                     // 0x00761622    83c214
    asm("mov                eax, dword ptr [edx]");                          // 0x00761625    8b02
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x00761627    89442418
    asm("{disp8} mov        ecx, dword ptr [edx + 0x04]");                   // 0x0076162b    8b4a04
    asm("push               0x00000453");                                    // 0x0076162e    6853040000
    asm("{disp8} mov        dword ptr [esp + 0x20], ecx");                   // 0x00761633    894c2420
    asm("{disp8} mov        edx, dword ptr [edx + 0x08]");                   // 0x00761637    8b5208
    asm("push               0x00c24464");                                    // 0x0076163a    686444c200
    asm("push               0x3f490fdb");                                    // 0x0076163f    68db0f493f
    asm("{disp8} mov        dword ptr [esp + 0x2c], edx");                   // 0x00761644    8954242c
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00761648    e8e3cef7ff
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x0076164d    8d442424
    asm("push               edi");                                           // 0x00761651    57
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x00761652    d95c2424
    asm("push               eax");                                           // 0x00761656    50
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00761657    e814bcfeff
    asm("{disp8} fadd       dword ptr [esp + 0x28]");                        // 0x0076165c    d8442428
    asm("push               0x00000454");                                    // 0x00761660    6854040000
    asm("push               0x00c24464");                                    // 0x00761665    686444c200
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x1dca0]");             // 0x0076166a    d825a06c8c00
    asm("push               0x41400000");                                    // 0x00761670    6800004041
    asm("{disp8} fstp       dword ptr [esp + 0x34]");                        // 0x00761675    d95c2434
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00761679    e8b2cef7ff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x34]");                   // 0x0076167e    8b4c2434
    asm("add                esp, 0x1c");                                     // 0x00761682    83c41c
    asm("fstp               dword ptr [esp]");                               // 0x00761685    d91c24
    asm("push               ecx");                                           // 0x00761688    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x2c]");                   // 0x00761689    8d54242c
    asm("push               edx");                                           // 0x0076168d    52
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x0076168e    e8edbefeff
    asm("add                esp, 0x0c");                                     // 0x00761693    83c40c
    asm("push               eax");                                           // 0x00761696    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x00761697    8d4c241c
    asm("call               @__apl__9MapCoordsFRC9MapCoords@12");            // 0x0076169b    e8703deaff
    asm("push               esi");                                           // 0x007616a0    56
    asm("sub                esp, 0x10");                                     // 0x007616a1    83ec10
    asm("mov.s              ebx, esp");                                      // 0x007616a4    8bdc
    asm("mov                eax, 0x00761bb0");                               // 0x007616a6    b8b01b7600
    asm("mov                dword ptr [ebx], eax");                          // 0x007616ab    8903
    asm("{disp8} mov        eax, dword ptr [esp + 0x24]");                   // 0x007616ad    8b442424
    asm("push               eax");                                           // 0x007616b1    50
    asm("xor.s              ecx, ecx");                                      // 0x007616b2    33c9
    asm("{disp8} mov        dword ptr [ebx + 0x04], ecx");                   // 0x007616b4    894b04
    asm("push               0x3f800000");                                    // 0x007616b7    680000803f
    asm("xor.s              edx, edx");                                      // 0x007616bc    33d2
    asm("{disp8} mov        dword ptr [ebx + 0x08], edx");                   // 0x007616be    895308
    asm("push               0x41400000");                                    // 0x007616c1    6800004041
    asm("{disp8} lea        ecx, dword ptr [esp + 0x38]");                   // 0x007616c6    8d4c2438
    asm("push               ecx");                                           // 0x007616ca    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x3c]");                   // 0x007616cb    8d54243c
    asm("xor.s              edi, edi");                                      // 0x007616cf    33ff
    asm("push               edx");                                           // 0x007616d1    52
    asm("{disp8} mov        dword ptr [ebx + 0x0c], edi");                   // 0x007616d2    897b0c
    asm("call               ?FindClearArea@Town@@SA_NAAUMapCoords@@0MMMP8Object@@AEHPBX1@ZPAV3@@Z");                             // 0x007616d5    e816fcfdff
    asm("add                esp, 0x28");                                     // 0x007616da    83c428
    asm("test               eax, eax");                                      // 0x007616dd    85c0
    asm("{disp32} je        _jmp_addr_0x007617f3");                          // 0x007616df    0f840e010000
    asm("push               0x000000fd");                                    // 0x007616e5    68fd000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                   // 0x007616ea    8d44241c
    asm("push               eax");                                           // 0x007616ee    50
    asm("mov.s              ecx, esi");                                      // 0x007616ef    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x007616f1    e89a11e9ff
    asm("mov                eax, 0x00000001");                               // 0x007616f6    b801000000
    asm("pop                edi");                                           // 0x007616fb    5f
    asm("pop                esi");                                           // 0x007616fc    5e
    asm("pop                ebp");                                           // 0x007616fd    5d
    asm("pop                ebx");                                           // 0x007616fe    5b
    asm("add                esp, 0x20");                                     // 0x007616ff    83c420
    asm("ret");                                                              // 0x00761702    c3
    asm("_jmp_addr_0x00761703:");
    asm("cmp                word ptr [esi + 0x58], 0x00");                   // 0x00761703    66837e5800
    asm("{disp32} jne       _jmp_addr_0x007617ad");                          // 0x00761708    0f859f000000
    asm("push               esi");                                           // 0x0076170e    56
    asm("sub                esp, 0x10");                                     // 0x0076170f    83ec10
    asm("mov.s              ebp, esp");                                      // 0x00761712    8bec
    asm("mov                eax, 0x00761bb0");                               // 0x00761714    b8b01b7600
    asm("{disp8} mov        dword ptr [ebp + 0x00], eax");                   // 0x00761719    894500
    asm("xor.s              ecx, ecx");                                      // 0x0076171c    33c9
    asm("{disp8} mov        dword ptr [ebp + 0x04], ecx");                   // 0x0076171e    894d04
    asm("xor.s              edx, edx");                                      // 0x00761721    33d2
    asm("xor.s              ebx, ebx");                                      // 0x00761723    33db
    asm("{disp8} mov        dword ptr [ebp + 0x08], edx");                   // 0x00761725    895508
    asm("{disp8} mov        dword ptr [ebp + 0x0c], ebx");                   // 0x00761728    895d0c
    asm("{disp8} mov        ebx, dword ptr [esp + 0x24]");                   // 0x0076172b    8b5c2424
    asm("push               ebx");                                           // 0x0076172f    53
    asm("push               edi");                                           // 0x00761730    57
    asm("call               ?CheckForClearArea@Town@@SA_NAAUMapCoords@@MP8Object@@AEHPBX1@ZPAV3@@Z");                   // 0x00761731    e89afcfdff
    asm("add                esp, 0x1c");                                     // 0x00761736    83c41c
    asm("test               eax, eax");                                      // 0x00761739    85c0
    asm("{disp8} jne        _jmp_addr_0x007617ad");                          // 0x0076173b    7570
    asm("{disp8} mov        eax, dword ptr [edi + 0x08]");                   // 0x0076173d    8b4708
    asm("mov                ecx, dword ptr [edi]");                          // 0x00761740    8b0f
    asm("{disp8} mov        edx, dword ptr [edi + 0x04]");                   // 0x00761742    8b5704
    asm("push               esi");                                           // 0x00761745    56
    asm("sub                esp, 0x10");                                     // 0x00761746    83ec10
    asm("mov.s              ebp, esp");                                      // 0x00761749    8bec
    asm("{disp8} mov        dword ptr [esp + 0x34], eax");                   // 0x0076174b    89442434
    asm("push               ebx");                                           // 0x0076174f    53
    asm("{disp8} mov        dword ptr [esp + 0x30], ecx");                   // 0x00761750    894c2430
    asm("mov                eax, 0x00761bb0");                               // 0x00761754    b8b01b7600
    asm("{disp8} mov        dword ptr [ebp + 0x00], eax");                   // 0x00761759    894500
    asm("xor.s              ecx, ecx");                                      // 0x0076175c    33c9
    asm("{disp8} mov        dword ptr [esp + 0x34], edx");                   // 0x0076175e    89542434
    asm("{disp8} mov        dword ptr [ebp + 0x04], ecx");                   // 0x00761762    894d04
    asm("push               0x3f800000");                                    // 0x00761765    680000803f
    asm("xor.s              edx, edx");                                      // 0x0076176a    33d2
    asm("{disp8} mov        dword ptr [ebp + 0x08], edx");                   // 0x0076176c    895508
    asm("push               0x41400000");                                    // 0x0076176f    6800004041
    asm("{disp8} lea        ecx, dword ptr [esp + 0x38]");                   // 0x00761774    8d4c2438
    asm("push               ecx");                                           // 0x00761778    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x3c]");                   // 0x00761779    8d54243c
    asm("xor.s              edi, edi");                                      // 0x0076177d    33ff
    asm("push               edx");                                           // 0x0076177f    52
    asm("{disp8} mov        dword ptr [ebp + 0x0c], edi");                   // 0x00761780    897d0c
    asm("call               ?FindClearArea@Town@@SA_NAAUMapCoords@@0MMMP8Object@@AEHPBX1@ZPAV3@@Z");                             // 0x00761783    e868fbfdff
    asm("add                esp, 0x28");                                     // 0x00761788    83c428
    asm("test               eax, eax");                                      // 0x0076178b    85c0
    asm("{disp8} je         _jmp_addr_0x007617f3");                          // 0x0076178d    7464
    asm("push               0x000000fd");                                    // 0x0076178f    68fd000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                   // 0x00761794    8d44241c
    asm("push               eax");                                           // 0x00761798    50
    asm("mov.s              ecx, esi");                                      // 0x00761799    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x0076179b    e8f010e9ff
    asm("mov                eax, 0x00000001");                               // 0x007617a0    b801000000
    asm("pop                edi");                                           // 0x007617a5    5f
    asm("pop                esi");                                           // 0x007617a6    5e
    asm("pop                ebp");                                           // 0x007617a7    5d
    asm("pop                ebx");                                           // 0x007617a8    5b
    asm("add                esp, 0x20");                                     // 0x007617a9    83c420
    asm("ret");                                                              // 0x007617ac    c3
    asm("_jmp_addr_0x007617ad:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x007617ad    8b4e28
    asm("{disp32} mov       dx, word ptr [ecx + 0x00000398]");               // 0x007617b0    668b9198030000
    asm("xor.s              eax, eax");                                      // 0x007617b7    33c0
    asm("{disp8} mov        ax, word ptr [esi + 0x58]");                     // 0x007617b9    668b4658
    asm("cmp.s              ax, dx");                                        // 0x007617bd    663bc2
    asm("{disp8} lea        ecx, dword ptr [eax + 0x01]");                   // 0x007617c0    8d4801
    asm("{disp8} mov        word ptr [esi + 0x58], cx");                     // 0x007617c3    66894e58
    asm("{disp8} jl         _jmp_addr_0x007617f3");                          // 0x007617c7    7c2a
    asm("{disp32} mov       edx, dword ptr [esi + 0x000000d8]");             // 0x007617c9    8b96d8000000
    asm("{disp8} mov        ecx, dword ptr [edx + 0x14]");                   // 0x007617cf    8b4a14
    asm("call               ?StartDance@Dance@@QAEXXZ");                     // 0x007617d2    e869a3daff
    asm("mov                eax, 0x00000001");                               // 0x007617d7    b801000000
    asm("pop                edi");                                           // 0x007617dc    5f
    asm("pop                esi");                                           // 0x007617dd    5e
    asm("pop                ebp");                                           // 0x007617de    5d
    asm("pop                ebx");                                           // 0x007617df    5b
    asm("add                esp, 0x20");                                     // 0x007617e0    83c420
    asm("ret");                                                              // 0x007617e3    c3
    asm("_jmp_addr_0x007617e4:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007617e4    8b06
    asm("push               0x000000a3");                                    // 0x007617e6    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x007617eb    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x007617ed    ff90e8080000
    asm("_jmp_addr_0x007617f3:");
    asm("pop                edi");                                           // 0x007617f3    5f
    asm("pop                esi");                                           // 0x007617f4    5e
    asm("pop                ebp");                                           // 0x007617f5    5d
    asm("mov                eax, 0x00000001");                               // 0x007617f6    b801000000
    asm("pop                ebx");                                           // 0x007617fb    5b
    asm("add                esp, 0x20");                                     // 0x007617fc    83c420
    asm("ret");                                                              // 0x007617ff    c3
    __builtin_unreachable();
}

bool32_t __fastcall EnterWaitForArtifactDance__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2)
{
    asm("{disp8} mov        word ptr [ecx + 0x58], 0x0000");                 // 0x00761800    66c741580000
    asm("mov                eax, 0x00000001");                               // 0x00761806    b801000000
    asm("ret                0x0008");                                        // 0x0076180b    c20800
    __builtin_unreachable();
}

bool32_t __fastcall GoHomeAndChange__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00761810    83ec0c
    asm("push               esi");                                           // 0x00761813    56
    asm("push               edi");                                           // 0x00761814    57
    asm("mov.s              esi, ecx");                                      // 0x00761815    8bf1
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761817    e84409ffff
    asm("test               eax, eax");                                      // 0x0076181c    85c0
    asm("{disp8} je         _jmp_addr_0x0076186d");                          // 0x0076181e    744d
    asm("mov                edx, dword ptr [eax]");                          // 0x00761820    8b10
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x00761822    8d4c2408
    asm("push               ecx");                                           // 0x00761826    51
    asm("mov.s              ecx, eax");                                      // 0x00761827    8bc8
    asm("call               dword ptr [edx + 0x104]");                       // 0x00761829    ff9204010000
    asm("mov                edx, dword ptr [esi]");                          // 0x0076182f    8b16
    asm("mov.s              edi, eax");                                      // 0x00761831    8bf8
    asm("push               0x0");                                           // 0x00761833    6a00
    asm("push               edi");                                           // 0x00761835    57
    asm("mov.s              ecx, esi");                                      // 0x00761836    8bce
    asm("call               dword ptr [edx + 0x85c]");                       // 0x00761838    ff925c080000
    asm("test               eax, eax");                                      // 0x0076183e    85c0
    asm("{disp8} jne        _jmp_addr_0x0076185a");                          // 0x00761840    7518
    asm("push               0x000000ea");                                    // 0x00761842    68ea000000
    asm("push               edi");                                           // 0x00761847    57
    asm("mov.s              ecx, esi");                                      // 0x00761848    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x0076184a    e84110e9ff
    asm("pop                edi");                                           // 0x0076184f    5f
    asm("mov                eax, 0x00000001");                               // 0x00761850    b801000000
    asm("pop                esi");                                           // 0x00761855    5e
    asm("add                esp, 0x0c");                                     // 0x00761856    83c40c
    asm("ret");                                                              // 0x00761859    c3
    asm("_jmp_addr_0x0076185a:");
    asm("{disp32} mov       al, byte ptr [esi + 0x000000e0]");               // 0x0076185a    8a86e0000000
    asm("and                al, 0x04");                                      // 0x00761860    2404
    asm("neg                al");                                            // 0x00761862    f6d8
    asm("sbb.s              eax, eax");                                      // 0x00761864    1bc0
    asm("neg                eax");                                           // 0x00761866    f7d8
    asm("add                eax, 0x25");                                     // 0x00761868    83c025
    asm("{disp8} jmp        _jmp_addr_0x00761872");                          // 0x0076186b    eb05
    asm("_jmp_addr_0x0076186d:");
    asm("mov                eax, 0x000000a3");                               // 0x0076186d    b8a3000000
    asm("_jmp_addr_0x00761872:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00761872    8b16
    asm("push               eax");                                           // 0x00761874    50
    asm("mov.s              ecx, esi");                                      // 0x00761875    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00761877    ff92e8080000
    asm("mov                eax, dword ptr [esi]");                          // 0x0076187d    8b06
    asm("mov.s              ecx, esi");                                      // 0x0076187f    8bce
    asm("call               dword ptr [eax + 0x120]");                       // 0x00761881    ff9020010000
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x26000]");             // 0x00761887    d81d00f08c00
    asm("fnstsw             ax");                                            // 0x0076188d    dfe0
    asm("test               ah, 0x01");                                      // 0x0076188f    f6c401
    asm("{disp8} je         _jmp_addr_0x007618a6");                          // 0x00761892    7412
    asm("mov                edx, dword ptr [esi]");                          // 0x00761894    8b16
    asm("mov.s              ecx, esi");                                      // 0x00761896    8bce
    asm("call               dword ptr [edx + 0x8d0]");                       // 0x00761898    ff92d0080000
    asm("push               eax");                                           // 0x0076189e    50
    asm("mov.s              ecx, esi");                                      // 0x0076189f    8bce
    asm("call               ?SetScaleForAge@Villager@@QAEXK@Z");             // 0x007618a1    e8ea11ffff
    asm("_jmp_addr_0x007618a6:");
    asm("pop                edi");                                           // 0x007618a6    5f
    asm("mov                eax, 0x00000001");                               // 0x007618a7    b801000000
    asm("pop                esi");                                           // 0x007618ac    5e
    asm("add                esp, 0x0c");                                     // 0x007618ad    83c40c
    asm("ret");                                                              // 0x007618b0    c3
    __builtin_unreachable();
}

bool32_t __fastcall ChangeTribeIfRequired__8VillagerF10TRIBE_TYPEi(struct Villager* this, const void* edx, enum TRIBE_TYPE param_1, int param_2)
{
    asm("sub                esp, 0x08");                                     // 0x007618c0    83ec08
    asm("push               ebx");                                           // 0x007618c3    53
    asm("push               esi");                                           // 0x007618c4    56
    asm("mov.s              esi, ecx");                                      // 0x007618c5    8bf1
    asm("push               edi");                                           // 0x007618c7    57
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x007618c8    8b7e28
    asm("{disp32} mov       eax, dword ptr [edi + 0x00000388]");             // 0x007618cb    8b8788030000
    asm("test               eax, eax");                                      // 0x007618d1    85c0
    asm("{disp32} jne       _jmp_addr_0x00761969");                          // 0x007618d3    0f8590000000
    asm("{disp32} mov       eax, dword ptr [edi + 0x000001fc]");             // 0x007618d9    8b87fc010000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x007618df    8b4c2418
    asm("push               eax");                                           // 0x007618e3    50
    asm("push               ecx");                                           // 0x007618e4    51
    asm("call               ?Find@GVillagerInfo@@SAPAV1@W4TRIBE_TYPE@@W4VILLAGER_NUMBER@@@Z");               // 0x007618e5    e8660dffff
    asm("mov                edx, dword ptr [esi]");                          // 0x007618ea    8b16
    asm("add                esp, 0x08");                                     // 0x007618ec    83c408
    asm("mov.s              ecx, esi");                                      // 0x007618ef    8bce
    asm("mov.s              ebx, eax");                                      // 0x007618f1    8bd8
    asm("call               dword ptr [edx + 0x48]");                        // 0x007618f3    ff5248
    asm("test               eax, eax");                                      // 0x007618f6    85c0
    asm("{disp8} je         _jmp_addr_0x00761942");                          // 0x007618f8    7448
    asm("{disp32} mov       eax, dword ptr [ebx + 0x000002d8]");             // 0x007618fa    8b83d8020000
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000002d8]");             // 0x00761900    8b8fd8020000
    asm("mov                edx, dword ptr [esi]");                          // 0x00761906    8b16
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x00761908    8944240c
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x0076190c    c744241000000000
    asm("{disp8} fild       qword ptr [esp + 0x0c]");                        // 0x00761914    df6c240c
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x00761918    894c240c
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x0076191c    c744241000000000
    asm("mov.s              ecx, esi");                                      // 0x00761924    8bce
    asm("{disp8} fisub      dword ptr [esp + 0x0c]");                        // 0x00761926    da64240c
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x0076192a    d95c2418
    asm("call               dword ptr [edx + 0x48]");                        // 0x0076192e    ff5248
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00761931    d9442418
    asm("{disp32} fadd      dword ptr [eax + 0x000006f4]");                  // 0x00761935    d880f4060000
    asm("add                eax, 0x000006f4");                               // 0x0076193b    05f4060000
    asm("fstp               dword ptr [eax]");                               // 0x00761940    d918
    asm("_jmp_addr_0x00761942:");
    asm("push               ebx");                                           // 0x00761942    53
    asm("mov.s              ecx, esi");                                      // 0x00761943    8bce
    asm("call               ?ChangeInfo@Villager@@QAEIPBVGVillagerInfo@@@Z");// 0x00761945    e8b6000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                   // 0x0076194a    8b44241c
    asm("test               eax, eax");                                      // 0x0076194e    85c0
    asm("{disp8} je         _jmp_addr_0x00761969");                          // 0x00761950    7417
    asm("push               ecx");                                           // 0x00761952    51
    asm("mov.s              eax, esp");                                      // 0x00761953    8bc4
    asm("push               0x3f800000");                                    // 0x00761955    680000803f
    asm("push               0x1");                                           // 0x0076195a    6a01
    asm("mov.s              ecx, esi");                                      // 0x0076195c    8bce
    asm("mov                dword ptr [eax], 0xffffffff");                   // 0x0076195e    c700ffffffff
    asm("call               ?CreateSmokyStuff@Object@@QAEIJMULH3DColor@@@Z");// 0x00761964    e8a78eedff
    asm("_jmp_addr_0x00761969:");
    asm("pop                edi");                                           // 0x00761969    5f
    asm("pop                esi");                                           // 0x0076196a    5e
    asm("pop                ebx");                                           // 0x0076196b    5b
    asm("add                esp, 0x08");                                     // 0x0076196c    83c408
    asm("ret                0x0008");                                        // 0x0076196f    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ExitGoHomeAndChange__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               esi");                                           // 0x00761980    56
    asm("push               edi");                                           // 0x00761981    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x00761982    8b7c240c
    asm("mov.s              esi, ecx");                                      // 0x00761986    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00761988    8b06
    asm("and                edi, 0x000000ff");                               // 0x0076198a    81e7ff000000
    asm("push               edi");                                           // 0x00761990    57
    asm("call               dword ptr [eax + 0x96c]");                       // 0x00761991    ff906c090000
    asm("test               eax, eax");                                      // 0x00761997    85c0
    asm("{disp8} jne        _jmp_addr_0x007619d9");                          // 0x00761999    753e
    asm("mov                edx, dword ptr [esi]");                          // 0x0076199b    8b16
    asm("mov.s              ecx, esi");                                      // 0x0076199d    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0076199f    ff5248
    asm("test               eax, eax");                                      // 0x007619a2    85c0
    asm("{disp8} je         _jmp_addr_0x007619ae");                          // 0x007619a4    7408
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000005b8]");             // 0x007619a6    8b88b8050000
    asm("{disp8} jmp        _jmp_addr_0x007619b7");                          // 0x007619ac    eb09
    asm("_jmp_addr_0x007619ae:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x007619ae    8b4628
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000001f4]");             // 0x007619b1    8b88f4010000
    asm("_jmp_addr_0x007619b7:");
    asm("lea                eax, dword ptr [edi + edi * 0x2]");              // 0x007619b7    8d047f
    asm("shl                eax, 3");                                        // 0x007619ba    c1e003
    asm("sub.s              eax, edi");                                      // 0x007619bd    2bc7
    asm("lea                edx, dword ptr [eax + eax * 0x2]");              // 0x007619bf    8d1440
    asm("{disp32} mov       edi, dword ptr [edx * 0x4 + 0x00db9f38]");       // 0x007619c2    8b3c95389fdb00
    asm("xor.s              eax, eax");                                      // 0x007619c9    33c0
    asm("test               edi, edi");                                      // 0x007619cb    85ff
    asm("sete               al");                                            // 0x007619cd    0f94c0
    asm("push               eax");                                           // 0x007619d0    50
    asm("push               ecx");                                           // 0x007619d1    51
    asm("mov.s              ecx, esi");                                      // 0x007619d2    8bce
    asm("call               ?ChangeTribeIfRequired@Villager@@QAEIW4TRIBE_TYPE@@H@Z");                          // 0x007619d4    e8e7feffff
    asm("_jmp_addr_0x007619d9:");
    asm("cmp                byte ptr [esi + 0x000000f2], 0x0a");             // 0x007619d9    80bef20000000a
    asm("{disp8} jne        _jmp_addr_0x007619ef");                          // 0x007619e0    750d
    asm("push               0x0");                                           // 0x007619e2    6a00
    asm("push               0x0");                                           // 0x007619e4    6a00
    asm("push               0x0");                                           // 0x007619e6    6a00
    asm("mov.s              ecx, esi");                                      // 0x007619e8    8bce
    asm("call               ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z");                          // 0x007619ea    e81146ffff
    asm("_jmp_addr_0x007619ef:");
    asm("pop                edi");                                           // 0x007619ef    5f
    asm("mov                eax, 0x00000001");                               // 0x007619f0    b801000000
    asm("pop                esi");                                           // 0x007619f5    5e
    asm("ret                0x0004");                                        // 0x007619f6    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ChangeInfo__8VillagerFPC13GVillagerInfo(struct Villager* this, const void* edx, const struct GVillagerInfo* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00761a00    8b442404
    asm("push               ebx");                                           // 0x00761a04    53
    asm("push               esi");                                           // 0x00761a05    56
    asm("mov.s              esi, ecx");                                      // 0x00761a06    8bf1
    asm("mov                edx, dword ptr [esi]");                          // 0x00761a08    8b16
    asm("push               edi");                                           // 0x00761a0a    57
    asm("{disp8} mov        dword ptr [esi + 0x28], eax");                   // 0x00761a0b    894628
    asm("call               dword ptr [edx + 0xaf8]");                       // 0x00761a0e    ff92f80a0000
    asm("test               eax, eax");                                      // 0x00761a14    85c0
    asm("{disp8} je         _jmp_addr_0x00761a6a");                          // 0x00761a16    7452
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00761a18    8b4628
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000204]");             // 0x00761a1b    8b8004020000
    asm("{disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x00761a21    8b1534fee900
    asm("mov.s              ecx, eax");                                      // 0x00761a27    8bc8
    asm("test               ecx, ecx");                                      // 0x00761a29    85c9
    asm("{disp8} jl         _jmp_addr_0x00761a31");                          // 0x00761a2b    7c04
    asm("cmp                ecx, dword ptr [edx]");                          // 0x00761a2d    3b0a
    asm("{disp8} jl         _jmp_addr_0x00761a33");                          // 0x00761a2f    7c02
    asm("_jmp_addr_0x00761a31:");
    asm("xor.s              ecx, ecx");                                      // 0x00761a31    33c9
    asm("_jmp_addr_0x00761a33:");
    asm("{disp8} mov        edi, dword ptr [edx + ecx * 0x4 + 0x04]");       // 0x00761a33    8b7c8a04
    asm("mov.s              ecx, eax");                                      // 0x00761a37    8bc8
    asm("test               ecx, ecx");                                      // 0x00761a39    85c9
    asm("{disp8} jl         _jmp_addr_0x00761a41");                          // 0x00761a3b    7c04
    asm("cmp                ecx, dword ptr [edx]");                          // 0x00761a3d    3b0a
    asm("{disp8} jl         _jmp_addr_0x00761a43");                          // 0x00761a3f    7c02
    asm("_jmp_addr_0x00761a41:");
    asm("xor.s              ecx, ecx");                                      // 0x00761a41    33c9
    asm("_jmp_addr_0x00761a43:");
    asm("test               eax, eax");                                      // 0x00761a43    85c0
    asm("{disp8} mov        ecx, dword ptr [edx + ecx * 0x4 + 0x04]");       // 0x00761a45    8b4c8a04
    asm("{disp8} jl         _jmp_addr_0x00761a4f");                          // 0x00761a49    7c04
    asm("cmp                eax, dword ptr [edx]");                          // 0x00761a4b    3b02
    asm("{disp8} jl         _jmp_addr_0x00761a51");                          // 0x00761a4d    7c02
    asm("_jmp_addr_0x00761a4f:");
    asm("xor.s              eax, eax");                                      // 0x00761a4f    33c0
    asm("_jmp_addr_0x00761a51:");
    asm("{disp8} mov        esi, dword ptr [esi + 0x40]");                   // 0x00761a51    8b7640
    asm("mov                ebx, dword ptr [esi]");                          // 0x00761a54    8b1e
    asm("{disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]");       // 0x00761a56    8b548204
    asm("push               edi");                                           // 0x00761a5a    57
    asm("push               ecx");                                           // 0x00761a5b    51
    asm("mov.s              ecx, esi");                                      // 0x00761a5c    8bce
    asm("call               dword ptr [ebx + 0xf4]");                        // 0x00761a5e    ff93f4000000
    asm("pop                edi");                                           // 0x00761a64    5f
    asm("pop                esi");                                           // 0x00761a65    5e
    asm("pop                ebx");                                           // 0x00761a66    5b
    asm("ret                0x0004");                                        // 0x00761a67    c20400
    asm("_jmp_addr_0x00761a6a:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00761a6a    8b16
    asm("push               0x2");                                           // 0x00761a6c    6a02
    asm("mov.s              ecx, esi");                                      // 0x00761a6e    8bce
    asm("call               dword ptr [edx + 0x60c]");                       // 0x00761a70    ff920c060000
    asm("test               eax, eax");                                      // 0x00761a76    85c0
    asm("{disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x00761a78    8b0d34fee900
    asm("{disp8} jl         _jmp_addr_0x00761a84");                          // 0x00761a7e    7c04
    asm("cmp                eax, dword ptr [ecx]");                          // 0x00761a80    3b01
    asm("{disp8} jl         _jmp_addr_0x00761a86");                          // 0x00761a82    7c02
    asm("_jmp_addr_0x00761a84:");
    asm("xor.s              eax, eax");                                      // 0x00761a84    33c0
    asm("_jmp_addr_0x00761a86:");
    asm("{disp8} mov        ebx, dword ptr [ecx + eax * 0x4 + 0x04]");       // 0x00761a86    8b5c8104
    asm("mov                eax, dword ptr [esi]");                          // 0x00761a8a    8b06
    asm("push               0x1");                                           // 0x00761a8c    6a01
    asm("mov.s              ecx, esi");                                      // 0x00761a8e    8bce
    asm("call               dword ptr [eax + 0x60c]");                       // 0x00761a90    ff900c060000
    asm("test               eax, eax");                                      // 0x00761a96    85c0
    asm("{disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x00761a98    8b0d34fee900
    asm("{disp8} jl         _jmp_addr_0x00761aa4");                          // 0x00761a9e    7c04
    asm("cmp                eax, dword ptr [ecx]");                          // 0x00761aa0    3b01
    asm("{disp8} jl         _jmp_addr_0x00761aa6");                          // 0x00761aa2    7c02
    asm("_jmp_addr_0x00761aa4:");
    asm("xor.s              eax, eax");                                      // 0x00761aa4    33c0
    asm("_jmp_addr_0x00761aa6:");
    asm("{disp8} mov        edi, dword ptr [ecx + eax * 0x4 + 0x04]");       // 0x00761aa6    8b7c8104
    asm("mov                edx, dword ptr [esi]");                          // 0x00761aaa    8b16
    asm("push               0x0");                                           // 0x00761aac    6a00
    asm("mov.s              ecx, esi");                                      // 0x00761aae    8bce
    asm("call               dword ptr [edx + 0x60c]");                       // 0x00761ab0    ff920c060000
    asm("test               eax, eax");                                      // 0x00761ab6    85c0
    asm("{disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x00761ab8    8b1534fee900
    asm("{disp8} jl         _jmp_addr_0x00761ac4");                          // 0x00761abe    7c04
    asm("cmp                eax, dword ptr [edx]");                          // 0x00761ac0    3b02
    asm("{disp8} jl         _jmp_addr_0x00761ac6");                          // 0x00761ac2    7c02
    asm("_jmp_addr_0x00761ac4:");
    asm("xor.s              eax, eax");                                      // 0x00761ac4    33c0
    asm("_jmp_addr_0x00761ac6:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x00761ac6    8b4e40
    asm("mov                esi, dword ptr [ecx]");                          // 0x00761ac9    8b31
    asm("{disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]");       // 0x00761acb    8b548204
    asm("push               ebx");                                           // 0x00761acf    53
    asm("push               edi");                                           // 0x00761ad0    57
    asm("call               dword ptr [esi + 0xf4]");                        // 0x00761ad1    ff96f4000000
    asm("pop                edi");                                           // 0x00761ad7    5f
    asm("pop                esi");                                           // 0x00761ad8    5e
    asm("pop                ebx");                                           // 0x00761ad9    5b
    asm("ret                0x0004");                                        // 0x00761ada    c20400
    __builtin_unreachable();
}

bool32_t __fastcall SleepInTent__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761ae0    56
    asm("mov.s              esi, ecx");                                      // 0x00761ae1    8bf1
    asm("cmp                word ptr [esi + 0x58], 0x00");                   // 0x00761ae3    66837e5800
    asm("{disp8} jne        _jmp_addr_0x00761b30");                          // 0x00761ae8    7546
    asm("push               0x3f800000");                                    // 0x00761aea    680000803f
    asm("call               ?DoSleeping@Villager@@QAEIM@Z");                 // 0x00761aef    e8bcf2ffff
    asm("test               eax, eax");                                      // 0x00761af4    85c0
    asm("{disp8} jne        _jmp_addr_0x00761b34");                          // 0x00761af6    753c
    asm("mov.s              ecx, esi");                                      // 0x00761af8    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761afa    e86106ffff
    asm("test               eax, eax");                                      // 0x00761aff    85c0
    asm("{disp8} jne        _jmp_addr_0x00761b0e");                          // 0x00761b01    750b
    asm("mov.s              ecx, esi");                                      // 0x00761b03    8bce
    asm("call               ?CheckHomelessMoveIntoAbode@Villager@@QAEIXZ");  // 0x00761b05    e856f8ffff
    asm("test               eax, eax");                                      // 0x00761b0a    85c0
    asm("{disp8} jne        _jmp_addr_0x00761b34");                          // 0x00761b0c    7526
    asm("_jmp_addr_0x00761b0e:");
    asm("mov.s              ecx, esi");                                      // 0x00761b0e    8bce
    asm("call               ?HomeDecideWhatToDo@Villager@@QAEIXZ");          // 0x00761b10    e88be3ffff
    asm("test               eax, eax");                                      // 0x00761b15    85c0
    asm("{disp8} je         _jmp_addr_0x00761b22");                          // 0x00761b17    7409
    asm("cmp                byte ptr [esi + 0x0000008c], -0x12");            // 0x00761b19    80be8c000000ee
    asm("{disp8} jne        _jmp_addr_0x00761b34");                          // 0x00761b20    7512
    asm("_jmp_addr_0x00761b22:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00761b22    8b4628
    asm("{disp32} mov       cx, word ptr [eax + 0x0000024c]");               // 0x00761b25    668b884c020000
    asm("{disp8} mov        word ptr [esi + 0x58], cx");                     // 0x00761b2c    66894e58
    asm("_jmp_addr_0x00761b30:");
    asm("dec                word ptr [esi + 0x58]");                         // 0x00761b30    66ff4e58
    asm("_jmp_addr_0x00761b34:");
    asm("mov                eax, 0x00000001");                               // 0x00761b34    b801000000
    asm("pop                esi");                                           // 0x00761b39    5e
    asm("ret");                                                              // 0x00761b3a    c3
    __builtin_unreachable();
}

bool32_t __fastcall ExitAtHome__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00761b40    8b442404
    asm("and                eax, 0x000000ff");                               // 0x00761b44    25ff000000
    asm("lea                edx, dword ptr [eax + eax * 0x2]");              // 0x00761b49    8d1440
    asm("shl                edx, 3");                                        // 0x00761b4c    c1e203
    asm("sub.s              edx, eax");                                      // 0x00761b4f    2bd0
    asm("lea                eax, dword ptr [edx + edx * 0x2]");              // 0x00761b51    8d0452
    asm("{disp32} mov       edx, dword ptr [eax * 0x4 + 0x00db9f38]");       // 0x00761b54    8b1485389fdb00
    asm("test               edx, edx");                                      // 0x00761b5b    85d2
    asm("{disp8} jne        _jmp_addr_0x00761b64");                          // 0x00761b5d    7505
    asm("call               ?LeaveHome@Villager@@QAEXXZ");                   // 0x00761b5f    e86c04ffff
    asm("_jmp_addr_0x00761b64:");
    asm("mov                eax, 0x00000001");                               // 0x00761b64    b801000000
    asm("ret                0x0004");                                        // 0x00761b69    c20400
    __builtin_unreachable();
}

bool32_t __fastcall GoHomeFromWorship__8VillagerFv(struct Villager* this)
{
    asm("push               0x000000fa");                                    // 0x00761b70    68fa000000
    asm("push               0x000000f9");                                    // 0x00761b75    68f9000000
    asm("call               ?DoGoingHome@Villager@@QAE_NW4VILLAGER_STATES@@0@Z");  // 0x00761b7a    e801e7ffff
    asm("ret");                                                              // 0x00761b7f    c3
    __builtin_unreachable();
}
