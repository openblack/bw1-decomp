#include "VillagerInfo.h"

__attribute__((XOR32rr_REV))
int __cdecl GetInfoFromText__13GVillagerInfoFPc(char* text)
{
    asm("sub                esp, 0x08");                                     // 0x007519e0    83ec08
    asm("push               ebx");                                           // 0x007519e3    53
    asm("push               ebp");                                           // 0x007519e4    55
    asm("push               esi");                                           // 0x007519e5    56
    asm("push               edi");                                           // 0x007519e6    57
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x007519e7    c744241400000000
    asm("{disp8} mov        dword ptr [esp + 0x10], OFFSET _GVillagerInfo_ARRAY_00da6be8");            // 0x007519ef    c7442410e86bda00
    asm("mov                ebp, 0x00da57b8");                               // 0x007519f7    bdb857da00
    asm("_jmp_addr_0x007519fc:");
    asm("{disp8} mov        eax, dword ptr [ebp + 0x00]");                   // 0x007519fc    8b4500
    asm("{disp32} mov       edx, dword ptr [eax * 0x4 + 0x00c22fdc]");       // 0x007519ff    8b1485dc2fc200
    asm("{disp8} mov        ebx, dword ptr [esp + 0x1c]");                   // 0x00751a06    8b5c241c
    asm("or                 ecx, 0xffffffff");                               // 0x00751a0a    83c9ff
    asm("xor.s              eax, eax");                                      // 0x00751a0d    33c0
    asm("mov.s              edi, edx");                                      // 0x00751a0f    8bfa
    asm("repne scasb");                                                      // 0x00751a11    f2ae
    asm("not                ecx");                                           // 0x00751a13    f7d1
    asm("dec                ecx");                                           // 0x00751a15    49
    asm("mov.s              edi, ecx");                                      // 0x00751a16    8bf9
    asm("push               edi");                                           // 0x00751a18    57
    asm("push               edx");                                           // 0x00751a19    52
    asm("push               ebx");                                           // 0x00751a1a    53
    asm("call               __strnicmp");                                    // 0x00751a1b    e8f08c0800
    asm("add                esp, 0x0c");                                     // 0x00751a20    83c40c
    asm("test               eax, eax");                                      // 0x00751a23    85c0
    asm("{disp8} jne        _jmp_addr_0x00751a58");                          // 0x00751a25    7531
    asm("cmp                byte ptr [edi + ebx * 0x1], 0x5f");              // 0x00751a27    803c1f5f
    asm("{disp8} jne        _jmp_addr_0x00751a58");                          // 0x00751a2b    752b
    asm("{disp8} lea        ebx, dword ptr [edi + ebx * 0x1 + 0x01]");       // 0x00751a2d    8d5c1f01
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                   // 0x00751a31    8b7c2410
    asm("xor.s              esi, esi");                                      // 0x00751a35    33f6
    asm("_jmp_addr_0x00751a37:");
    asm("mov.s              ecx, edi");                                      // 0x00751a37    8bcf
    asm("call               ?GetTribeTextArray@GTribeInfo@@QAEPADXZ");       // 0x00751a39    e862000000
    asm("push               eax");                                           // 0x00751a3e    50
    asm("push               ebx");                                           // 0x00751a3f    53
    asm("call               __strcmpi");                                     // 0x00751a40    e89b520700
    asm("add                esp, 0x08");                                     // 0x00751a45    83c408
    asm("test               eax, eax");                                      // 0x00751a48    85c0
    asm("{disp8} je         _jmp_addr_0x00751a87");                          // 0x00751a4a    743b
    asm("inc                esi");                                           // 0x00751a4c    46
    asm("add                edi, 0x000003a4");                               // 0x00751a4d    81c7a4030000
    asm("cmp                esi, 0x07");                                     // 0x00751a53    83fe07
    asm(".byte              0x72, 0xdf");// {disp8} jb _jmp_addr_0x00751a37  // 0x00751a56    72df
    asm("_jmp_addr_0x00751a58:");
    asm("{disp8} mov        esi, dword ptr [esp + 0x14]");                   // 0x00751a58    8b742414
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00751a5c    8b4c2410
    asm("inc                esi");                                           // 0x00751a60    46
    asm("add                ebp, 0x1c");                                     // 0x00751a61    83c51c
    asm("add                ecx, 0x0000197c");                               // 0x00751a64    81c17c190000
    asm("cmp                ebp, 0x00da58b4");                               // 0x00751a6a    81fdb458da00
    asm("{disp8} mov        dword ptr [esp + 0x14], esi");                   // 0x00751a70    89742414
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x00751a74    894c2410
    asm(".byte              0x72, 0x82");// {disp8} jb _jmp_addr_0x007519fc  // 0x00751a78    7282
    asm("pop                edi");                                           // 0x00751a7a    5f
    asm("pop                esi");                                           // 0x00751a7b    5e
    asm("pop                ebp");                                           // 0x00751a7c    5d
    asm("mov                eax, 0x00000054");                               // 0x00751a7d    b854000000
    asm("pop                ebx");                                           // 0x00751a82    5b
    asm("add                esp, 0x08");                                     // 0x00751a83    83c408
    asm("ret");                                                              // 0x00751a86    c3
    asm("_jmp_addr_0x00751a87:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x00751a87    8b4c2414
    asm("{disp32} lea       eax, dword ptr [ecx * 0x8 + 0x00000000]");       // 0x00751a8b    8d04cd00000000
    asm("pop                edi");                                           // 0x00751a92    5f
    asm("sub.s              eax, ecx");                                      // 0x00751a93    2bc1
    asm("add.s              eax, esi");                                      // 0x00751a95    03c6
    asm("pop                esi");                                           // 0x00751a97    5e
    asm("pop                ebp");                                           // 0x00751a98    5d
    asm("pop                ebx");                                           // 0x00751a99    5b
    asm("add                esp, 0x08");                                     // 0x00751a9a    83c408
    asm("ret");                                                              // 0x00751a9d    c3
    __builtin_unreachable();
}
