#include "Villager.h"

void __cdecl globl_ct_0x007685b0(void)
{
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]");          // 0x007685b0    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x007685b6    b001
    asm("test               al, cl");                                        // 0x007685b8    84c8
    asm("{disp8} jne        _jmp_addr_0x007685c4");                          // 0x007685ba    7508
    asm("or.s               cl, al");                                        // 0x007685bc    0ac8
    asm("{disp32} mov       byte ptr [data_bytes + 0x5e6934], cl");          // 0x007685be    880d34c9fa00
    asm("_jmp_addr_0x007685c4:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x007685d0");   // 0x007685c4    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x007685d0(void)
{
    asm("push               0x00407870");                                    // 0x007685d0    6870784000
    asm("call               _atexit");                                       // 0x007685d5    e8b7d10500
    asm("pop                ecx");                                           // 0x007685da    59
    asm("ret");                                                              // 0x007685db    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x007685e0(void)
{
    asm("{disp32} jmp       _FUN_007685f0__8VillagerFv");                    // 0x007685e0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_007685f0__8VillagerFv(void)
{
    asm("{disp32} fld       dword ptr [rdata_bytes + 0xf19fc]");             // 0x007685f0    d905fca99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0xf19f8]");             // 0x007685f6    d80df8a99900
    asm("{disp32} fstp      dword ptr [data_bytes + 0x3f3e4c]");             // 0x007685fc    d91d4c9edb00
    asm("ret");                                                              // 0x00768602    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00768610(void)
{
    asm("{disp32} jmp       _FUN_00768620__8VillagerFv");                    // 0x00768610    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00768620__8VillagerFv(void)
{
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3e48], 0xffffffff");  // 0x00768620    c705489edb00ffffffff
    asm("ret");                                                              // 0x0076862a    c3
    __builtin_unreachable();
}
