#ifndef BW1_DECOMP_PC_MAIN_INCLUDED_H
#define BW1_DECOMP_PC_MAIN_INCLUDED_H

#include <windows.h> /* For HINSTANCE */
#include <chlasm/LHKeyBoard.h>

#include <re_common.h> /* For bool32_t */

// BW1W120 00d019c5
extern bool AssertionKeyCapture;
// BW1W120 00d019c8
extern LH_KEY AssertionKey;

// BW1W120 00d46abe
extern bool ARGS_FORCEINETCONN;
// BW1W120 00d46abf
extern bool ARGS_NOINETCONN;
// BW1W120 00d46ac1
extern bool ARGS_CONVERT;
// BW1W120 00d46ac3
extern bool ARGS_NOLOADMUSIC;
// BW1W120 00d46ac5
extern bool QuittingMultiplayerGame;
// BW1W120 00d46ab8
extern bool CDFound;

// BW1W120 006418f0 BW1M119 null
bool32_t FindGameCD();
// BW1W120 006419f0 BW1M119 01370680
void stop_draw_sprite_to_screen();

// BW1W120 00641a10 BW1M119 010d9b70
bool IsACmdLineString(char* cmd_line, const char* cmd);
// BW1W120 00641aa0 BW1M119 01125700
void ScanParameters();
// BW1W120 00641c60 BW1M119 0115ab10
int pc_main(int argc, char* argv[]);
// BW1W120 007dee50 BW1M119 inlined
int __stdcall WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, char* lpCmdLine, int nShowCmd);
// BW1W120 00642610 BW1M119 0137a330
void Good_sleep_us(long us);
// BW1W120 00642950 BW1M119 0153d320
void PlayLogoScreens();
// BW1W120 006426f0 BW1M119 0115e760
void PlayPreIntroVideo();
#define START_SYSTEM_OUT_OF_MEMORY 3

// BW1W120 00642d80 BW1M119 015cd990
int start_system();
// BW1W120 00643420 BW1M119 011afad0
int free_system();

#endif /* BW1_DECOMP_PC_MAIN_INCLUDED_H */
