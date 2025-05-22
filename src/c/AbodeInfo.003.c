#include "AbodeInfo.h"

void __cdecl dynamic_atexit_destructor_for_AbodeInfos(void) asm("??__FAbodeInfos@@YAXXZ");
extern void __stdcall atexit(void*);

void __cdecl _register_global_dtor_for_AbodeInfos(void)
{
  atexit(dynamic_atexit_destructor_for_AbodeInfos);
  __asm__("pop ecx");                      // 0x004012da    59
  __asm__("ret");                          // 0x004012db    c3
  // SEH?
  __asm__(".byte 0x90, 0x25, 0xa2, 0x03"); // 0x004012dc
  __builtin_unreachable();
}

void __cdecl dynamic_atexit_destructor_for_AbodeInfos(void)
{
  __asm__(
    "{disp32} mov       cl, byte ptr [_abode_info_bool_00c3c680]\n"     // 0x004012e0    8a0d80c6c300
    "mov                al, 0x01\n"                                     // 0x004012e6    b001
    "test               al, cl\n"                                       // 0x004012e8    84c8
    "{disp8} jne        _jmp_addr_0x00401312\n"                         // 0x004012ea    7526
    "push               esi\n"                                          // 0x004012ec    56
    "or.s               cl, al\n"                                       // 0x004012ed    0ac8
    "push               edi\n"                                          // 0x004012ef    57
    "{disp32} mov       byte ptr [_abode_info_bool_00c3c680], cl\n"     // 0x004012f0    880d80c6c300
    "mov                esi, OFFSET _AbodeInfos + 0x93 * 0x1c8;\n"      // 0x004012f6    be68ccc400
    "mov                edi, 0x93\n"                                    // 0x004012fb    bf93000000
    "_jmp_addr_0x00401300:\n"
    "sub                esi, 0x1c8\n"                                   // 0x00401300    81eec8010000
    "mov.s              ecx, esi\n"                                     // 0x00401306    8bce
    "call               _jmp_addr_0x00436960\n"                         // 0x00401308    e853560300
    "dec                edi\n"                                          // 0x0040130d    4f
    "{disp8} jne        _jmp_addr_0x00401300\n"                         // 0x0040130e    75f0
    "pop                edi\n"                                          // 0x00401310    5f
    "pop                esi\n"                                          // 0x00401311    5e
    "_jmp_addr_0x00401312:\n"
    "ret\n"                                                             // 0x00401312    c3
  );
  __builtin_unreachable();
}
