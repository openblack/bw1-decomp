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
// win1.41 00642950 mac 1057ad80 PlayLogoScreens(void)
void __cdecl PlayLogoScreens__Fv(void) asm("?PlayLogoScreens@@YAXXZ");
// win1.41 006426f0 mac 10534850 PlayPreIntroVideo(void)
void __cdecl PlayPreIntroVideo__Fv(void) asm("?PlayPreIntroVideo@@YAXXZ");
// win1.41 00642d80 mac 105c6f80 start_system(void)
int __cdecl start_system__Fv(void) asm("?start_system@@YAHXZ");
// win1.41 00643420 mac 101a6bd0 free_system(void)
void __cdecl free_system__Fv(void) asm("?free_system@@YAXXZ");
// win1.41 00844650 mac 10620954 FreeFonts(void)
void __cdecl FreeFonts__Fv(void) asm("?FreeFonts@@YAXXZ");

#endif /* BW1_DECOMP_PC_MAIN_INCLUDED_H */
