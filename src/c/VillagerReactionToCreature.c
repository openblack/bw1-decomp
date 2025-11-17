#include "Villager.h"
#include "Town.h"

void __cdecl globl_ct_0x007675b0(void)
{
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]");          // 0x007675b0    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x007675b6    b001
    asm("test               al, cl");                                        // 0x007675b8    84c8
    asm("{disp8} jne        _jmp_addr_0x007675c4");                          // 0x007675ba    7508
    asm("or.s               cl, al");                                        // 0x007675bc    0ac8
    asm("{disp32} mov       byte ptr [data_bytes + 0x5e6934], cl");          // 0x007675be    880d34c9fa00
    asm("_jmp_addr_0x007675c4:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x007675d0");   // 0x007675c4    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x007675d0(void)
{
    asm("push               0x00407870");                                    // 0x007675d0    6870784000
    asm("call               _atexit");                                       // 0x007675d5    e8b7e10500
    asm("pop                ecx");                                           // 0x007675da    59
    asm("ret");                                                              // 0x007675db    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x007675e0(void)
{
    asm("{disp32} jmp       _FUN_007675f0__8VillagerFv");                    // 0x007675e0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_007675f0__8VillagerFv(void)
{
    asm("{disp32} fld       dword ptr [rdata_bytes + 0xf19ec]");             // 0x007675f0    d905eca99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0xf19e8]");             // 0x007675f6    d80de8a99900
    asm("{disp32} fstp      dword ptr [data_bytes + 0x3f3e40]");             // 0x007675fc    d91d409edb00
    asm("ret");                                                              // 0x00767602    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00767610(void)
{
    asm("{disp32} jmp       _FUN_00767620__8VillagerFv");                    // 0x00767610    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00767620__8VillagerFv(void)
{
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3e3c], 0xffffffff");  // 0x00767620    c7053c9edb00ffffffff
    asm("ret");                                                              // 0x0076762a    c3
    __builtin_unreachable();
}
