#ifndef BW1_DECOMP_PC_MAIN_INCLUDED_H
#define BW1_DECOMP_PC_MAIN_INCLUDED_H

#include <re_common.h> /* For HINSTANCE */

// BW1W120 00641a10 BW1M100 1011c650 IsACmdLineString(char*, const char*)
bool __cdecl IsACmdLineString__FPcPCc(char* cmd_line, char* cmd);
// BW1W120 00641aa0 BW1M100 101528f0 ScanParameters(void)
void __stdcall ScanParameters__Fv(void);
// BW1W120 007dee50 BW1M100 inlined WinMain
int __stdcall WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, char* lpCmdLine, int nShowCmd);
// BW1W120 00642950 BW1M100 1057ad80 PlayLogoScreens(void)
void __cdecl PlayLogoScreens__Fv(void) asm("?PlayLogoScreens@@YAXXZ");
// BW1W120 006426f0 BW1M100 10534850 PlayPreIntroVideo(void)
void __cdecl PlayPreIntroVideo__Fv(void) asm("?PlayPreIntroVideo@@YAXXZ");
// BW1W120 00642d80 BW1M100 105c6f80 start_system(void)
int __cdecl start_system__Fv(void) asm("?start_system@@YAHXZ");
// BW1W120 00643420 BW1M100 101a6bd0 free_system(void)
void __cdecl free_system__Fv(void) asm("?free_system@@YAXXZ");
// BW1W120 00844650 BW1M100 10620954 FreeFonts(void)
void __cdecl FreeFonts__Fv(void) asm("?FreeFonts@@YAXXZ");

#endif /* BW1_DECOMP_PC_MAIN_INCLUDED_H */
