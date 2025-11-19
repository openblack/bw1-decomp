#include "Villager.h"

void __cdecl globl_ct_0x00768b80(void)
{
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]");          // 0x00768b80    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00768b86    b001
    asm("test               al, cl");                                        // 0x00768b88    84c8
    asm("{disp8} jne        _jmp_addr_0x00768b94");                          // 0x00768b8a    7508
    asm("or.s               cl, al");                                        // 0x00768b8c    0ac8
    asm("{disp32} mov       byte ptr [data_bytes + 0x5e6934], cl");          // 0x00768b8e    880d34c9fa00
    asm("_jmp_addr_0x00768b94:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00768ba0");   // 0x00768b94    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00768ba0(void)
{
    asm("push               0x00407870");                                    // 0x00768ba0    6870784000
    asm("call               _atexit");                                       // 0x00768ba5    e8e7cb0500
    asm("pop                ecx");                                           // 0x00768baa    59
    asm("ret");                                                              // 0x00768bab    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00768bb0(void)
{
    asm("{disp32} jmp       _FUN_00768bc0__8VillagerFv");                    // 0x00768bb0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00768bc0__8VillagerFv(void)
{
    asm("{disp32} fld       dword ptr [rdata_bytes + 0xf1a08]");             // 0x00768bc0    d90508aa9900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0xf1a04]");             // 0x00768bc6    d80d04aa9900
    asm("{disp32} fstp      dword ptr [data_bytes + 0x3f3e54]");             // 0x00768bcc    d91d549edb00
    asm("ret");                                                              // 0x00768bd2    c3
    __builtin_unreachable();
}
