#ifndef BW1_DECOMP_PC_MAIN_INCLUDED_H
#define BW1_DECOMP_PC_MAIN_INCLUDED_H

#include <windows.h> /* For HINSTANCE */
#include <chlasm/LHKeyBoard.h>

// Descriptive names; the free assertion callback
// at 00641ff0 owns this input override, shared with GGame::KeyHandler.
// BW1W120 00d019c5
extern bool AssertionKeyCapture;
// BW1W120 00d019c8
extern LH_KEY AssertionKey;

// Byte flags written by ScanParameters.
// BW1W120 00d46abe
extern bool ARGS_FORCEINETCONN;
// BW1W120 00d46abf
extern bool ARGS_NOINETCONN;
// TODO: Original name unknown; ScanParameters sets this for CONVERT.
// BW1W120 00d46ac1
extern bool Dat_00D46AC1;

// BW1W120 006419f0 BW1M119 01370680
void stop_draw_sprite_to_screen();

// BW1W120 00641a10 BW1M119 010d9b70
bool __cdecl IsACmdLineString(char* cmd_line, const char* cmd);
// BW1W120 00641aa0 BW1M119 01125700
void __stdcall ScanParameters(void);
// BW1W120 007dee50 BW1M119 inlined
int __stdcall WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, char* lpCmdLine, int nShowCmd);
// BW1W120 00642950 BW1M119 0153d320
void __cdecl PlayLogoScreens();
// BW1W120 006426f0 BW1M119 0115e760
void __cdecl PlayPreIntroVideo();
// BW1W120 00642d80 BW1M119 015cd990
int __cdecl start_system();
// BW1W120 00643420 BW1M119 011afad0
void __cdecl free_system(void);
// BW1W120 00844650 BW1M119 01066ad0 (LHCombined Release)
void __cdecl FreeFonts(void);

#endif /* BW1_DECOMP_PC_MAIN_INCLUDED_H */
