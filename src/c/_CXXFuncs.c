void __cdecl __destroy_arr(void* arr, unsigned long size, unsigned long count, void (__fastcall *destructor)(void*)) asm("??_V@YAXPAXKKP6EXXZ@Z");

void __cdecl __destroy_arr(void* arr, unsigned long size, unsigned long count, void (__fastcall *destructor)(void*))
{

  __asm__("{disp8} mov       eax, dword ptr [esp + 0x0c]\n"                   // 0x00401000    8b44240c
          "push              ebx\n"                                           // 0x00401004    53
          "{disp8} mov       ebx, dword ptr [esp + 0x0c]\n"                   // 0x00401005    8b5c240c
          "mov.s             ecx, ebx\n"                                      // 0x00401009    8bcb
          "imul              ecx, eax\n"                                      // 0x0040100b    0fafc8
          "push              esi\n"                                           // 0x0040100e    56
          "{disp8} mov       esi, dword ptr [esp + 0x0c]\n"                   // 0x0040100f    8b74240c
          "add.s             esi, ecx\n"                                      // 0x00401013    03f1
          "dec               eax\n"                                           // 0x00401015    48
          "{disp8} js        _jmp_addr_0x0040102c\n"                          // 0x00401016    7814
          "push              ebp\n"                                           // 0x00401018    55
          "{disp8} mov       ebp, dword ptr [esp + 0x1c]\n"                   // 0x00401019    8b6c241c
          "push              edi\n"                                           // 0x0040101d    57
          "{disp8} lea       edi, dword ptr [eax + 0x01]\n"                   // 0x0040101e    8d7801
          "_jmp_addr_0x00401021:    sub.s             esi, ebx\n"                                      // 0x00401021    2bf3
          "mov.s             ecx, esi\n"                                      // 0x00401023    8bce
          "call              ebp\n"                                           // 0x00401025    ffd5
          "dec               edi\n"                                           // 0x00401027    4f
          "{disp8} jne       _jmp_addr_0x00401021\n"                          // 0x00401028    75f7
          "pop               edi\n"                                           // 0x0040102a    5f
          "pop               ebp\n"                                           // 0x0040102b    5d
          "_jmp_addr_0x0040102c:    pop               esi\n"                                           // 0x0040102c    5e
          "pop               ebx\n"                                           // 0x0040102d    5b
          "ret               0x0010\n"                                        // 0x0040102e    c21000
  );
  __builtin_unreachable();
}