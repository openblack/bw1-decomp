#include "PCMain.h"
#include <stdbool.h>
#include <stdint.h>

enum LH_REG_KEY_TYPE
{
    LH_REG_KEY_TYPE_0 = 0,
};

enum LH_RETURN
{
    LH_RETURN_SUCCESS = 0,
};

// LHLogR.dll
__declspec(dllimport) void __cdecl LHRegistrySetCurrentKey__YAXW4LH_REG_KEY_TYPE___Z(enum LH_REG_KEY_TYPE);
__declspec(dllimport) enum LH_RETURN __cdecl RegistryRetrieveULong__YA_AW4LH_RETURN__PAD0PAK_Z(const char *, const char *, uint32_t *, int*);

// USER32.DLL
#define MB_OKCANCEL   0x00000001L
#define MB_DEFBUTTON2 0x00000100L
#define IDCANCEL 2
__declspec(dllimport) int __stdcall MessageBoxA(HWND, const char*, const char*, uint32_t);

// TODO: This has to be extern to be able to change offsets
#define WIN_MAIN_BETA_PATCH_REG_KEY (const char*)0x00bf3c18
#define WIN_MAIN_LIONHEAD_REG_ADDR (const char*)0x00bea5b8
#define WIN_MAIN_BETA_PATCH_MSG_BOX_TITLE (const char*)0x00bec320
#define WIN_MAIN_BETA_PATCH_MESSAGE (const char*)0x00c33e14

extern int __stdcall jmp_addr_0x007dbc30(HINSTANCE hInstance, HINSTANCE hPrevInstance, char* lpCmdLine, int nShowCmd);
extern void jmp_addr_0x007db410(int *param_1, uint32_t *param_2);
extern uint32_t pc_main__Fv(int param_1, uint32_t param_2);
extern void jmp_addr_0x007dbed0();

inline enum LH_RETURN WinMain_GetDeveloperPatch(void)
{
    enum LH_RETURN result;
    __asm__ (
        "lea eax, [esp + 0x04]\n"
        "push eax\n"
        "push 0x00bf3c18\n"
        "push 0x00bea5b8\n"
        "call dword ptr [__imp__RegistryRetrieveULong__YA_AW4LH_RETURN__PAD0PAK_Z@4]\n"
        "add esp, 16\n"
        "mov %0, eax\n"
        : "=r" (result)
        :
        :
    );
    return result;
}

int __stdcall WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, char* lpCmdLine, int nShowCmd)
{
    struct stack_win_main_t
    {
        int argc;
        uint32_t isDeveloperPatch;
        uint32_t argv;
    };

    struct stack_win_main_t stack;

    // 0x007dee53
    __asm__(
        "push               0x0\n"                                                                     // 0x007dee53    6a00
        "call               dword ptr [__imp__LHRegistrySetCurrentKey__YAXW4LH_REG_KEY_TYPE___Z@4]\n"  // 0x007dee55    ff15b4938a00
    );
    //LHRegistrySetCurrentKey__YAXW4LH_REG_KEY_TYPE___Z(LH_REG_KEY_TYPE_0);

    // 0x007dee6f
    enum LH_RETURN registryResult = RegistryRetrieveULong__YA_AW4LH_RETURN__PAD0PAK_Z(WIN_MAIN_LIONHEAD_REG_ADDR, WIN_MAIN_BETA_PATCH_REG_KEY, &stack.isDeveloperPatch, 0);
    // 0x007dee78
    if (registryResult == LH_RETURN_SUCCESS) {
        // 0x007dee85
        if (stack.isDeveloperPatch != false) {
            // 0x007dee89
            int messageBoxResult = MessageBoxA(NULL, WIN_MAIN_BETA_PATCH_MESSAGE, WIN_MAIN_BETA_PATCH_MSG_BOX_TITLE, MB_OKCANCEL | MB_DEFBUTTON2);
            if (messageBoxResult == IDCANCEL) {
                return 0;
            }
        }
    }
    else {
        stack.isDeveloperPatch = false;
    }

    // 0x007deea5
    __asm__(
        "{disp8} mov        ecx, dword ptr [esp + 0x1c]\n"                                             // 0x007deea5    8b4c241c
        "{disp8} mov        edx, dword ptr [esp + 0x18]\n"                                             // 0x007deea9    8b542418
        "{disp8} mov        eax, dword ptr [esp + 0x14]\n"                                             // 0x007deead    8b442414
        "push               ecx\n"                                                                     // 0x007deeb1    51
        "{disp8} mov        ecx, dword ptr [esp + 0x14]\n"                                             // 0x007deeb2    8b4c2414
        "push               edx\n"                                                                     // 0x007deeb6    52
        "push               eax\n"                                                                     // 0x007deeb7    50
        "push               ecx\n"                                                                     // 0x007deeb8    51
        "call               _jmp_addr_0x007dbc30@16\n"                                                 // 0x007deeb9    e872cdffff
    );
    //jmp_addr_0x007dbc30(hInstance, hPrevInstance, lpCmdLine, nShowCmd);

    jmp_addr_0x007db410(&stack.argc,&stack.argv);
    pc_main__Fv(stack.argc, stack.argv);
    jmp_addr_0x007dbed0();

    return 0;
}
