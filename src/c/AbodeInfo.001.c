#include "AbodeInfo.h"

void __cdecl crt_global_initialize_for_AbodeInfos__10GAbodeInfoFv(void)
{
  dynamic_initializer_for_AbodeInfos__10GAbodeInfoFv();
  crt_global_destruction_register_for_AbodeInfos__10GAbodeInfoFv();
}

__attribute__((noinline))
void __cdecl dynamic_initializer_for_AbodeInfos__10GAbodeInfoFv(void)
{
    asm("mov eax, OFFSET _AbodeInfos");                         // 0x00401180    b890c6c300
    asm("mov              ecx, 0x00000093");                    // 0x00401185    b993000000
    asm("xor.s            edx, edx");                           // 0x0040118a    33d2

    asm("_jmp_addr_0x0040118c:");
    asm("mov    DWORD PTR [eax], OFFSET ??_7Base@@6B@");        // 0x0040118c    c700449a8a00
    asm("{disp8} mov      dword ptr [eax + 0x04], edx");        // 0x00401192    895004
    asm("{disp8} mov      dword ptr [eax + 0x08], edx");        // 0x00401195    895008
    asm("mov    DWORD PTR [eax], OFFSET ??_7GAbodeInfo@@6B@");  // 0x00401198    c700f8998a00
    asm("add              eax, 0x000001c8");                    // 0x0040119e    05c8010000
    asm("dec              ecx");                                // 0x004011a3    49
    asm("{disp8} jne      _jmp_addr_0x0040118c");               // 0x004011a4    75e6
}
