#ifndef BW1_DECOMP_PC_MAIN_INCLUDED_H
#define BW1_DECOMP_PC_MAIN_INCLUDED_H

#include <windows.h> /* For HINSTANCE */
#include <chlasm/LHKeyBoard.h>

// BW1W120 00d019c5 / 00d019c8. Descriptive names; the free assertion callback
// at 00641ff0 owns this input override, shared with GGame::KeyHandler.
extern bool   AssertionKeyCapture;
extern LH_KEY AssertionKey;

// BW1W120 00d46abe / 00d46abf; byte flags written by ScanParameters.
extern bool ARGS_FORCEINETCONN;
extern bool ARGS_NOINETCONN;
// BW1W120 00d46ac1. TODO: Original name unknown; ScanParameters sets this for CONVERT.
extern bool Dat_00D46AC1;

// BW1W120 006419f0 BW1M100 100d50d0 stop_draw_sprite_to_screen(void)
void stop_draw_sprite_to_screen();

// BW1W120 00641a10 BW1M100 1011c650 IsACmdLineString(char*, const char*)
bool __cdecl IsACmdLineString(char* cmd_line, char* cmd);
// BW1W120 00641aa0 BW1M100 101528f0 ScanParameters(void)
void __stdcall ScanParameters(void);
// BW1W120 007dee50 BW1M100 inlined WinMain
int __stdcall WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, char* lpCmdLine, int nShowCmd);
// BW1W120 00642950 BW1M100 1057ad80 PlayLogoScreens(void)
void __cdecl PlayLogoScreens();
// BW1W120 006426f0 BW1M100 10534850 PlayPreIntroVideo(void)
void __cdecl PlayPreIntroVideo();
// BW1W120 00642d80 BW1M100 105c6f80 start_system(void)
int __cdecl start_system();
// BW1W120 00643420 BW1M100 101a6bd0 free_system(void)
void __cdecl free_system(void);
// BW1W120 00844650 BW1M100 10620954 FreeFonts(void)
void __cdecl FreeFonts(void);

#endif /* BW1_DECOMP_PC_MAIN_INCLUDED_H */
