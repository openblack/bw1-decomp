#include "PCMain.h"

int __stdcall WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, char* lpCmdLine, int nShowCmd)
{
    __asm__(
        "sub                esp, 0x0c\n"                                                               // 0x007dee50    83ec0c
        "push               0x0\n"                                                                     // 0x007dee53    6a00
        "call               dword ptr [__imp__LHRegistrySetCurrentKey__YAXW4LH_REG_KEY_TYPE___Z@4]\n"  // 0x007dee55    ff15b4938a00
        "{disp8} lea        eax, dword ptr [esp + 0x04]\n"                                             // 0x007dee5b    8d442404
        "push               eax\n"                                                                     // 0x007dee5f    50
        "push               0x00bf3c18\n"                                                              // 0x007dee60    68183cbf00
        "push               0x00bea5b8\n"                                                              // 0x007dee65    68b8a5be00
        "call               dword ptr [__imp__RegistryRetrieveULong__YA_AW4LH_RETURN__PAD0PAK_Z]\n"    // 0x007dee6a    ff1544938a00
        "add                esp, 0x10\n"                                                               // 0x007dee70    83c410
        "test               eax, eax\n"                                                                // 0x007dee73    85c0
        "{disp8} je         _jmp_addr_0x007dee81\n"                                                    // 0x007dee75    740a
        "{disp8} mov        dword ptr [esp + 0x00], 0x00000000\n"                                      // 0x007dee77    c744240000000000
        "{disp8} jmp        _jmp_addr_0x007deea5\n"                                                    // 0x007dee7f    eb24

        "_jmp_addr_0x007dee81: "
        "{disp8} mov        eax, dword ptr [esp + 0x00]\n"                                             // 0x007dee81    8b442400
        "test               eax, eax\n"                                                                // 0x007dee85    85c0
        "{disp8} je         _jmp_addr_0x007deea5\n"                                                    // 0x007dee87    741c
        "push               0x00000101\n"                                                              // 0x007dee89    6801010000
        "push               0x00bec320\n"                                                              // 0x007dee8e    6820c3be00
        "push               0x00c33e14\n"                                                              // 0x007dee93    68143ec300
        "push               0x0\n"                                                                     // 0x007dee98    6a00
        "call               dword ptr [__imp__MessageBoxA@16]\n"                                       // 0x007dee9a    ff15b8978a00
        "cmp                eax, 0x02\n"                                                               // 0x007deea0    83f802
        "{disp8} je         _jmp_addr_0x007deee4\n"                                                    // 0x007deea3    743f

        "_jmp_addr_0x007deea5: "
        "{disp8} mov        ecx, dword ptr [esp + 0x1c]\n"                                             // 0x007deea5    8b4c241c
        "{disp8} mov        edx, dword ptr [esp + 0x18]\n"                                             // 0x007deea9    8b542418
        "{disp8} mov        eax, dword ptr [esp + 0x14]\n"                                             // 0x007deead    8b442414
        "push               ecx\n"                                                                     // 0x007deeb1    51
        "{disp8} mov        ecx, dword ptr [esp + 0x14]\n"                                             // 0x007deeb2    8b4c2414
        "push               edx\n"                                                                     // 0x007deeb6    52
        "push               eax\n"                                                                     // 0x007deeb7    50
        "push               ecx\n"                                                                     // 0x007deeb8    51
        "call               _jmp_addr_0x007dbc30@16\n"                                                 // 0x007deeb9    e872cdffff
        "{disp8} lea        edx, dword ptr [esp + 0x04]\n"                                             // 0x007deebe    8d542404
        "{disp8} lea        eax, dword ptr [esp + 0x08]\n"                                             // 0x007deec2    8d442408
        "push               edx\n"                                                                     // 0x007deec6    52
        "push               eax\n"                                                                     // 0x007deec7    50
        "call               _jmp_addr_0x007db410\n"                                                    // 0x007deec8    e843c5ffff
        "{disp8} mov        ecx, dword ptr [esp + 0x0c]\n"                                             // 0x007deecd    8b4c240c
        "{disp8} mov        edx, dword ptr [esp + 0x10]\n"                                             // 0x007deed1    8b542410
        "push               ecx\n"                                                                     // 0x007deed5    51
        "push               edx\n"                                                                     // 0x007deed6    52
        "call               _pc_main__Fv\n"                                                            // 0x007deed7    e8842de6ff
        "add                esp, 0x10\n"                                                               // 0x007deedc    83c410
        "call               _jmp_addr_0x007dbed0\n"                                                    // 0x007deedf    e8eccfffff

        "_jmp_addr_0x007deee4: "
        "xor.s              eax, eax\n"                                      // 0x007deee4    33c0
        "add                esp, 0x0c\n"                                     // 0x007deee6    83c40c
        "ret                0x0010\n"                                        // 0x007deee9    c21000
    );
    __builtin_unreachable();
}
