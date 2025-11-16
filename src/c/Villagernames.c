#include "VillagerNames.h"

void __cdecl globl_ct_0x007626f0(void)
{
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]");          // 0x007626f0    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x007626f6    b001
    asm("test               al, cl");                                        // 0x007626f8    84c8
    asm("{disp8} jne        _jmp_addr_0x00762704");                          // 0x007626fa    7508
    asm("or.s               cl, al");                                        // 0x007626fc    0ac8
    asm("{disp32} mov       byte ptr [data_bytes + 0x5e6934], cl");          // 0x007626fe    880d34c9fa00
    asm("_jmp_addr_0x00762704:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00762710");   // 0x00762704    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00762710(void)
{
    asm("push               0x00407870");                                    // 0x00762710    6870784000
    asm("call               _atexit");                                       // 0x00762715    e877300600
    asm("pop                ecx");                                           // 0x0076271a    59
    asm("ret");                                                              // 0x0076271b    c3
    __builtin_unreachable();
}
