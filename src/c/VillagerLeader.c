#include "Villager.h"

void __cdecl globl_ct_0x00762680(void)
{
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]");          // 0x00762680    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00762686    b001
    asm("test               al, cl");                                        // 0x00762688    84c8
    asm("{disp8} jne        _jmp_addr_0x00762694");                          // 0x0076268a    7508
    asm("or.s               cl, al");                                        // 0x0076268c    0ac8
    asm("{disp32} mov       byte ptr [data_bytes + 0x5e6934], cl");          // 0x0076268e    880d34c9fa00
    asm("_jmp_addr_0x00762694:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x007626a0");   // 0x00762694    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x007626a0(void)
{
    asm("push               0x00407870");                                    // 0x007626a0    6870784000
    asm("call               _atexit");                                       // 0x007626a5    e8e7300600
    asm("pop                ecx");                                           // 0x007626aa    59
    asm("ret");                                                              // 0x007626ab    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x007626b0(void)
{
    asm("{disp32} jmp       _FUN_007626c0__8VillagerFv");                    // 0x007626b0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_007626c0__8VillagerFv(void)
{
    asm("{disp32} fld       dword ptr [rdata_bytes + 0xf19b4]");             // 0x007626c0    d905b4a99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0xf19b0]");             // 0x007626c6    d80db0a99900
    asm("{disp32} fstp      dword ptr [data_bytes + 0x3f3e20]");             // 0x007626cc    d91d209edb00
    asm("ret");                                                              // 0x007626d2    c3
    __builtin_unreachable();
}
