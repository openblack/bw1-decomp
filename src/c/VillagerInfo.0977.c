#include "VillagerInfo.h"

__attribute__((XOR32rr_REV))
struct GVillagerInfo* __cdecl Find__13GVillagerInfoF10TRIBE_TYPE15VILLAGER_NUMBER(enum TRIBE_TYPE type, int villager_number)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x00752650    8b542408
    asm("push               esi");                                           // 0x00752654    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x08]");                   // 0x00752655    8b742408
    asm("mov                eax, OFFSET _GVillagerInfo_ARRAY_00da6be8");     // 0x00752659    b8e86bda00
    asm("mov                ecx, 0x00da6de4");                               // 0x0075265e    b9e46dda00
    asm("_jmp_addr_0x00752663:");
    asm("cmp                dword ptr [ecx + -0x08], esi");                  // 0x00752663    3971f8
    asm("{disp8} jne        _jmp_addr_0x0075266c");                          // 0x00752666    7504
    asm("cmp                dword ptr [ecx], edx");                          // 0x00752668    3911
    asm("{disp8} je         _jmp_addr_0x00752681");                          // 0x0075266a    7415
    asm("_jmp_addr_0x0075266c:");
    asm("add                ecx, 0x000003a4");                               // 0x0075266c    81c1a4030000
    asm("add                eax, 0x000003a4");                               // 0x00752672    05a4030000
    asm("cmp                ecx, 0x00db9fb4");                               // 0x00752677    81f9b49fdb00
    asm(".byte              0x72, 0xe4");// {disp8} jb _jmp_addr_0x00752663  // 0x0075267d    72e4
    asm("xor.s              eax, eax");                                      // 0x0075267f    33c0
    asm("_jmp_addr_0x00752681:");
    asm("pop                esi");                                           // 0x00752681    5e
    asm("ret");                                                              // 0x00752682    c3
    __builtin_unreachable();
}
