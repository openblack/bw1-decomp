#include "Villager.h"

const float villager_fisherman_num_days_in_year_0x0099a970 = 365.25f;
const float villager_fisherman_seconds_in_day_0x0099a974 = 86400.0f;

char s_VillagerFisherman_cpp[] = "C:\\dev\\MP\\Black\\VillagerFisherman.cpp";

float villager_fisherman_seconds_in_year_0x00db9e04;

void __cdecl globl_ct_0x0075b460(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x0075b460    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x0075b466    b001
    asm("test               al, cl");                                        // 0x0075b468    84c8
    asm("{disp8} jne        _jmp_addr_0x0075b474");                          // 0x0075b46a    7508
    asm("or.s               cl, al");                                        // 0x0075b46c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x0075b46e    880d34c9fa00
    asm("_jmp_addr_0x0075b474:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x0075b480");   // 0x0075b474    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x0075b480(void)
{
    asm("push               0x00407870");                                    // 0x0075b480    6870784000
    asm("call               _atexit");                                       // 0x0075b485    e807a30600
    asm("pop                ecx");                                           // 0x0075b48a    59
}

void __cdecl globl_ct_0x0075b490(void)
{
    asm("{disp32} jmp       _FUN_0075b4a0__8VillagerFv");                    // 0x0075b490    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_0075b4a0__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_fisherman_seconds_in_day_0x0099a974]");   // 0x0075b4a0    d90574a99900
    asm("{disp32} fmul dword ptr [_villager_fisherman_num_days_in_year_0x0099a970]"); // 0x0075b4a6    d80d70a99900
    asm("{disp32} fstp dword ptr [_villager_fisherman_seconds_in_year_0x00db9e04]");  // 0x0075b4ac    d91d049edb00
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FishermanLookForWater__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                           // 0x0075b4c0    51
    asm("push               esi");                                           // 0x0075b4c1    56
    asm("mov.s              esi, ecx");                                      // 0x0075b4c2    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x0075b4c4    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075b4c6    ff5048
    asm("test               eax, eax");                                      // 0x0075b4c9    85c0
    asm("{disp8} je         _jmp_addr_0x0075b4fd");                          // 0x0075b4cb    7430
    asm("mov                edx, dword ptr [esi]");                          // 0x0075b4cd    8b16
    asm("{disp8} lea        ecx, dword ptr [esp + 0x04]");                   // 0x0075b4cf    8d4c2404
    asm("push               ecx");                                           // 0x0075b4d3    51
    asm("push               esi");                                           // 0x0075b4d4    56
    asm("mov.s              ecx, esi");                                      // 0x0075b4d5    8bce
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x0075b4d7    c744240c00000000
    asm("call               dword ptr [edx + 0x48]");                        // 0x0075b4df    ff5248
    asm("mov.s              ecx, eax");                                      // 0x0075b4e2    8bc8
    asm("call               _jmp_addr_0x0073e750");                          // 0x0075b4e4    e86732feff
    asm("test               eax, eax");                                      // 0x0075b4e9    85c0
    asm("{disp8} je         _jmp_addr_0x0075b4fd");                          // 0x0075b4eb    7410
    asm("push               eax");                                           // 0x0075b4ed    50
    asm("mov.s              ecx, esi");                                      // 0x0075b4ee    8bce
    asm("call               ?VillagerBecomesFisherman@Villager@@QAEIPAVFishFarm@@@Z");                          // 0x0075b4f0    e86b000000
    asm("mov                eax, 0x00000001");                               // 0x0075b4f5    b801000000
    asm("pop                esi");                                           // 0x0075b4fa    5e
    asm("pop                ecx");                                           // 0x0075b4fb    59
    asm("ret");                                                              // 0x0075b4fc    c3
    asm("_jmp_addr_0x0075b4fd:");
    asm("xor.s              eax, eax");                                      // 0x0075b4fd    33c0
    asm("pop                esi");                                           // 0x0075b4ff    5e
    asm("pop                ecx");                                           // 0x0075b500    59
    asm("ret");                                                              // 0x0075b501    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall VillagerBecomesFisherman__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x0075b510    83ec0c
    asm("push               esi");                                           // 0x0075b513    56
    asm("mov.s              esi, ecx");                                      // 0x0075b514    8bf1
    asm("call               ?FishermanLookForWater@Villager@@QAEIXZ");       // 0x0075b516    e8a5ffffff
    asm("cmp                eax, 0x01");                                     // 0x0075b51b    83f801
    asm("{disp8} jne        _jmp_addr_0x0075b550");                          // 0x0075b51e    7530
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x0075b520    8b8e18010000
    asm("{disp8} lea        eax, dword ptr [esp + 0x04]");                   // 0x0075b526    8d442404
    asm("push               eax");                                           // 0x0075b52a    50
    asm("call               _jmp_addr_0x0052c870");                          // 0x0075b52b    e84013ddff
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x0075b530    8b8618010000
    asm("push               0x37");                                          // 0x0075b536    6a37
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x0075b538    8d4c2408
    asm("push               ecx");                                           // 0x0075b53c    51
    asm("push               eax");                                           // 0x0075b53d    50
    asm("mov.s              ecx, esi");                                      // 0x0075b53e    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x0075b540    e8db27e9ff
    asm("neg                eax");                                           // 0x0075b545    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075b547    1bc0
    asm("neg                eax");                                           // 0x0075b549    f7d8
    asm("pop                esi");                                           // 0x0075b54b    5e
    asm("add                esp, 0x0c");                                     // 0x0075b54c    83c40c
    asm("ret");                                                              // 0x0075b54f    c3
    asm("_jmp_addr_0x0075b550:");
    asm("xor.s              eax, eax");                                      // 0x0075b550    33c0
    asm("pop                esi");                                           // 0x0075b552    5e
    asm("add                esp, 0x0c");                                     // 0x0075b553    83c40c
    asm("ret");                                                              // 0x0075b556    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall VillagerBecomesFisherman__8VillagerFP8FishFarm(struct Villager* this, const void* edx, struct FishFarm* param_1)
{
    asm("sub                esp, 0x18");                                     // 0x0075b560    83ec18
    asm("push               esi");                                           // 0x0075b563    56
    asm("mov.s              esi, ecx");                                      // 0x0075b564    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x0075b566    8b06
    asm("push               0x000000a3");                                    // 0x0075b568    68a3000000
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075b56d    ff90e8080000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");                   // 0x0075b573    8b4c2420
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x0075b577    8d442410
    asm("{disp32} mov       dword ptr [esi + 0x00000118], ecx");             // 0x0075b57b    898e18010000
    asm("mov                edx, dword ptr [ecx]");                          // 0x0075b581    8b11
    asm("push               eax");                                           // 0x0075b583    50
    asm("call               dword ptr [edx + 0x104]");                       // 0x0075b584    ff9204010000
    asm("xor.s              ecx, ecx");                                      // 0x0075b58a    33c9
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                   // 0x0075b58c    894c2404
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                   // 0x0075b590    894c2408
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x0075b594    894c240c
    asm("mov                ecx, dword ptr [eax]");                          // 0x0075b598    8b08
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                   // 0x0075b59a    894c2404
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x0075b59e    8b5004
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x0075b5a1    8b8e18010000
    asm("{disp8} mov        dword ptr [esp + 0x08], edx");                   // 0x0075b5a7    89542408
    asm("{disp8} fld        dword ptr [eax + 0x08]");                        // 0x0075b5ab    d94008
    asm("push               0x37");                                          // 0x0075b5ae    6a37
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                   // 0x0075b5b0    8d442408
    asm("push               eax");                                           // 0x0075b5b4    50
    asm("push               ecx");                                           // 0x0075b5b5    51
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x0075b5b6    d95c2418
    asm("mov.s              ecx, esi");                                      // 0x0075b5ba    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x0075b5bc    e85f27e9ff
    asm("mov                eax, 0x00000001");                               // 0x0075b5c1    b801000000
    asm("pop                esi");                                           // 0x0075b5c6    5e
    asm("add                esp, 0x18");                                     // 0x0075b5c7    83c418
    asm("ret                0x0004");                                        // 0x0075b5ca    c20400
    __builtin_unreachable();
}

bool32_t __fastcall FishermanArrivesAtFishing__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x0075b5d0    83ec0c
    asm("push               esi");                                           // 0x0075b5d3    56
    asm("mov.s              esi, ecx");                                      // 0x0075b5d4    8bf1
    asm("push               edi");                                           // 0x0075b5d6    57
    asm("{disp32} mov       edi, dword ptr [esi + 0x00000118]");             // 0x0075b5d7    8bbe18010000
    asm("call               ?IsAtValidFishingPos@Villager@@QAEIXZ");         // 0x0075b5dd    e88e000000
    asm("test               eax, eax");                                      // 0x0075b5e2    85c0
    asm("mov                eax, dword ptr [edi]");                          // 0x0075b5e4    8b07
    asm("{disp8} jne        _jmp_addr_0x0075b60f");                          // 0x0075b5e6    7527
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x0075b5e8    8d4c2408
    asm("push               ecx");                                           // 0x0075b5ec    51
    asm("mov.s              ecx, edi");                                      // 0x0075b5ed    8bcf
    asm("call               dword ptr [eax + 0x104]");                       // 0x0075b5ef    ff9004010000
    asm("push               0x37");                                          // 0x0075b5f5    6a37
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                   // 0x0075b5f7    8d54240c
    asm("push               edx");                                           // 0x0075b5fb    52
    asm("push               edi");                                           // 0x0075b5fc    57
    asm("mov.s              ecx, esi");                                      // 0x0075b5fd    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x0075b5ff    e81c27e9ff
    asm("pop                edi");                                           // 0x0075b604    5f
    asm("mov                eax, 0x00000001");                               // 0x0075b605    b801000000
    asm("pop                esi");                                           // 0x0075b60a    5e
    asm("add                esp, 0x0c");                                     // 0x0075b60b    83c40c
    asm("ret");                                                              // 0x0075b60e    c3
    asm("_jmp_addr_0x0075b60f:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x0075b60f    8d4c2408
    asm("push               ecx");                                           // 0x0075b613    51
    asm("mov.s              ecx, edi");                                      // 0x0075b614    8bcf
    asm("call               dword ptr [eax + 0x104]");                       // 0x0075b616    ff9004010000
    asm("push               eax");                                           // 0x0075b61c    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0075b61d    8d4e14
    asm("call               @__eq__9MapCoordsCFRC9MapCoords@12");            // 0x0075b620    e83ba0eaff
    asm("test               eax, eax");                                      // 0x0075b625    85c0
    asm("{disp8} je         _jmp_addr_0x0075b64e");                          // 0x0075b627    7425
    asm("{disp8} lea        edx, dword ptr [esp + 0x08]");                   // 0x0075b629    8d542408
    asm("push               edx");                                           // 0x0075b62d    52
    asm("mov.s              ecx, edi");                                      // 0x0075b62e    8bcf
    asm("call               _jmp_addr_0x0052c870");                          // 0x0075b630    e83b12ddff
    asm("push               0x37");                                          // 0x0075b635    6a37
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x0075b637    8d44240c
    asm("push               eax");                                           // 0x0075b63b    50
    asm("mov.s              ecx, esi");                                      // 0x0075b63c    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x0075b63e    e8bd810000
    asm("pop                edi");                                           // 0x0075b643    5f
    asm("mov                eax, 0x00000001");                               // 0x0075b644    b801000000
    asm("pop                esi");                                           // 0x0075b649    5e
    asm("add                esp, 0x0c");                                     // 0x0075b64a    83c40c
    asm("ret");                                                              // 0x0075b64d    c3
    asm("_jmp_addr_0x0075b64e:");
    asm("push               0x1");                                           // 0x0075b64e    6a01
    asm("push               0x38");                                          // 0x0075b650    6a38
    asm("mov.s              ecx, esi");                                      // 0x0075b652    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");        // 0x0075b654    e86714e9ff
    asm("pop                edi");                                           // 0x0075b659    5f
    asm("mov                eax, 0x00000001");                               // 0x0075b65a    b801000000
    asm("pop                esi");                                           // 0x0075b65f    5e
    asm("add                esp, 0x0c");                                     // 0x0075b660    83c40c
    asm("ret");                                                              // 0x0075b663    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsAtValidFishingPos__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000118]");             // 0x0075b670    8b8118010000
    asm("{disp8} mov        dx, word ptr [ecx + 0x16]");                     // 0x0075b676    668b5116
    asm("cmp                dx, word ptr [eax + 0x16]");                     // 0x0075b67a    663b5016
    asm("{disp8} jne        _jmp_addr_0x0075b690");                          // 0x0075b67e    7510
    asm("{disp8} mov        cx, word ptr [ecx + 0x1a]");                     // 0x0075b680    668b491a
    asm("cmp                cx, word ptr [eax + 0x1a]");                     // 0x0075b684    663b481a
    asm("{disp8} jne        _jmp_addr_0x0075b690");                          // 0x0075b688    7506
    asm("mov                eax, 0x00000001");                               // 0x0075b68a    b801000000
    asm("ret");                                                              // 0x0075b68f    c3
    asm("_jmp_addr_0x0075b690:");
    asm("xor.s              eax, eax");                                      // 0x0075b690    33c0
    asm("ret");                                                              // 0x0075b692    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall Fishing__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x1c");                                     // 0x0075b6a0    83ec1c
    asm("push               esi");                                           // 0x0075b6a3    56
    asm("push               edi");                                           // 0x0075b6a4    57
    asm("mov.s              esi, ecx");                                      // 0x0075b6a5    8bf1
    asm("push               0x1");                                           // 0x0075b6a7    6a01
    asm("call               @IsReadyForNewAnimation__6LivingFUl@12");        // 0x0075b6a9    e8b212e9ff
    asm("test               eax, eax");                                      // 0x0075b6ae    85c0
    asm("{disp32} je        _jmp_addr_0x0075b80d");                          // 0x0075b6b0    0f8457010000
    asm("xor.s              edi, edi");                                      // 0x0075b6b6    33ff
    asm("{disp32} mov       word ptr [esi + 0x00000090], di");               // 0x0075b6b8    6689be90000000
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x0075b6bf    8b8618010000
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000084]");             // 0x0075b6c5    8b8084000000
    asm("push               0x62");                                          // 0x0075b6cb    6a62
    asm("push               0x00c23750");                                    // 0x0075b6cd    685037c200
    asm("push               eax");                                           // 0x0075b6d2    50
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x0075b6d3    e8382ef8ff
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0075b6d8    89442418
    asm("{disp8} mov        dword ptr [esp + 0x1c], edi");                   // 0x0075b6dc    897c241c
    asm("{disp8} fild       qword ptr [esp + 0x18]");                        // 0x0075b6e0    df6c2418
    asm("add                esp, 0x0c");                                     // 0x0075b6e4    83c40c
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075b6e7    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075b6ed    dfe0
    asm("test               ah, 0x40");                                      // 0x0075b6ef    f6c440
    asm("{disp32} je        _jmp_addr_0x0075b80d");                          // 0x0075b6f2    0f8415010000
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x0075b6f8    8b4e28
    asm("{disp32} mov       edx, dword ptr [ecx + 0x00000264]");             // 0x0075b6fb    8b9164020000
    asm("{disp8} mov        dword ptr [esp + 0x0c], edx");                   // 0x0075b701    8954240c
    asm("{disp8} mov        dword ptr [esp + 0x10], edi");                   // 0x0075b705    897c2410
    asm("{disp8} fild       qword ptr [esp + 0x0c]");                        // 0x0075b709    df6c240c
    asm("mov.s              ecx, esi");                                      // 0x0075b70d    8bce
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x3f800000");            // 0x0075b70f    c74424140000803f
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x3f666666");            // 0x0075b717    c74424186666663f
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x23d4]");              // 0x0075b71f    d80dd4b38a00
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x3f333333");            // 0x0075b725    c744241c3333333f
    asm("{disp8} mov        dword ptr [esp + 0x20], 0x3f19999a");            // 0x0075b72d    c74424209a99193f
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x0075b735    d95c2408
    asm("call               ?GetFoodCapacity@Villager@@QAEHXZ");             // 0x0075b739    e8925dffff
    asm("movsx              eax, ax");                                       // 0x0075b73e    0fbfc0
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x0075b741    8944240c
    asm("mov                ecx, OFFSET _GGameInfo_00d019f8");               // 0x0075b745    b9f819d000
    asm("{disp8} fild       dword ptr [esp + 0x0c]");                        // 0x0075b74a    db44240c
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x0075b74e    d95c240c
    asm("call               ?GetSeason@GGameInfo@@QAEIXZ");                  // 0x0075b752    e829c3dfff
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x0075b757    d9442408
    asm("{disp8} fmul       dword ptr [esp + eax * 0x4 + 0x14]");            // 0x0075b75b    d84c8414
    asm("{disp8} fcomp      dword ptr [esp + 0x0c]");                        // 0x0075b75f    d85c240c
    asm("fnstsw             ax");                                            // 0x0075b763    dfe0
    asm("test               ah, 0x41");                                      // 0x0075b765    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075b77e");                          // 0x0075b768    7514
    asm("mov.s              ecx, esi");                                      // 0x0075b76a    8bce
    asm("call               ?GetFoodCapacity@Villager@@QAEHXZ");             // 0x0075b76c    e85f5dffff
    asm("movsx              ecx, ax");                                       // 0x0075b771    0fbfc8
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x0075b774    894c240c
    asm("{disp8} fild       dword ptr [esp + 0x0c]");                        // 0x0075b778    db44240c
    asm("{disp8} jmp        _jmp_addr_0x0075b790");                          // 0x0075b77c    eb12
    asm("_jmp_addr_0x0075b77e:");
    asm("mov                ecx, OFFSET _GGameInfo_00d019f8");               // 0x0075b77e    b9f819d000
    asm("call               ?GetSeason@GGameInfo@@QAEIXZ");                  // 0x0075b783    e8f8c2dfff
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x0075b788    d9442408
    asm("{disp8} fmul       dword ptr [esp + eax * 0x4 + 0x14]");            // 0x0075b78c    d84c8414
    asm("_jmp_addr_0x0075b790:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075b790    8b16
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x0075b792    d95c2408
    asm("push               0x7");                                           // 0x0075b796    6a07
    asm("mov.s              ecx, esi");                                      // 0x0075b798    8bce
    asm("call               dword ptr [edx + 0x6c8]");                       // 0x0075b79a    ff92c8060000
    asm("{disp8} fmul       dword ptr [esp + 0x08]");                        // 0x0075b7a0    d84c2408
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075b7a4    e8575c0400
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x0075b7a9    8944240c
    asm("{disp8} mov        dword ptr [esp + 0x10], edi");                   // 0x0075b7ad    897c2410
    asm("{disp8} fild       qword ptr [esp + 0x0c]");                        // 0x0075b7b1    df6c240c
    asm("{disp8} fst        dword ptr [esp + 0x08]");                        // 0x0075b7b5    d9542408
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075b7b9    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075b7bf    dfe0
    asm("test               ah, 0x40");                                      // 0x0075b7c1    f6c440
    asm("{disp8} jne        _jmp_addr_0x0075b7d7");                          // 0x0075b7c4    7511
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x0075b7c6    d9442408
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075b7ca    e8315c0400
    asm("mov.s              ecx, esi");                                      // 0x0075b7cf    8bce
    asm("push               eax");                                           // 0x0075b7d1    50
    asm("call               ?PickupFood@Villager@@QAEXF@Z");                 // 0x0075b7d2    e8b95cffff
    asm("_jmp_addr_0x0075b7d7:");
    asm("mov.s              ecx, esi");                                      // 0x0075b7d7    8bce
    asm("call               ?GetFoodCapacity@Villager@@QAEHXZ");             // 0x0075b7d9    e8f25cffff
    asm("movsx              eax, ax");                                       // 0x0075b7de    0fbfc0
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x0075b7e1    8944240c
    asm("{disp8} fild       dword ptr [esp + 0x0c]");                        // 0x0075b7e5    db44240c
    asm("{disp8} fcomp      dword ptr [esp + 0x08]");                        // 0x0075b7e9    d85c2408
    asm("fnstsw             ax");                                            // 0x0075b7ed    dfe0
    asm("test               ah, 0x01");                                      // 0x0075b7ef    f6c401
    asm("{disp8} jne        _jmp_addr_0x0075b800");                          // 0x0075b7f2    750c
    asm("mov.s              ecx, esi");                                      // 0x0075b7f4    8bce
    asm("call               ?GetFoodCapacity@Villager@@QAEHXZ");             // 0x0075b7f6    e8d55cffff
    asm("test               ax, ax");                                        // 0x0075b7fb    6685c0
    asm("{disp8} jne        _jmp_addr_0x0075b80d");                          // 0x0075b7fe    750d
    asm("_jmp_addr_0x0075b800:");
    asm("mov.s              ecx, esi");                                      // 0x0075b800    8bce
    asm("call               ?GotoStoragePitForDropOff@Villager@@QAEIXZ");    // 0x0075b802    e819de0000
    asm("pop                edi");                                           // 0x0075b807    5f
    asm("pop                esi");                                           // 0x0075b808    5e
    asm("add                esp, 0x1c");                                     // 0x0075b809    83c41c
    asm("ret");                                                              // 0x0075b80c    c3
    asm("_jmp_addr_0x0075b80d:");
    asm("pop                edi");                                           // 0x0075b80d    5f
    asm("mov                eax, 0x00000001");                               // 0x0075b80e    b801000000
    asm("pop                esi");                                           // 0x0075b813    5e
    asm("add                esp, 0x1c");                                     // 0x0075b814    83c41c
    asm("ret");                                                              // 0x0075b817    c3
    __builtin_unreachable();
}

bool32_t __fastcall EnterFishing__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x0075b820    8b442408
    asm("push               esi");                                           // 0x0075b824    56
    asm("mov.s              esi, ecx");                                      // 0x0075b825    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0075b827    8b4c2408
    asm("and                eax, 0x000000ff");                               // 0x0075b82b    25ff000000
    asm("and                ecx, 0x000000ff");                               // 0x0075b830    81e1ff000000
    asm("push               eax");                                           // 0x0075b836    50
    asm("push               ecx");                                           // 0x0075b837    51
    asm("mov.s              ecx, esi");                                      // 0x0075b838    8bce
    asm("call               ?IsStateEntryFunctionSameAs@Villager@@QBE_NKK@Z");                          // 0x0075b83a    e8916cffff
    asm("test               eax, eax");                                      // 0x0075b83f    85c0
    asm("{disp8} jne        _jmp_addr_0x0075b86f");                          // 0x0075b841    752c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075b843    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075b845    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0075b847    ff5248
    asm("test               eax, eax");                                      // 0x0075b84a    85c0
    asm("{disp8} je         _jmp_addr_0x0075b86f");                          // 0x0075b84c    7421
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x0075b84e    8b8e18010000
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000080]");             // 0x0075b854    8b8180000000
    asm("test               eax, eax");                                      // 0x0075b85a    85c0
    asm("{disp8} je         _jmp_addr_0x0075b869");                          // 0x0075b85c    740b
    asm("_jmp_addr_0x0075b85e:");
    asm("cmp                dword ptr [eax + 0x04], esi");                   // 0x0075b85e    397004
    asm("{disp8} je         _jmp_addr_0x0075b86f");                          // 0x0075b861    740c
    asm("mov                eax, dword ptr [eax]");                          // 0x0075b863    8b00
    asm("test               eax, eax");                                      // 0x0075b865    85c0
    asm("{disp8} jne        _jmp_addr_0x0075b85e");                          // 0x0075b867    75f5
    asm("_jmp_addr_0x0075b869:");
    asm("push               esi");                                           // 0x0075b869    56
    asm("call               _jmp_addr_0x0052d250");                          // 0x0075b86a    e8e119ddff
    asm("_jmp_addr_0x0075b86f:");
    asm("mov                eax, 0x00000001");                               // 0x0075b86f    b801000000
    asm("pop                esi");                                           // 0x0075b874    5e
    asm("ret                0x0008");                                        // 0x0075b875    c20800
    __builtin_unreachable();
}

bool32_t __fastcall ExitFishing__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               esi");                                           // 0x0075b880    56
    asm("mov.s              esi, ecx");                                      // 0x0075b881    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0075b883    8b4c2408
    asm("mov                eax, dword ptr [esi]");                          // 0x0075b887    8b06
    asm("and                ecx, 0x000000ff");                               // 0x0075b889    81e1ff000000
    asm("push               ecx");                                           // 0x0075b88f    51
    asm("mov.s              ecx, esi");                                      // 0x0075b890    8bce
    asm("call               dword ptr [eax + 0x96c]");                       // 0x0075b892    ff906c090000
    asm("test               eax, eax");                                      // 0x0075b898    85c0
    asm("{disp8} jne        _jmp_addr_0x0075b8cc");                          // 0x0075b89a    7530
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x0075b89c    8b8e18010000
    asm("test               ecx, ecx");                                      // 0x0075b8a2    85c9
    asm("{disp8} je         _jmp_addr_0x0075b8c2");                          // 0x0075b8a4    741c
    asm("mov                edx, dword ptr [ecx]");                          // 0x0075b8a6    8b11
    asm("call               dword ptr [edx + 0x2c]");                        // 0x0075b8a8    ff522c
    asm("test               eax, eax");                                      // 0x0075b8ab    85c0
    asm("{disp8} je         _jmp_addr_0x0075b8c2");                          // 0x0075b8ad    7413
    asm("mov                eax, dword ptr [esi]");                          // 0x0075b8af    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075b8b1    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075b8b3    ff5048
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x0075b8b6    8b8e18010000
    asm("push               esi");                                           // 0x0075b8bc    56
    asm("call               _jmp_addr_0x0052d290");                          // 0x0075b8bd    e8ce19ddff
    asm("_jmp_addr_0x0075b8c2:");
    asm("{disp32} mov       dword ptr [esi + 0x00000118], 0x00000000");      // 0x0075b8c2    c7861801000000000000
    asm("_jmp_addr_0x0075b8cc:");
    asm("mov                eax, 0x00000001");                               // 0x0075b8cc    b801000000
    asm("pop                esi");                                           // 0x0075b8d1    5e
    asm("ret                0x0004");                                        // 0x0075b8d2    c20400
    __builtin_unreachable();
}
