#include "PCMain.h"

int __stdcall WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, char* lpCmdLine, int nShowCmd)
{
    asm("sub                esp, 0x0c");                                                               // 0x007dee50    83ec0c
    asm("push               0x0");                                                                     // 0x007dee53    6a00
    asm("call               dword ptr [__imp_?LHRegistrySetCurrentKey@@YAXH@Z]");  // 0x007dee55    ff15b4938a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x04]");                                             // 0x007dee5b    8d442404
    asm("push               eax");                                                                     // 0x007dee5f    50
    asm("push               0x00bf3c18");                                                              // 0x007dee60    68183cbf00
    asm("push               0x00bea5b8");                                                              // 0x007dee65    68b8a5be00
    asm("call               dword ptr [__imp_?RegistryRetrieveULong@@YAHPBD0PAH@Z]");    // 0x007dee6a    ff1544938a00
    asm("add                esp, 0x10");                                                               // 0x007dee70    83c410
    asm("test               eax, eax");                                                                // 0x007dee73    85c0
    asm("{disp8} je         LAB_007dee81");                                                    // 0x007dee75    740a
    asm("{disp8} mov        dword ptr [esp + 0x00], 0x00000000");                                      // 0x007dee77    c744240000000000
    asm("{disp8} jmp        LAB_007deea5");                                                    // 0x007dee7f    eb24

    asm("LAB_007dee81:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x00]");                                             // 0x007dee81    8b442400
    asm("test               eax, eax");                                                                // 0x007dee85    85c0
    asm("{disp8} je         LAB_007deea5");                                                    // 0x007dee87    741c
    asm("push               0x00000101");                                                              // 0x007dee89    6801010000
    asm("push               0x00bec320");                                                              // 0x007dee8e    6820c3be00
    asm("push               0x00c33e14");                                                              // 0x007dee93    68143ec300
    asm("push               0x0");                                                                     // 0x007dee98    6a00
    asm("call               dword ptr [__imp__MessageBoxA@16]");                                       // 0x007dee9a    ff15b8978a00
    asm("cmp                eax, 0x02");                                                               // 0x007deea0    83f802
    asm("{disp8} je         LAB_007deee4");                                                    // 0x007deea3    743f

    asm("LAB_007deea5:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                                             // 0x007deea5    8b4c241c
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");                                             // 0x007deea9    8b542418
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                                             // 0x007deead    8b442414
    asm("push               ecx");                                                                     // 0x007deeb1    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                                             // 0x007deeb2    8b4c2414
    asm("push               edx");                                                                     // 0x007deeb6    52
    asm("push               eax");                                                                     // 0x007deeb7    50
    asm("push               ecx");                                                                     // 0x007deeb8    51
    asm("call               ?jmp_addr_0x007dbc30@@YGXPAUHINSTANCE__@@0PADH@Z");                        // 0x007deeb9    e872cdffff
    asm("{disp8} lea        edx, dword ptr [esp + 0x04]");                                             // 0x007deebe    8d542404
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                                             // 0x007deec2    8d442408
    asm("push               edx");                                                                     // 0x007deec6    52
    asm("push               eax");                                                                     // 0x007deec7    50
    asm("call               ?jmp_addr_0x007db410@@YAXPAHPAPAPAD@Z");                                   // 0x007deec8    e843c5ffff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                                             // 0x007deecd    8b4c240c
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                                             // 0x007deed1    8b542410
    asm("push               ecx");                                                                     // 0x007deed5    51
    asm("push               edx");                                                                     // 0x007deed6    52
    asm("call               ?pc_main__Fv@@YAHHQAPAD@Z");                                               // 0x007deed7    e8842de6ff
    asm("add                esp, 0x10");                                                               // 0x007deedc    83c410
    asm("call               ?jmp_addr_0x007dbed0@@YAXXZ");                                             // 0x007deedf    e8eccfffff

    asm("LAB_007deee4:");
    asm("xor.s              eax, eax");                                                                // 0x007deee4    33c0
    asm("add                esp, 0x0c");                                                               // 0x007deee6    83c40c
    asm("ret                0x0010");                                                                  // 0x007deee9    c21000
    __builtin_unreachable();
}
