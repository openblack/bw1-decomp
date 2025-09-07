#ifndef BW1_DECOMP_PC_MAIN_INCLUDED_H
#define BW1_DECOMP_PC_MAIN_INCLUDED_H

#include <stdbool.h> /* For bool */

#include <reversing_utils/re_common.h> /* For HINSTANCE */

// win1.41 00641a10 mac 1011c650 IsACmdLineString(char*, const char*)
bool __cdecl IsACmdLineString__FPcPCc(char* cmd_line, char* cmd);
// win1.41 00641aa0 mac 101528f0 ScanParameters(void)
void __stdcall ScanParameters__Fv(void);
// win1.41 007dee50 mac inlined WinMain
int __stdcall WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, char* lpCmdLine, int nShowCmd);

#endif /* BW1_DECOMP_PC_MAIN_INCLUDED_H */
