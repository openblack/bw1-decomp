#include <WINDOWS.H>

__declspec( dllimport ) void LHRegistrySetCurrentKey(int);
__declspec( dllimport ) int RegistryRetrieveULong(const char*, const char*, int*);

#define WIN_MAIN_LIONHEAD_REG_ADDR (char*)0x00bea5b8
#define WIN_MAIN_BETA_PATCH_REG_KEY (char*)0x00bf3c18
#define WIN_MAIN_BETA_PATCH_MESSAGE (char*)0x00c33e14
#define WIN_MAIN_BETA_PATCH_MSG_BOX_TITLE (char*)0x00bec320

void __stdcall jmp_addr_0x007dbc30(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd);
void jmp_addr_0x007db410(int*, char***);
int pc_main__Fv(int argc, char* argv[]);
void jmp_addr_0x007dbed0();

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd)
{
    int isDeveloperPatch;

    LHRegistrySetCurrentKey(0);
    if (RegistryRetrieveULong(WIN_MAIN_LIONHEAD_REG_ADDR, WIN_MAIN_BETA_PATCH_REG_KEY, &isDeveloperPatch))
    {
        isDeveloperPatch = 0;
    }

    if (isDeveloperPatch && MessageBoxA(NULL, WIN_MAIN_BETA_PATCH_MESSAGE, WIN_MAIN_BETA_PATCH_MSG_BOX_TITLE, MB_OKCANCEL | MB_DEFBUTTON2) == IDCANCEL)
    {
        return 0;
    }

    jmp_addr_0x007dbc30(hInstance, hPrevInstance, lpCmdLine, nShowCmd);
    int argc;
    char** argv;
    jmp_addr_0x007db410(&argc, &argv);
    pc_main__Fv(argc, argv);
    jmp_addr_0x007dbed0();

    return 0;
}
