#include "Villager.h"

void __cdecl globl_ct_0x00763080(void)
{
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]");          // 0x00763080    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00763086    b001
    asm("test               al, cl");                                        // 0x00763088    84c8
    asm("{disp8} jne        _jmp_addr_0x00762694");                          // 0x0076308a    7508
    asm("or.s               cl, al");                                        // 0x0076308c    0ac8
    asm("{disp32} mov       byte ptr [data_bytes + 0x5e6934], cl");          // 0x0076308e    880d34c9fa00
    asm("_jmp_addr_0x00762694:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x007630a0");   // 0x00763094    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x007630a0(void)
{
    asm("push               0x00407870");                                    // 0x007630a0    6870784000
    asm("call               _atexit");                                       // 0x007630a5    e8e7260600
    asm("pop                ecx");                                           // 0x007630aa    59
    asm("ret");                                                              // 0x007630ab    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x007630b0(void)
{
    asm("{disp32} jmp       _FUN_007630c0__8VillagerFv");                    // 0x007630b0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_007630c0__8VillagerFv(void)
{
    asm("{disp32} fld       dword ptr [rdata_bytes + 0xf19c8]");             // 0x007630c0    d905c8a99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0xf19c4]");             // 0x007630c6    d80dc4a99900
    asm("{disp32} fstp      dword ptr [data_bytes + 0x3f3e2c]");             // 0x007630cc    d91d2c9edb00
    asm("ret");                                                              // 0x007630d2    c3
    __builtin_unreachable();
}
