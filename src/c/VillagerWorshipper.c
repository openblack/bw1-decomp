#include "Villager.h"

void __cdecl globl_ct_0x0076b9e0(void)
{
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]");          // 0x0076b9e0    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x0076b9e6    b001
    asm("test               al, cl");                                        // 0x0076b9e8    84c8
    asm("{disp8} jne        _jmp_addr_0x0076b9f4");                          // 0x0076b9ea    7508
    asm("or.s               cl, al");                                        // 0x0076b9ec    0ac8
    asm("{disp32} mov       byte ptr [data_bytes + 0x5e6934], cl");          // 0x0076b9ee    880d34c9fa00
    asm("_jmp_addr_0x0076b9f4:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x0076ba00");   // 0x0076b9f4    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x0076ba00(void)
{
    asm("push               0x00407870");                                    // 0x0076ba00    6870784000
    asm("call               _atexit");                                       // 0x0076ba05    e8879d0500
    asm("pop                ecx");                                           // 0x0076ba0a    59
    asm("ret");                                                              // 0x0076ba0b    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x0076ba10(void)
{
    asm("{disp32} jmp       _FUN_0076ba20__8VillagerFv");                    // 0x0076ba20    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_0076ba20__8VillagerFv(void)
{
    asm("{disp32} fld       dword ptr [rdata_bytes + 0xf1a60]");             // 0x0076ba20    d90560aa9900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0xf1a5c]");             // 0x0076ba26    d80d5caa9900
    asm("{disp32} fstp      dword ptr [data_bytes + 0x405170]");             // 0x0076ba2c    d91d70b1dc00
    asm("ret");                                                              // 0x0076ba32    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x0076ba40(void)
{
    asm("{disp32} jmp       _FUN_0076ba50__8VillagerFv");                    // 0x0076ba40    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_0076ba50__8VillagerFv(void)
{
    asm("{disp32} mov       dword ptr [data_bytes + 0x40516c], 0xffffffff");  // 0x0076ba50    c7056cb1dc00ffffffff
    asm("ret");                                                              // 0x0076ba5a    c3
    __builtin_unreachable();
}
