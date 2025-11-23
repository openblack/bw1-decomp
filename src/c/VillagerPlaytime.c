#include "Villager.h"

const float villager_playtime_float10p0_0x0099a9c0 = 10.0f;
const float villager_playtime_num_days_in_year_0x0099a9c4 = 365.25f;
const float villager_playtime_seconds_in_day_0x0099a9c8 = 86400.0f;

float villager_playtime_seconds_in_year_0x00db9e2c;

void __cdecl globl_ct_0x00763080(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x00763080    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00763086    b001
    asm("test               al, cl");                                        // 0x00763088    84c8
    asm("{disp8} jne        _jmp_addr_0x00762694");                          // 0x0076308a    7508
    asm("or.s               cl, al");                                        // 0x0076308c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x0076308e    880d34c9fa00
    asm("_jmp_addr_0x00762694:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x007630a0");   // 0x00763094    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x007630a0(void)
{
    asm("push               0x00407870");                                    // 0x007630a0    6870784000
    asm("call               _atexit");                                       // 0x007630a5    e8e7260600
    asm("pop                ecx");                                           // 0x007630aa    59
}

void __cdecl globl_ct_0x007630b0(void)
{
    asm("{disp32} jmp       _FUN_007630c0__8VillagerFv");                    // 0x007630b0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_007630c0__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_playtime_seconds_in_day_0x0099a9c8]");   // 0x007630c0    d905c8a99900
    asm("{disp32} fmul dword ptr [_villager_playtime_num_days_in_year_0x0099a9c4]"); // 0x007630c6    d80dc4a99900
    asm("{disp32} fstp dword ptr [_villager_playtime_seconds_in_year_0x00db9e2c]");  // 0x007630cc    d91d2c9edb00
}

bool __fastcall IsPlaytime__8VillagerFv(struct Villager* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x007630e0    8b01
    asm("call               dword ptr [eax + 0x48]");                        // 0x007630e2    ff5048
    asm("neg                eax");                                           // 0x007630e5    f7d8
    asm("sbb.s              eax, eax");                                      // 0x007630e7    1bc0
    asm("neg                eax");                                           // 0x007630e9    f7d8
    asm("ret");                                                              // 0x007630eb    c3
    __builtin_unreachable();
}

bool32_t __fastcall CheckPlaytimeAvailableToPlayPFootball__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall CheckPlaytimeSettingUpPlayPFootball__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall MoveToFootballPitchConstruction__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall FootballWalkToPosition__8VillagerFv(struct Villager* this)
{
    asm("call               ?MoveTo@MobileWallHug@@QAEHXZ");                 // 0x00763120    e8fb7deaff
    asm("mov                eax, 0x00000001");                               // 0x00763125    b801000000
    asm("ret");                                                              // 0x0076312a    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfyPlaytimeDesire__8VillagerFv(struct Villager* this)
{
    return 0;
}

bool32_t __fastcall WaitForKickOff__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00763140    56
    asm("mov.s              esi, ecx");                                      // 0x00763141    8bf1
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x00763143    e858edfeff
    asm("cmp                dword ptr [eax + 0x00000200], 0x01");            // 0x00763148    83b80002000001
    asm("{disp8} jne        _jmp_addr_0x0076315d");                          // 0x0076314f    750c
    asm("mov                eax, dword ptr [esi]");                          // 0x00763151    8b06
    asm("push               0x49");                                          // 0x00763153    6a49
    asm("mov.s              ecx, esi");                                      // 0x00763155    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00763157    ff90e8080000
    asm("_jmp_addr_0x0076315d:");
    asm("mov                eax, 0x00000001");                               // 0x0076315d    b801000000
    asm("pop                esi");                                           // 0x00763162    5e
    asm("ret");                                                              // 0x00763163    c3
    __builtin_unreachable();
}

bool32_t __fastcall FootballMatchPaused__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00763170    56
    asm("mov.s              esi, ecx");                                      // 0x00763171    8bf1
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x00763173    e828edfeff
    asm("test               eax, eax");                                      // 0x00763178    85c0
    asm("{disp8} je         _jmp_addr_0x007631a6");                          // 0x0076317a    742a
    asm("mov.s              ecx, esi");                                      // 0x0076317c    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0076317e    e81dedfeff
    asm("mov.s              ecx, eax");                                      // 0x00763183    8bc8
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x00763185    e886e2dcff
    asm("test               eax, eax");                                      // 0x0076318a    85c0
    asm("{disp8} je         _jmp_addr_0x007631a6");                          // 0x0076318c    7418
    asm("push               0x1");                                           // 0x0076318e    6a01
    asm("mov.s              ecx, esi");                                      // 0x00763190    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x00763192    e809edfeff
    asm("mov.s              ecx, eax");                                      // 0x00763197    8bc8
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x00763199    e872e2dcff
    asm("push               eax");                                           // 0x0076319e    50
    asm("mov.s              ecx, esi");                                      // 0x0076319f    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x007631a1    e87a93e8ff
    asm("_jmp_addr_0x007631a6:");
    asm("mov                eax, 0x00000001");                               // 0x007631a6    b801000000
    asm("pop                esi");                                           // 0x007631ab    5e
    asm("ret");                                                              // 0x007631ac    c3
    __builtin_unreachable();
}

bool32_t __fastcall FootballMexicanWave__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x007631b0    56
    asm("mov.s              esi, ecx");                                      // 0x007631b1    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007631b3    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x007631b5    ff5048
    asm("test               eax, eax");                                      // 0x007631b8    85c0
    asm("{disp8} jne        _jmp_addr_0x007631c8");                          // 0x007631ba    750c
    asm("mov                edx, dword ptr [esi]");                          // 0x007631bc    8b16
    asm("mov.s              ecx, esi");                                      // 0x007631be    8bce
    asm("call               dword ptr [edx + 0x8c8]");                       // 0x007631c0    ff92c8080000
    asm("pop                esi");                                           // 0x007631c6    5e
    asm("ret");                                                              // 0x007631c7    c3
    asm("_jmp_addr_0x007631c8:");
    asm("mov.s              ecx, esi");                                      // 0x007631c8    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x007631ca    e8d1ecfeff
    asm("push               0x2");                                           // 0x007631cf    6a02
    asm("push               eax");                                           // 0x007631d1    50
    asm("mov.s              ecx, esi");                                      // 0x007631d2    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x007631d4    e84793e8ff
    asm("push               0x1");                                           // 0x007631d9    6a01
    asm("push               0x53");                                          // 0x007631db    6a53
    asm("mov.s              ecx, esi");                                      // 0x007631dd    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");        // 0x007631df    e8dc98e8ff
    asm("mov                eax, 0x00000001");                               // 0x007631e4    b801000000
    asm("pop                esi");                                           // 0x007631e9    5e
    asm("ret");                                                              // 0x007631ea    c3
    __builtin_unreachable();
}

bool32_t __fastcall FootballWatchMatch__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x007631f0    56
    asm("mov.s              esi, ecx");                                      // 0x007631f1    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007631f3    8b06
    asm("push               edi");                                           // 0x007631f5    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x007631f6    ff5048
    asm("test               eax, eax");                                      // 0x007631f9    85c0
    asm("{disp8} jne        _jmp_addr_0x0076320a");                          // 0x007631fb    750d
    asm("mov                edx, dword ptr [esi]");                          // 0x007631fd    8b16
    asm("mov.s              ecx, esi");                                      // 0x007631ff    8bce
    asm("call               dword ptr [edx + 0x8c8]");                       // 0x00763201    ff92c8080000
    asm("pop                edi");                                           // 0x00763207    5f
    asm("pop                esi");                                           // 0x00763208    5e
    asm("ret");                                                              // 0x00763209    c3
    asm("_jmp_addr_0x0076320a:");
    asm("mov.s              ecx, esi");                                      // 0x0076320a    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0076320c    e88fecfeff
    asm("mov.s              edi, eax");                                      // 0x00763211    8bf8
    asm("mov.s              ecx, edi");                                      // 0x00763213    8bcf
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x00763215    e8f6e1dcff
    asm("test               eax, eax");                                      // 0x0076321a    85c0
    asm("{disp8} jne        _jmp_addr_0x0076322b");                          // 0x0076321c    750d
    asm("mov                eax, dword ptr [esi]");                          // 0x0076321e    8b06
    asm("mov.s              ecx, esi");                                      // 0x00763220    8bce
    asm("call               dword ptr [eax + 0x8c8]");                       // 0x00763222    ff90c8080000
    asm("pop                edi");                                           // 0x00763228    5f
    asm("pop                esi");                                           // 0x00763229    5e
    asm("ret");                                                              // 0x0076322a    c3
    asm("_jmp_addr_0x0076322b:");
    asm("{disp32} mov       ecx, dword ptr [edi + 0x00000200]");             // 0x0076322b    8b8f00020000
    asm("test               ecx, ecx");                                      // 0x00763231    85c9
    asm("{disp8} jne        _jmp_addr_0x00763242");                          // 0x00763233    750d
    asm("push               0x1");                                           // 0x00763235    6a01
    asm("push               edi");                                           // 0x00763237    57
    asm("mov.s              ecx, esi");                                      // 0x00763238    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x0076323a    e8e192e8ff
    asm("pop                edi");                                           // 0x0076323f    5f
    asm("pop                esi");                                           // 0x00763240    5e
    asm("ret");                                                              // 0x00763241    c3
    asm("_jmp_addr_0x00763242:");
    asm("cmp                ecx, 0x01");                                     // 0x00763242    83f901
    asm("{disp8} jne        _jmp_addr_0x00763253");                          // 0x00763245    750c
    asm("push               ecx");                                           // 0x00763247    51
    asm("push               eax");                                           // 0x00763248    50
    asm("mov.s              ecx, esi");                                      // 0x00763249    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x0076324b    e8d092e8ff
    asm("pop                edi");                                           // 0x00763250    5f
    asm("pop                esi");                                           // 0x00763251    5e
    asm("ret");                                                              // 0x00763252    c3
    asm("_jmp_addr_0x00763253:");
    asm("cmp                ecx, 0x04");                                     // 0x00763253    83f904
    asm("{disp8} jne        _jmp_addr_0x00763277");                          // 0x00763256    751f
    asm("mov                edx, dword ptr [esi]");                          // 0x00763258    8b16
    asm(".byte              0x66, 0x81, 0xa6, 0xe0, 0x0, 0x0, 0x0, 0x7f, 0xff");// and word ptr [esi + 0x000000e0], -0x0081 // 0x0076325a    6681a6e00000007fff
    asm("mov.s              ecx, esi");                                      // 0x00763263    8bce
    asm("call               dword ptr [edx + 0x8c8]");                       // 0x00763265    ff92c8080000
    asm("cmp                eax, 0x01");                                     // 0x0076326b    83f801
    asm("{disp8} je         _jmp_addr_0x00763277");                          // 0x0076326e    7407
    asm("mov.s              ecx, esi");                                      // 0x00763270    8bce
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x00763272    e8f9cfffff
    asm("_jmp_addr_0x00763277:");
    asm("pop                edi");                                           // 0x00763277    5f
    asm("mov                eax, 0x00000001");                               // 0x00763278    b801000000
    asm("pop                esi");                                           // 0x0076327d    5e
    asm("ret");                                                              // 0x0076327e    c3
    __builtin_unreachable();
}

bool32_t __fastcall ExitFootball__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               ebx");                                           // 0x00763280    53
    asm("push               esi");                                           // 0x00763281    56
    asm("mov.s              esi, ecx");                                      // 0x00763282    8bf1
    asm("push               esi");                                           // 0x00763284    56
    asm("{disp8} lea        ecx, dword ptr [esi + 0x70]");                   // 0x00763285    8d4e70
    asm("call               _jmp_addr_0x0060a9f0");                          // 0x00763288    e86377eaff
    asm("{disp8} mov        ebx, dword ptr [esp + 0x0c]");                   // 0x0076328d    8b5c240c
    asm("mov                eax, dword ptr [esi]");                          // 0x00763291    8b06
    asm("mov.s              ecx, ebx");                                      // 0x00763293    8bcb
    asm("and                ecx, 0x000000ff");                               // 0x00763295    81e1ff000000
    asm("push               ecx");                                           // 0x0076329b    51
    asm("mov.s              ecx, esi");                                      // 0x0076329c    8bce
    asm("call               dword ptr [eax + 0x96c]");                       // 0x0076329e    ff906c090000
    asm("test               eax, eax");                                      // 0x007632a4    85c0
    asm("{disp8} jne        _jmp_addr_0x007632f7");                          // 0x007632a6    754f
    asm("cmp                bl, 0x01");                                      // 0x007632a8    80fb01
    asm("{disp8} je         _jmp_addr_0x007632f7");                          // 0x007632ab    744a
    asm("cmp                bl, 0x02");                                      // 0x007632ad    80fb02
    asm("{disp8} je         _jmp_addr_0x007632f7");                          // 0x007632b0    7445
    asm("push               edi");                                           // 0x007632b2    57
    asm("mov.s              ecx, esi");                                      // 0x007632b3    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x007632b5    e8e6ebfeff
    asm("mov.s              edi, eax");                                      // 0x007632ba    8bf8
    asm("cmp                dword ptr [edi + 0x00000254], esi");             // 0x007632bc    39b754020000
    asm("{disp8} jne        _jmp_addr_0x007632ce");                          // 0x007632c2    750a
    asm("{disp32} mov       dword ptr [edi + 0x00000254], 0x00000000");      // 0x007632c4    c7875402000000000000
    asm("_jmp_addr_0x007632ce:");
    asm("push               esi");                                           // 0x007632ce    56
    asm("mov.s              ecx, edi");                                      // 0x007632cf    8bcf
    asm("call               _jmp_addr_0x005325d0");                          // 0x007632d1    e8faf2dcff
    asm("cmp                eax, 0x01");                                     // 0x007632d6    83f801
    asm("{disp8} je         _jmp_addr_0x007632e3");                          // 0x007632d9    7408
    asm("push               esi");                                           // 0x007632db    56
    asm("mov.s              ecx, edi");                                      // 0x007632dc    8bcf
    asm("call               _jmp_addr_0x005326e0");                          // 0x007632de    e8fdf3dcff
    asm("_jmp_addr_0x007632e3:");
    asm(".byte              0x66, 0x81, 0xa6, 0xe0, 0x0, 0x0, 0x0, 0x7f, 0xff");// and word ptr [esi + 0x000000e0], -0x0081 // 0x007632e3    6681a6e00000007fff
    asm("pop                edi");                                           // 0x007632ec    5f
    asm("pop                esi");                                           // 0x007632ed    5e
    asm("mov                eax, 0x00000001");                               // 0x007632ee    b801000000
    asm("pop                ebx");                                           // 0x007632f3    5b
    asm("ret                0x0004");                                        // 0x007632f4    c20400
    asm("_jmp_addr_0x007632f7:");
    asm("pop                esi");                                           // 0x007632f7    5e
    asm("mov                eax, 0x00000001");                               // 0x007632f8    b801000000
    asm("pop                ebx");                                           // 0x007632fd    5b
    asm("ret                0x0004");                                        // 0x007632fe    c20400
    __builtin_unreachable();
}
