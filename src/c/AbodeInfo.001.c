#include "AbodeInfo.h"

void __cdecl __CRTInit_GAbodeInfoArray(void)
{
  dynamic_initializer_for_AbodeInfos();
  _register_global_dtor_for_AbodeInfos();
}

__attribute__((noinline))
void __cdecl dynamic_initializer_for_AbodeInfos(void)
{
  __asm__(
    "mov eax, OFFSET _AbodeInfos\n"                         // 0x00401180    b890c6c300
    "mov              ecx, 0x00000093\n"                    // 0x00401185    b993000000
    "xor.s            edx, edx\n"                           // 0x0040118a    33d2

    "_jmp_addr_0x0040118c:\n"
    "mov    DWORD PTR [eax], OFFSET ??_7Base@@6B@\n"        // 0x0040118c    c700449a8a00
    "{disp8} mov      dword ptr [eax + 0x04], edx\n"        // 0x00401192    895004
    "{disp8} mov      dword ptr [eax + 0x08], edx\n"        // 0x00401195    895008
    "mov    DWORD PTR [eax], OFFSET ??_7GAbodeInfo@@6B@\n"  // 0x00401198    c700f8998a00
    "add              eax, 0x000001c8\n"                    // 0x0040119e    05c8010000
    "dec              ecx\n"                                // 0x004011a3    49
    "{disp8} jne      _jmp_addr_0x0040118c\n"               // 0x004011a4    75e6
  );
}