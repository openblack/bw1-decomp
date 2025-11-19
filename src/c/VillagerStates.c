#include "Villager.h"
#include "VillagerStateTableInfo.h"

void __cdecl globl_ct_0x00769470(void)
{
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]");          // 0x00769470    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00769476    b001
    asm("test               al, cl");                                        // 0x00769478    84c8
    asm("{disp8} jne        _jmp_addr_0x00769484");                          // 0x0076947a    7508
    asm("or.s               cl, al");                                        // 0x0076947c    0ac8
    asm("{disp32} mov       byte ptr [data_bytes + 0x5e6934], cl");          // 0x0076947e    880d34c9fa00
    asm("_jmp_addr_0x00769484:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00769490");   // 0x00769484    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00769490(void)
{
    asm("push               0x00407870");                                    // 0x00769490    6870784000
    asm("call               _atexit");                                       // 0x00769495    e8f7c20500
    asm("pop                ecx");                                           // 0x0076949a    59
    asm("ret");                                                              // 0x0076949b    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x007694a0(void)
{
    asm("{disp32} jmp       _FUN_007694b0__8VillagerFv");                    // 0x007694a0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_007694b0__8VillagerFv(void)
{
    asm("{disp32} mov       dword ptr [data_bytes + 0x405154], 0x3e000000");  // 0x007694b0    c70554b1dc000000003e
    asm("ret");                                                              // 0x007694ba    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x007694c0(void)
{
    asm("{disp32} jmp       _FUN_007694d0__8VillagerFv");                    // 0x007694c0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_007694d0__8VillagerFv(void)
{
    asm("{disp32} fld       dword ptr [rdata_bytes + 0xf1a14]");             // 0x007694d0    d90514aa9900
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x007694d6    d80db4a38a00
    asm("{disp32} fstp      dword ptr [data_bytes + 0x40515c]");             // 0x007694dc    d91d5cb1dc00
    asm("ret");                                                              // 0x007694e2    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x007694f0(void)
{
    asm("{disp32} jmp       _FUN_00769500__8VillagerFv");                    // 0x007694f0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00769500__8VillagerFv(void)
{
    asm("{disp32} fld       dword ptr [rdata_bytes + 0xf1a1c]");             // 0x00769500    d9051caa9900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0xf1a18]");             // 0x00769506    d80d18aa9900
    asm("{disp32} fstp      dword ptr [data_bytes + 0x3f3e5c]");             // 0x0076950c    d91d5c9edb00
    asm("ret");                                                              // 0x00769512    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00769520(void)
{
    asm("{disp32} jmp       _FUN_00769530__8VillagerFv");                    // 0x00769530    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00769530__8VillagerFv(void)
{
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3e64], 0xffffffff");  // 0x00769530    c705649edb00ffffffff
    asm("ret");                                                              // 0x0076953a    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00769540(void)
{
    asm("call               _FUN_00769550__8VillagerFv");                    // 0x00769540    e80b000000
    asm("{disp32} jmp       _FUN_007695a0__8VillagerFv");                    // 0x00769545    e956000000
    __builtin_unreachable();
}

void __cdecl FUN_00769550__8VillagerFv(void)
{
    asm("mov                eax, OFFSET _GVillagerStateTableInfo_ARRAY_00db9e68");  // 0x00769550    b8689edb00
    asm("mov                ecx, 0x000000ff");                               // 0x00769555    b9ff000000
    asm("xor.s              edx, edx");                                      // 0x0076955a    33d2
    asm("_jmp_addr_0x0076955c:");
    asm(".byte 0xc7, 0x00, 0x44, 0x9a\n.byte 0x8a, 0x00");                   // 0x0076955c    c700449a8a00 (movl               $??_7Base@@6B@, (%eax))
    asm("{disp8} mov        dword ptr [eax + 0x04], edx");                   // 0x00769562    895004
    asm("{disp8} mov        dword ptr [eax + 0x08], edx");                   // 0x00769565    895008
    asm("mov                dword ptr [eax], 0x0099aa24");                   // 0x00769568    c70024aa9900
    asm("add                eax, 0x00000114");                               // 0x0076956e    0514010000
    asm("dec                ecx");                                           // 0x00769573    49
    asm("{disp8} jne        _jmp_addr_0x0076955c");                          // 0x00769574    75e6
    asm("ret");                                                              // 0x00769576    c3
    __builtin_unreachable();
}

struct GBaseInfo* __fastcall GetBaseInfo__23GVillagerStateTableInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                     // 0x00769580    8b442404
    asm("mov                dword ptr [eax], 0x000000ff");                     // 0x00769584    c700ff000000
    asm("mov                eax, OFFSET _GVillagerStateTableInfo_ARRAY_00db9e68");  // 0x0076958a    b8689edb00
    asm("ret                0x0004");                                          // 0x0076958f    c20400
    __builtin_unreachable();
}

void __cdecl FUN_007695a0__8VillagerFv(void)
{
    asm("push               0x007695b0"); /* FUN_007695b0__8VillagerFv */    // 0x007695a0    68b0957600
    asm("call               _atexit");                                       // 0x007695a5    e8e7c10500
    asm("pop                ecx");                                           // 0x007695aa    59
    asm("ret");                                                              // 0x007695ab    c3
    __builtin_unreachable();
}

void __cdecl FUN_007695b0__8VillagerFv(void)
{
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x3f3e60]");          // 0x007695b0    8a0d609edb00
    asm("mov                al, 0x01");                                      // 0x007695b6    b001
    asm("test               al, cl");                                        // 0x007695b8    84c8
    asm("{disp8} jne        _jmp_addr_0x007695e2");                          // 0x007695ba    7526
    asm("push               esi");                                           // 0x007695bc    56
    asm("or.s               cl, al");                                        // 0x007695bd    0ac8
    asm("push               edi");                                           // 0x007695bf    57
    asm("{disp32} mov       byte ptr [data_bytes + 0x3f3e60], cl");          // 0x007695c0    880d609edb00
    asm("mov                esi, 0x00dcb154");                               // 0x007695c6    be54b1dc00
    asm("mov                edi, 0x000000ff");                               // 0x007695cb    bfff000000
    asm("_jmp_addr_0x007695d0:");
    asm("sub                esi, 0x00000114");                               // 0x007695d0    81ee14010000
    asm("mov.s              ecx, esi");                                      // 0x007695d6    8bce
    asm("call               _jmp_addr_0x00436960");                          // 0x007695d8    e883d3ccff
    asm("dec                edi");                                           // 0x007695dd    4f
    asm("{disp8} jne        _jmp_addr_0x007695d0");                          // 0x007695de    75f0
    asm("pop                edi");                                           // 0x007695e0    5f
    asm("pop                esi");                                           // 0x007695e1    5e
    asm("_jmp_addr_0x007695e2:");
}
