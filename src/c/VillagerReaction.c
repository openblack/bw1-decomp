#include "Villager.h"

void __cdecl globl_ct_0x00763310(void)
{
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]");          // 0x00763310    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00763316    b001
    asm("test               al, cl");                                        // 0x00763318    84c8
    asm("{disp8} jne        _jmp_addr_0x00763324");                          // 0x0076331a    7508
    asm("or.s               cl, al");                                        // 0x0076331c    0ac8
    asm("{disp32} mov       byte ptr [data_bytes + 0x5e6934], cl");          // 0x0076331e    880d34c9fa00
    asm("_jmp_addr_0x00763324:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00763330");   // 0x00763324    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00763330(void)
{
    asm("push               0x00407870");                                    // 0x00763330    6870784000
    asm("call               _atexit");                                       // 0x00763335    e857240600
    asm("pop                ecx");                                           // 0x0076333a    59
    asm("ret");                                                              // 0x0076333b    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00763340(void)
{
    asm("{disp32} jmp       _FUN_00763350__8VillagerFv");                    // 0x00763350    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00763350__8VillagerFv(void)
{
    asm("{disp32} fld       dword ptr [rdata_bytes + 0xf19d8]");             // 0x00763350    d905d8a99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0xf19d4]");             // 0x00763356    d80dd4a99900
    asm("{disp32} fstp      dword ptr [data_bytes + 0x3f3e34]");             // 0x0076335c    d91d349edb00
    asm("ret");                                                              // 0x00763362    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00763370(void)
{
    asm("{disp32} jmp       _FUN_00763380__8VillagerFv");                    // 0x00763370    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00763380__8VillagerFv(void)
{
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3e30], 0xffffffff");  // 0x00763380    c705309edb00ffffffff
    asm("ret");                                                              // 0x0076338a    c3
    __builtin_unreachable();
}
