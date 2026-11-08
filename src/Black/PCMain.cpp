#include <Lionhead/LHMultiplayer/ver4.0/LHSocket.h> /* For LHSocket::InitFlag */
#include <Lionhead/LHLib/ver5.0/LHTimer.h>          /* For LHTimer */

#include <ctype.h>   /* For tolower */
#include <io.h>      /* For _unlink */
#include <stdio.h>   /* For fopen, fprintf, fread, sprintf */
#include <stdlib.h>  /* For exit */
#include <string.h>  /* For memset, strcmp, strcpy, strlen */
#include <windows.h> /* For GetCommandLineA, GetVolumeInformationA, MessageBoxA, QueryPerformanceCounter */
#include <dsetup.h>  /* For DirectXSetupGetVersion */

#include "PCMain.h"
#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"
#include "Base.h"

#include <Lionhead/LH3DLib/development/Bink.h>              /* For BinkGoto, BinkSetSoundOnOff */
#include <Lionhead/LH3DLib/development/Font.h>              /* For Fonts, LoadFonts, FreeFonts */
#include <Lionhead/LH3DLib/development/LH3DAtmos.h>         /* For LH3DAtmos */
#include <Lionhead/LH3DLib/development/LH3DLevelOfDetail.h> /* For LH3DLevelOfDetail */
#include <Lionhead/LH3DLib/development/LH3DP3.h>            /* For LH3DP3::HasSSE2 */
#include <Lionhead/LH3DLib/development/LH3DRender.h>        /* For LH3DRender */
#include <Lionhead/LH3DLib/development/LH3DTech.h>          /* For LH3DTech::g_delta_time, Report3D__FPCce */
#include <Lionhead/LH3DLib/development/LH3DText.h>          /* For GatheringText */
#include <Lionhead/LH3DLib/development/LH3DTexture.h>       /* For LH3DTexture */
#include <Lionhead/LH3DLib/development/LH3DVRAMTex.h>       /* For LH3DVRAMTex */
#include <Lionhead/LH3DLib/development/LH3DVideo.h>         /* For LH3DVideo */
#include <Lionhead/LH3DLib/development/LHVideoPlayer.h>     /* For LHVideoPlayer */
#include <Lionhead/LH3DLib/development/Zoomer.h>            /* For Zoomer */
#include <Lionhead/LHAudio/ver7.0/LH_AudioSystem.h>         /* For LH_AudioSystem */
#include <Lionhead/LHAudio/ver7.0/LH_MusicPlayOptions.h>    /* For LH_MusicPlayOptions */
#include <Lionhead/LHDLL/ver1.0/LHDLL.h>                    /* For LHDLL */
#include <Lionhead/LHFile/ver3.0/LHFilePath.h>              /* For g_GameDriveCharacter */
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>                /* For LHOSFile */
#include <Lionhead/LHLib/ver5.0/LHHeap2.h>                  /* For HeapStore, UniqueKeyHeap */
#include <Lionhead/LHLib/ver5.0/LHScreen.h>                 /* For LHResetFPU */
#include <Lionhead/LHLib/ver5.0/LHSprite.h>                 /* For LHSprite */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>                 /* For LHSys::TheSystem */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                    /* For NEW, ProcessWindowMessages */
#include <Lionhead/LHLog/ver4.0/LHAssert.h>                 /* For LHAssertCustomDraw */
#include <Lionhead/LHLog/ver4.0/LHRegistry.h>               /* For RegistryRetrieveGUID, RegistryRetrieveULong */
#include <Lionhead/LHLog/ver4.0/LHVersion.h>                /* For LHVersion::ModuleChecksum */
#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h>          /* For LHLobby */

#include "alexmfc.h"
#include "Audio.h"
#include "BWGameSpy.h"
#include "ControlMap.h"
#include "CPUCheck.h"
#include "DebugRecord.h"
#include "FrontEnd.h"
#include "Game.h"
#include "GameOSFile.h"
#include "GatheringBox.h"
#include "Global.h"
#include "LHNetBase.h"
#include "LoadingScreen.h"
#include "LocalBase.h"
#include "Network.h"
#include "PathCreator.h"
#include "PlayerProfile.h"
#include "SafeDisc.h"
#include "Settings.h"
#include "Setup.h"
#include "Utils.h"

#if defined(VERSION_BW1W100)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 1000 ? 48 : 62))
#elif defined(VERSION_BW1W110)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - 22)
#elif defined(VERSION_BW1W130)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - 15)
#elif defined(VERSION_BW1WCI)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) + ((line) < 1000 ? 78 : 177))
#endif

// BW1W120 005fa000 BW1M119 0110bf80
void InputReset();
// BW1W120 007760a0
void LoadConditionTemplate(const char* file_name);
// BW1W120 00635640 BW1M119 01115560
LH_MGJ_CALLBACK_RETURN NetworkMGJCallbackFunc(void* param);
// BW1W120 0054a710 BW1M119 01074bf0
void UpdateTurnOffMouseMove();
// BW1W120 0054a770 BW1M119 0107d6c0
void SetTurnOffMouseMove(bool turn_off);
// BW1W120 0054d610 BW1M119 01017530
void SetFPU();
// BW1W120 00555530 BW1M119 0135d010
void DoCitadelMultiplayer();
// BW1W120 007dedd0
void LHClearFPUExceptions(unsigned int mask);

// BW1W120 00bea970
extern char CountryCodes[GAME_LANGUAGE_LAST][3];
// BW1W120 00cd3b14
extern UniqueKeyHeap* LocalObjectHeap;
// BW1W120 00d01984
extern bool VideoUnskippable;
// BW1W120 00c37c00
extern bool32_t g_b_p4_improvement;
// BW1W120 00e8c5cc BW1M119 0136d64c (LHCombined Release)
extern void (*WindowedNotifyCallBackFunction)(int in_window);
// BW1W120 00e8c5d0 BW1M119 0136d648 (LHCombined Release)
extern void (*WindowedNotifyAltTabCallbackFunction)(int active);
// BW1W120 00e8c5d4
extern GUID* PreferredDDrawGUID;

// BW1W120 006418c0 BW1M119 null
unsigned int GetFPUControlHighByte();
// BW1W120 006418e0 BW1M119 null
void InitialiseStartup();
// BW1W120 00641fe0 BW1M119 null
void ResetRenderFPU(bool32_t enable);
// BW1W120 00641ff0 BW1M119 01125170
LH_ASSERT_RETURN FullScreenAssertFunction(char* text, char* file, uint16_t line, char* code, bool32_t forced);
// BW1W120 00642450 BW1M119 01577020
void WindowedNotifyFunction(int in_window);
// BW1W120 00642470 BW1M119 01370e50
void WindowedAltTabFunction(int active);
// BW1W120 006424e0 BW1M119 null
void __stdcall DrawSetupBoxes(void* data);
// BW1W120 00642930 BW1M119 null
bool32_t SkipLogoPressed();

#define BWSETUP_REGISTRY_KEY "Software\\Lionhead Studios Ltd\\Black & White\\BWSetup"

#ifdef VERSION_BW1WCI
#define OBJECT_HEAP_SIZE 0x1000000
#else
#define OBJECT_HEAP_SIZE 0xc00000
#endif
#define LOCAL_HEAP_SIZE 0x50000
#define HEAP_KEY_COUNT  1000

#define LOW_RES_VIDEO_MEMORY 13000000

#define DETAIL_LEVEL_DEFAULT 3
#define DETAIL_LEVEL_HIGHEST 4
#define DETAIL_LEVEL_COUNT   7

#define CPU_SPEED_HIGHEST_DETAIL 640
#define CPU_SPEED_DEFAULT_DETAIL 420
#define CPU_SPEED_LOW_DETAIL     360

#define DIRECTX_VERSION_REQUIRED 0x00040007

#define DEFAULT_SCREEN_WIDTH  800
#define DEFAULT_SCREEN_HEIGHT 600
#define DEFAULT_SCREEN_DEPTH  16

#define MEGABYTE (1024 * 1024)

#define COUNTRY_CODE_LENGTH 2

#define LOGO_VIDEO_LAST_FRAME 2

#define SLEEP_SAMPLE_US     1000
#define MICROSECONDS_PER_MS 1000
#define MICROSECONDS_PER_S  1000000

#define VIDEO_WAIT_US        500
#define VIDEO_WAIT_MAX_TRIES 50000

#define ASSERT_TEXT_MAX_LENGTH 255
#define ASSERT_TEXT_TOP        60
#define ASSERT_KEY_POLL_MS     10

#define FPU_CONTROL_HIGH_BYTE 0xff00

#define SETUP_BOXES_FINISH_PRIORITY 0xa0000

enum ASSERT_MODE
{
	ASSERT_MODE_NONE,
	ASSERT_MODE_REMINDERS,
	ASSERT_MODE_DIALOG,
};

enum LOGO_FADE
{
	LOGO_FADE_IN,
	LOGO_FADE_HOLD,
	LOGO_FADE_OUT,
	LOGO_FADE_DONE,
};

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130) || defined(VERSION_BW1WCI)
static bool32_t           SavedHasSSE2 = false;
static volatile bool32_t* SSEFlag = &SavedHasSSE2;
#endif

bool CDFound = false;

static bool ARGS_NEWGAME = false;
static bool ARGS_MULTIPLAYER = false;
static bool ARGS_LAND = false;
static bool ARGS_SKIRMISH = false;
static bool ARGS_PREINTROVIDEO = false;
bool        ARGS_FORCEINETCONN = false;
bool        ARGS_NOINETCONN = false;
static bool ARGS_EDITOR = false;
bool        ARGS_CONVERT = false;
static bool ARGS_VERSION = false;
bool        ARGS_NOLOADMUSIC = false;
static bool ARGS_SETTINGS = false;
bool        QuittingMultiplayerGame = false;

unsigned int GetFPUControlHighByte()
{
	return _controlfp(0, 0) & FPU_CONTROL_HIGH_BYTE;
}

void InitialiseStartup() {}

bool32_t FindGameCD()
{
	char  drive = 'd';
	char  rootPath[] = "d:\\";
	DWORD maximumComponentLength;
	DWORD volumeSerialNumber;
	DWORD fileSystemFlags;
	char  volumeName[256];
	char  fileSystemName[256];

	SetErrorMode(SEM_FAILCRITICALERRORS);
	do
	{
		rootPath[0] = drive;
		GetVolumeInformationA(rootPath, volumeName, sizeof(volumeName), &volumeSerialNumber, &maximumComponentLength,
		                      &fileSystemFlags, fileSystemName, sizeof(fileSystemName));
		drive++;
		if (strcmp(volumeName, "BNW") == 0 && strcmp(fileSystemName, "CDFS") == 0)
		{
			g_GameDriveCharacter = drive - 1;
			CDFound = true;
			return true;
		}
	} while (drive != 'z');
	return false;
}

#if defined(VERSION_BW1W100)
static SafeDiscRecord StopDrawSpriteMarker = {
	/* Seed */ {{0xf3, 0x05, 0xc9, 0x66, 0x33, 0x25, 0xbb, 0x66, 0xe6, 0x0b, 0x92, 0xcd,
                 0x89, 0x02, 0x04, 0x34, 0xcd, 0x17, 0x24, 0x9b, 0xbf, 0x1d, 0xed, 0x01}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xa0,
	/* Unk1 */ {0x29, 0x7f, 0xcf, 0x99, 0x2f, 0x48, 0x36, 0x8a, 0x25, 0x01, 0x9d, 0x7f, 0x3b, 0xda, 0x03, 0x7a,
                0x41, 0xa3, 0x6a, 0x34, 0x54, 0x73, 0xd1, 0x43, 0x4d, 0x35, 0x38, 0xc6, 0x01, 0xb1, 0x9e},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0xed, 0x8f, 0x20, 0xf8, 0x05, 0x88, 0xce, 0x30, 0x8c, 0x87, 0xa6, 0x6d, 0xc0, 0x94, 0x5c, 0x34},
	/* ANext */ 0x6e7d7cef,
	/* BWrapVA */ 0xd51991b2,
	/* CDesc */ 0x3c80da59,
	/* DRuntime */ 0xa3a3e198,
	/* EStatic */ 0x09a194bb,
	/* FStatic */ 0x706a9aae,
	/* Cookie */ {0xe7, 0x86, 0xcf, 0x45, 0x57},
	/* Pad3 */ 0x00,
};
#elif defined(VERSION_BW1W110)
static SafeDiscRecord StopDrawSpriteMarker = {
	/* Seed */ {{0xf9, 0x0f, 0xf5, 0x2f, 0x01, 0xd6, 0x8b, 0x2f, 0xf2, 0x1f, 0xea, 0x5f,
                 0x3b, 0xa7, 0xbc, 0x8f, 0xe5, 0x3f, 0xd4, 0xbf, 0xdd, 0x4f, 0xc9, 0xef}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xca,
	/* Unk1 */ {0x6f, 0xb3, 0x4f, 0xc9, 0x7f, 0xa8, 0x7f, 0xc0, 0x9f, 0x8d, 0xaf, 0xbb, 0x9f, 0x92, 0xdf, 0xbf,
                0xaf, 0x87, 0x0f, 0x7c, 0x37, 0x5f, 0x3f, 0xb1, 0xcf, 0x71, 0x6f, 0x02, 0x8d, 0x3d, 0x9f},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0x1d, 0xfd, 0x2a, 0x1c, 0x40, 0xbc, 0x0b, 0x65, 0xd4, 0x16, 0x8e, 0xab, 0x07, 0x0d, 0x07, 0xe6},
	/* ANext */ 0x06ff72b2,
	/* BWrapVA */ 0x1f0f5f66,
	/* CDesc */ 0x4f67e78f,
	/* DRuntime */ 0x7e622dc4,
	/* EStatic */ 0x00000000,
	/* FStatic */ 0xdc1b164a,
	/* Cookie */ {0x43, 0xaf, 0xd8, 0x0e, 0x3c},
	/* Unk3 */ {0xbf, 0xcd, 0x3e, 0xfc, 0xa1, 0x1c, 0x57, 0x1b},
};
#elif defined(VERSION_BW1W120)
static SafeDiscRecord StopDrawSpriteMarker = {
	/* Seed */ {{0x03, 0x00, 0x15, 0xff, 0xc7, 0xbc, 0xd6, 0xf1, 0xc4, 0x54, 0xbc, 0x0e,
                 0x8b, 0xa9, 0x6d, 0xe2, 0x4e, 0xfe, 0x21, 0xd3, 0x13, 0x53, 0xe4, 0xc5}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xd5,
	/* Unk1 */ {0xa7, 0xb8, 0xb6, 0x99, 0xfc, 0x7c, 0xa7, 0x5e, 0x41, 0x23, 0x98, 0x22, 0xa6, 0xf7, 0x8a, 0xe7,
                0xfa, 0x8b, 0x7b, 0x00, 0x00, 0x00, 0x00, 0xeb, 0xde, 0x8a, 0x6f, 0x6f, 0xa4, 0x02, 0x5d, 0x33,
                0xf9, 0xc6, 0x4f, 0xc0, 0xb2, 0xc6, 0x03, 0xf7, 0x4d, 0x85, 0x40, 0xbb, 0xa2, 0x19, 0x31, 0x7f,
                0xf7, 0x5d, 0x22, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91, 0x61, 0xef, 0x51, 0xff,
                0x8d, 0xcc, 0x49, 0x4e, 0x50, 0x75, 0x68, 0xc2, 0x19, 0xf5, 0x93, 0x17, 0xf4, 0x67, 0xca, 0x17,
                0xf4, 0x67, 0xca, 0xd7, 0x48, 0x3a, 0xbb, 0x9f, 0x9d, 0xfe, 0xad},
};
#elif defined(VERSION_BW1W130)
static SafeDiscRecord StopDrawSpriteMarker = {
	/* Seed */ {{0x03, 0x00, 0x15, 0xff, 0xb4, 0xa6, 0x24, 0xa9, 0x8f, 0x55, 0xb6, 0x56,
                 0x1d, 0xab, 0x79, 0x52, 0xaf, 0x00, 0x36, 0xfb, 0x3f, 0x56, 0xcc, 0xa5}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xcb,
	/* Unk1 */ {0xab, 0x9a, 0x4e, 0x5b, 0x01, 0x53, 0xf7, 0xeb, 0x46, 0xf9, 0xa1, 0x7a, 0xac, 0xa7, 0x4a, 0x04,
                0x02, 0x7c, 0xf3, 0x00, 0x00, 0x00, 0x00, 0xa5, 0x47, 0x3c, 0x98, 0x26, 0xad, 0xc0, 0x46, 0xb7,
                0x02, 0x99, 0xef, 0x40, 0x57, 0x3a, 0x04, 0x40, 0x58, 0x57, 0x98, 0xd1, 0xad, 0xad, 0x42, 0x62,
                0x03, 0xfa, 0xeb, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3c, 0x51, 0xcc, 0x3b, 0x17,
                0xb9, 0x2d, 0xbf, 0x37, 0x63, 0xd5, 0x8b, 0x6e, 0x40, 0xb5, 0x7c, 0xb8, 0x04, 0xe0, 0xe3, 0xb8,
                0x04, 0xe0, 0xe3, 0x45, 0x5a, 0xbe, 0x8c, 0xda, 0xaf, 0x74, 0x35},
};
#elif defined(VERSION_BW1WCI)
static SafeDiscRecord StopDrawSpriteMarker = {
	/* Seed */ {{0x6a, 0x21, 0xa5, 0x79, 0x02, 0xd3, 0x23, 0x79, 0xd4, 0x42, 0x4a, 0xf3,
                 0xfe, 0x19, 0x8a, 0x6c, 0xa9, 0x85, 0x94, 0xe6, 0x12, 0xa7, 0x39, 0x60}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xe3,
	/* Unk1 */ {0xe9, 0x83, 0x53, 0x51, 0x0b, 0x29, 0xcd, 0xbb, 0x3c, 0xde, 0x46, 0x25, 0x4e, 0x73, 0xc0, 0x8e,
                0x6f, 0x18, 0x3a, 0xf8, 0x90, 0xbd, 0xb3, 0xa2, 0xcf, 0x07, 0x2d, 0xaf, 0x8d, 0xa4, 0xa7, 0x00,
                0x00, 0x00, 0x00, 0x60, 0x2b, 0xfe, 0x99, 0x0a, 0x38, 0xf7, 0x13, 0x74, 0x59, 0x9c, 0x8d, 0xb0,
                0x38, 0xac, 0x03, 0x43, 0x9c, 0xe6, 0x80, 0x72, 0xc0, 0xae, 0xfa, 0x08, 0xdf, 0x30, 0x74, 0xe5,
                0x5e, 0xb5, 0xed, 0x10, 0x00, 0x00, 0x00, 0x74, 0x69, 0xf5, 0xe1, 0xf3, 0xcb, 0xfa, 0x6e, 0xa1,
                0xb8, 0x40, 0x99, 0xbc, 0xd6, 0xd2, 0x86, 0xde, 0x37, 0xc7, 0xfd, 0x6b, 0xbb, 0x7c, 0x58},
};
#endif

void stop_draw_sprite_to_screen()
{
	ClearTipVideo();
	CHECK_PROTECTION_MARKER(StopDrawSpriteMarker);
}

#if defined(VERSION_BW1W100)
static SafeDiscRecord CmdLineStringMarker = {
	/* Seed */ {{0xd8, 0x19, 0x49, 0x0b, 0x90, 0x38, 0x3b, 0x0b, 0xb0, 0xf2, 0xdd, 0x16,
                 0xf8, 0x5e, 0x84, 0x21, 0x62, 0x67, 0x24, 0x2d, 0x38, 0x81, 0x6d, 0x38}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xed,
	/* Unk1 */ {0xb4, 0xff, 0x4e, 0xc1, 0xce, 0x48, 0x5a, 0x99, 0xc8, 0xb1, 0x65, 0x71, 0x02, 0xdb, 0x70, 0x4d,
                0x1c, 0x24, 0x7c, 0x50, 0x25, 0x72, 0x87, 0x82, 0x4f, 0xb6, 0x92, 0xfe, 0x38, 0xb0, 0x9d},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0x75, 0xeb, 0x10, 0x99, 0x82, 0xf6, 0xcb, 0x6d, 0x00, 0x4d, 0x05, 0xea, 0x64, 0x99, 0xb2, 0x5a},
	/* ANext */ 0xec70dfb8,
	/* BWrapVA */ 0xf8172be0,
	/* CDesc */ 0x031e0346,
	/* DRuntime */ 0x0fa10310,
	/* EStatic */ 0x1a238618,
	/* FStatic */ 0x256c9ff0,
	/* Cookie */ {0x0c, 0x80, 0x20, 0x9c, 0x31},
	/* Pad3 */ 0x00,
};
#elif defined(VERSION_BW1W110)
static SafeDiscRecord CmdLineStringMarker = {
	/* Seed */ {{0xa2, 0x28, 0x62, 0x5c, 0x22, 0xf2, 0x1c, 0x5c, 0x7c, 0x9d, 0x9f, 0xb8,
                 0x16, 0xf1, 0x45, 0x15, 0x8a, 0xa2, 0x88, 0x71, 0x2a, 0xcb, 0xea, 0xcd}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x6b,
	/* Unk1 */ {0x1c, 0xaf, 0x86, 0x11, 0x45, 0x11, 0xe3, 0xb3, 0x4d, 0x53, 0x3f, 0x55, 0x96, 0xd5, 0x9b, 0xf3,
                0xbe, 0x37, 0xf8, 0x68, 0x6f, 0xba, 0x54, 0x40, 0x10, 0xfc, 0xb0, 0xd4, 0x69, 0x05, 0x0d},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0x79, 0xee, 0xcf, 0x26, 0x03, 0x54, 0xf6, 0x7c, 0x23, 0x0b, 0x2f, 0xc7, 0x22, 0x17, 0xcf, 0xf0},
	/* ANext */ 0x6a77f18b,
	/* BWrapVA */ 0xf0f4b1d4,
	/* CDesc */ 0x4cb22e7e,
	/* DRuntime */ 0xa9a89e38,
	/* EStatic */ 0x00000000,
	/* FStatic */ 0x6300a974,
	/* Cookie */ {0x16, 0x49, 0x5a, 0xbe, 0xb8},
	/* Unk3 */ {0x71, 0xbc, 0x1a, 0x0a, 0x2d, 0x7d, 0x08, 0x31},
};
#elif defined(VERSION_BW1W120)
static SafeDiscRecord CmdLineStringMarker = {
	/* Seed */ {{0xd3, 0xd5, 0x49, 0xff, 0x64, 0xd7, 0xdc, 0xb0, 0xef, 0x3f, 0xb6, 0x4f,
                 0xdd, 0x7f, 0x79, 0x60, 0xcc, 0xbf, 0x37, 0x10, 0xbf, 0xff, 0xcd, 0xc1}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xaa,
	/* Unk1 */ {0x3f, 0x9a, 0x71, 0x9b, 0x7f, 0x50, 0x21, 0x8b, 0x9f, 0xce, 0xd2, 0x7a, 0xff, 0xa4, 0x82, 0x64,
                0x3f, 0x7d, 0x32, 0x00, 0x00, 0x00, 0x00, 0x15, 0xee, 0xcf, 0xe1, 0x46, 0xbf, 0xc1, 0x93, 0x37,
                0xff, 0x9f, 0x43, 0x50, 0xb2, 0xc6, 0x03, 0xf0, 0xea, 0xc8, 0xf3, 0x11, 0x7f, 0xa2, 0xa4, 0x02,
                0xbf, 0xf8, 0x54, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x0d, 0x50, 0xea, 0x34,
                0x44, 0xa7, 0xb2, 0x2a, 0x63, 0x9d, 0xdb, 0x82, 0x01, 0x66, 0xdd, 0x98, 0x3e, 0xe6, 0x76, 0x98,
                0x3e, 0xe6, 0x76, 0x8c, 0x7e, 0xbc, 0x26, 0x7a, 0xbe, 0x4a, 0xd6},
};
#elif defined(VERSION_BW1W130)
static SafeDiscRecord CmdLineStringMarker = {
	/* Seed */ {{0x1b, 0xd9, 0x71, 0xff, 0x98, 0x9c, 0x88, 0xb1, 0x5b, 0x6f, 0x1a, 0x4e,
                 0xb5, 0xde, 0x21, 0x63, 0x10, 0x4e, 0x5a, 0x15, 0x6f, 0xbd, 0x7c, 0xc7}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xc7,
	/* Unk1 */ {0x2c, 0x91, 0x79, 0x23, 0x9c, 0x8b, 0x2b, 0x7f, 0x2b, 0x8c, 0xdd, 0xda, 0x7a, 0xc6, 0x8f, 0x30,
                0xea, 0xf8, 0x41, 0x00, 0x00, 0x00, 0x00, 0xbd, 0x49, 0x2b, 0xf6, 0xea, 0xc8, 0x37, 0xa4, 0x47,
                0x38, 0x28, 0x56, 0xa0, 0x57, 0x3a, 0x04, 0x84, 0x7e, 0xe6, 0x08, 0xf9, 0x16, 0x27, 0xba, 0x56,
                0x86, 0xd9, 0x6c, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc8, 0x9f, 0x87, 0xb4, 0xf9,
                0x48, 0x7b, 0x1c, 0xbf, 0xb5, 0xd8, 0x67, 0xb1, 0x52, 0xc8, 0xd9, 0x74, 0x22, 0x3e, 0x97, 0x74,
                0x22, 0x3e, 0x97, 0xd4, 0x91, 0x50, 0x49, 0x2e, 0x01, 0x75, 0xfb},
};
#elif defined(VERSION_BW1WCI)
static SafeDiscRecord CmdLineStringMarker = {
	/* Seed */ {{0xa0, 0x6e, 0xd5, 0x6f, 0x50, 0x9c, 0x53, 0x6f, 0xf8, 0x0d, 0xc9, 0xdf,
                 0x00, 0x36, 0xe5, 0x4f, 0x82, 0xba, 0x55, 0xbf, 0x20, 0x29, 0x2b, 0x2f}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x65,
	/* Unk1 */ {0x06, 0xd6, 0x0e, 0x01, 0x75, 0xab, 0x7e, 0xa1, 0xc3, 0xa0, 0xee, 0x41, 0x52, 0x56, 0x5e, 0xe0,
                0xc0, 0x2b, 0xce, 0x38, 0xff, 0xa2, 0x3e, 0xc0, 0xe3, 0xb3, 0xad, 0xf4, 0x51, 0x0f, 0x1d, 0x00,
                0x00, 0x00, 0x00, 0xc0, 0xd7, 0xfa, 0xfe, 0xa0, 0x58, 0x2c, 0x6d, 0x40, 0xc7, 0x01, 0xdd, 0xd0,
                0x37, 0xac, 0x03, 0x85, 0xa4, 0xac, 0xbc, 0xc0, 0x6e, 0xa7, 0x2c, 0xba, 0x81, 0x57, 0x9c, 0x54,
                0xad, 0x4f, 0x0c, 0x10, 0x00, 0x00, 0x00, 0x74, 0x69, 0xf5, 0xe1, 0x93, 0x10, 0x97, 0xba, 0x15,
                0x03, 0x55, 0xae, 0xd0, 0xa5, 0x41, 0xae, 0xf1, 0xb4, 0x45, 0x85, 0xea, 0x48, 0xf3, 0x59},
};
#endif

bool IsACmdLineString(char* cmd_line, const char* cmd)
{
	if (strlen(cmd_line) < strlen(cmd))
		return false;
	int length = strlen(cmd);
	for (int i = 0; i < length; i++)
	{
		if (tolower(*cmd_line) != tolower(cmd[i]))
			return false;
		cmd_line++;
	}
	CHECK_PROTECTION_MARKER(CmdLineStringMarker);
	return true;
}

#if defined(VERSION_BW1W100)
static SafeDiscRecord ScanParametersMarker = {
	/* Seed */ {{0x59, 0x13, 0xf0, 0x2e, 0x89, 0x32, 0x82, 0x2e, 0xc2, 0xb5, 0x91, 0x5d,
                 0x0b, 0x2e, 0x8f, 0x8c, 0x67, 0x4d, 0xc0, 0xbb, 0xbd, 0x60, 0xb0, 0xea}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x6a,
	/* Unk1 */ {0x87, 0x90, 0x48, 0xc9, 0x9a, 0x80, 0x77, 0x20, 0xee, 0x30, 0xa6, 0x7b, 0xc1, 0x60, 0xd5, 0xdb,
                0xd4, 0x50, 0x04, 0x2c, 0xfc, 0x5f, 0x33, 0xc3, 0xfa, 0x30, 0x62, 0x14, 0x5f, 0x6e, 0x91},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0xb3, 0x1a, 0x32, 0xf2, 0xbf, 0xc1, 0xdc, 0x0c, 0x4b, 0x1b, 0x11, 0xd5, 0x24, 0xcd, 0xcc, 0xa8},
	/* ANext */ 0xd900053d,
	/* BWrapVA */ 0x08febda6,
	/* CDesc */ 0x371eed35,
	/* DRuntime */ 0x67fabf08,
	/* EStatic */ 0x9571e3b1,
	/* FStatic */ 0xc461f70a,
	/* Cookie */ {0x1c, 0x94, 0xa0, 0x1a, 0xed},
	/* Pad3 */ 0x00,
};
#elif defined(VERSION_BW1W110)
static SafeDiscRecord ScanParametersMarker = {
	/* Seed */ {{0x18, 0x4c, 0x38, 0x1b, 0x10, 0x97, 0x46, 0x1b, 0xf0, 0x2e, 0x0d, 0x36,
                 0xc8, 0x6d, 0xcb, 0x51, 0x63, 0x30, 0xe1, 0x6c, 0x78, 0x7c, 0x19, 0x88}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xad,
	/* Unk1 */ {0x14, 0x8a, 0xbe, 0xc1, 0x60, 0xc2, 0xd9, 0xd9, 0xec, 0xba, 0xf4, 0xf1, 0xf8, 0x32, 0x10, 0x01,
                0x45, 0x6b, 0x2b, 0xa0, 0x18, 0x80, 0x46, 0x89, 0xdc, 0xdb, 0x61, 0x8a, 0x78, 0x4f, 0x7d},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0x21, 0xe0, 0xd9, 0x7e, 0x4a, 0x81, 0xa6, 0xfe, 0x3b, 0xe9, 0xff, 0x71, 0xc9, 0x65, 0xa5, 0xaa},
	/* ANext */ 0x20136538,
	/* BWrapVA */ 0x566b3cd0,
	/* CDesc */ 0x726d5fa8,
	/* DRuntime */ 0x8ddc739a,
	/* EStatic */ 0x00000000,
	/* FStatic */ 0xc14f3370,
	/* Cookie */ {0x88, 0x06, 0xf0, 0xde, 0xa0},
	/* Unk3 */ {0x52, 0x28, 0xfa, 0xf2, 0x26, 0x4d, 0xc3, 0x2f},
};
#elif defined(VERSION_BW1W120)
static SafeDiscRecord ScanParametersMarker = {
	/* Seed */ {{0xfb, 0xc1, 0x6b, 0xff, 0xc3, 0xcb, 0x65, 0xcd, 0xd0, 0x22, 0x0f, 0x32,
                 0xa3, 0x45, 0x0b, 0x9b, 0x70, 0x68, 0x38, 0x69, 0x43, 0x8b, 0x29, 0x37}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x11,
	/* Unk1 */ {0xae, 0x5e, 0x05, 0xe1, 0xd0, 0x4f, 0xd3, 0xb2, 0xb3, 0x3c, 0xa1, 0x82, 0x16, 0x6c, 0x6f, 0x53,
                0x39, 0x9d, 0x3d, 0x00, 0x00, 0x00, 0x00, 0x63, 0xcd, 0x46, 0x08, 0xf3, 0x7e, 0xb3, 0xd9, 0xc3,
                0xa1, 0xa0, 0xa7, 0x90, 0xb2, 0xc6, 0x03, 0x6b, 0x05, 0x6f, 0x75, 0x63, 0xe7, 0x86, 0x43, 0x33,
                0x0a, 0xb6, 0x11, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc6, 0xd6, 0x96, 0x75, 0xb1,
                0xde, 0x80, 0xb8, 0xdb, 0xab, 0xcb, 0x0a, 0x82, 0x43, 0x2a, 0xf7, 0x13, 0xdb, 0x28, 0xe4, 0x13,
                0xdb, 0x28, 0xe4, 0xea, 0xfd, 0x59, 0xb2, 0xb3, 0x20, 0x49, 0x80},
};
#elif defined(VERSION_BW1W130)
static SafeDiscRecord ScanParametersMarker = {
	/* Seed */ {{0x8b, 0xca, 0x93, 0xff, 0x82, 0xb9, 0xb9, 0xd2, 0xc9, 0x4d, 0x2b, 0x2d,
                 0x91, 0x9b, 0x43, 0xa5, 0x5b, 0xe9, 0x94, 0x78, 0x27, 0x37, 0xb8, 0x4b}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xed,
	/* Unk1 */ {0x84, 0xcd, 0x1e, 0xb7, 0xd2, 0x16, 0xf0, 0x7d, 0x60, 0x7a, 0xc3, 0x4a, 0x6e, 0x4f, 0x96, 0x12,
                0xbc, 0x90, 0x69, 0x00, 0x00, 0x00, 0x00, 0xe9, 0x19, 0x92, 0x38, 0xa0, 0x57, 0xc9, 0x0f, 0x6f,
                0xa5, 0x12, 0xe1, 0x00, 0x5e, 0x3a, 0x04, 0xbe, 0x39, 0xe1, 0xb4, 0xfd, 0x40, 0x0b, 0x87, 0xc4,
                0x8e, 0xdc, 0x5a, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3f, 0x96, 0x92, 0xc5, 0x36,
                0x48, 0x57, 0xf3, 0xf3, 0xed, 0xb8, 0x31, 0x1b, 0xc5, 0x64, 0x2b, 0x7e, 0x61, 0x98, 0x4b, 0x7e,
                0x61, 0x98, 0x4b, 0x4c, 0xaf, 0xad, 0x1e, 0x0c, 0xfd, 0xf6, 0xf1},
};
#elif defined(VERSION_BW1WCI)
static SafeDiscRecord ScanParametersMarker = {
	/* Seed */ {{0x84, 0x30, 0xcc, 0x73, 0xfc, 0xc3, 0x4a, 0x73, 0x90, 0xad, 0x1d, 0xe7,
                 0xfc, 0xef, 0x01, 0x5b, 0x13, 0xc2, 0x30, 0xcf, 0x94, 0xf2, 0xfc, 0x42}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x99,
	/* Unk1 */ {0x53, 0x95, 0x2a, 0x21, 0x84, 0x61, 0x9e, 0xa5, 0xf4, 0x6d, 0x12, 0x29, 0xe5, 0xf9, 0x85, 0xac,
                0x15, 0xc6, 0xf9, 0xa8, 0x8a, 0x57, 0x6d, 0xc4, 0x08, 0x3b, 0xe1, 0xe9, 0xfa, 0x89, 0x55, 0x00,
                0x00, 0x00, 0x00, 0x80, 0x35, 0x6f, 0x3f, 0xc4, 0x38, 0x8f, 0xb0, 0x48, 0x69, 0x5b, 0x24, 0x80,
                0x38, 0xac, 0x03, 0x58, 0xca, 0xf3, 0x0b, 0xa4, 0x84, 0x9a, 0x7f, 0x91, 0x2a, 0x8c, 0xf3, 0x0d,
                0x06, 0x3b, 0x67, 0x10, 0x00, 0x00, 0x00, 0x74, 0x69, 0xf5, 0xe1, 0xde, 0x0d, 0xce, 0x3c, 0x0e,
                0xb8, 0xfd, 0x6f, 0x35, 0xf3, 0x5e, 0xa8, 0xb9, 0x0f, 0x7c, 0xd0, 0xef, 0x51, 0x05, 0x04},
};
#endif

static const char NEWGAME_SWITCH[] = "NEWGAME";
static const char MULTIPLAYER_SWITCH[] = "MULTIPLAYER";
static const char LAND_SWITCH[] = "LAND";
static const char SKIRMISH_SWITCH[] = "SKIRMISH";
static const char PREINTROVIDEO_SWITCH[] = "PREINTROVIDEO";
static const char FORCEINETCONN_SWITCH[] = "FORCEINETCONN";
static const char NOINETCONN_SWITCH[] = "NOINETCONN";
static const char EDITOR_SWITCH[] = "EDITOR";
static const char CONVERT_SWITCH[] = "CONVERT";
static const char VERSION_SWITCH[] = "VERSION";
static const char NOLOADMUSIC_SWITCH[] = "NOLOADMUSIC";
static const char SETTINGS_SWITCH[] = "SETTINGS:";

void ScanParameters()
{
	char* cmdLine = GetCommandLineA();
	while (*cmdLine)
	{
		if (*cmdLine == '-' || *cmdLine == '/')
		{
			if (++cmdLine == NULL)
				return;
			if (IsACmdLineString(cmdLine, NEWGAME_SWITCH) && !ARGS_MULTIPLAYER)
				ARGS_NEWGAME = true;
			if (IsACmdLineString(cmdLine, MULTIPLAYER_SWITCH) && !ARGS_NEWGAME)
				ARGS_MULTIPLAYER = true;
			if (IsACmdLineString(cmdLine, LAND_SWITCH))
				ARGS_LAND = true;
			if (IsACmdLineString(cmdLine, SKIRMISH_SWITCH))
				ARGS_SKIRMISH = true;
			if (IsACmdLineString(cmdLine, PREINTROVIDEO_SWITCH))
				ARGS_PREINTROVIDEO = true;
			if (IsACmdLineString(cmdLine, FORCEINETCONN_SWITCH))
				ARGS_FORCEINETCONN = true;
			if (IsACmdLineString(cmdLine, NOINETCONN_SWITCH))
				ARGS_NOINETCONN = true;
			if (IsACmdLineString(cmdLine, EDITOR_SWITCH))
				ARGS_EDITOR = true;
			if (IsACmdLineString(cmdLine, CONVERT_SWITCH))
				ARGS_CONVERT = true;
			if (IsACmdLineString(cmdLine, VERSION_SWITCH))
				ARGS_VERSION = true;
			if (IsACmdLineString(cmdLine, NOLOADMUSIC_SWITCH))
				ARGS_NOLOADMUSIC = true;
			if (IsACmdLineString(cmdLine, SETTINGS_SWITCH))
			{
				memset(Settings::ConfigFile, 0, sizeof(Settings::ConfigFile));
				char* src = cmdLine + strlen(SETTINGS_SWITCH);
				char* dst = Settings::ConfigFile;
				while (*src && *src != ' ')
					*dst++ = *src++;
				ARGS_SETTINGS = true;
			}
		}
		cmdLine++;
	}
	CHECK_PROTECTION_MARKER(ScanParametersMarker);
}

int pc_main(int argc, char* argv[])
{
	__asm {
		fwait
		finit
		fwait
	}
	LHClearFPUExceptions(_EM_ZERODIVIDE | _EM_OVERFLOW);
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
	LoadConditionTemplate("Online Maps\\ConditionTemplate.txt");
#endif
	SetFPU();
	ScanParameters();
	if (ARGS_VERSION)
	{
		_unlink("mpver.txt");
		FILE* file = fopen("mpver.txt", "wt");
		fprintf(file, "%u", LHVersion::GetModuleChecksum());
		fclose(file);
	}

	DWORD version;
	DWORD revision;
	DirectXSetupGetVersion(&version, &revision);
	if (version < DIRECTX_VERSION_REQUIRED)
	{
		LHTerminate();
		MessageBoxA(NULL, "You need DirectX 7 or greater to play Black & White.", "Error", MB_SYSTEMMODAL);
		PostQuitMessage(0);
		return 0;
	}

	if (start_system() == 0)
	{
#ifdef VERSION_BW1W110
		timeGetTime();
		if (!ARGS_NOLOADMUSIC)
			FindGameCD();
#endif
		SetWindowTextA(LHSys::GetScreen().MsWindowHandle, "Black & White");
		InitialiseStartup();
		SetFPU();
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130) || defined(VERSION_BW1WCI)
		SavedHasSSE2 = LH3DP3::HasSSE2;
		SSEFlag = &LH3DP3::HasSSE2;
#endif
		slim::TbIME::DisableDefaultIme(LHSys::GetScreen().MsWindowHandle);
		PlayLogoScreens();
		LHResetFPU();
		Report3D__FPCce("InitialiseAudio\n");
		GGlobal::Global.InitialiseAudio();
		LHResetFPU();
		if (ARGS_PREINTROVIDEO || !PlayerProfile::GetNumberOfProfiles())
			PlayPreIntroVideo();
		GSetup::LoadTextScripts();
		StartTipOfTheDayText();
		GGame::g_game->InitOneTimeOnly();
		GGame::g_game->path_creator.UpdateCurrentProfile();
		FrontEnd::Init();
		if (ARGS_NEWGAME)
			GGame::g_game->StartType = GAME_START_TYPE_NEW_GAME;
		else if (ARGS_SKIRMISH)
			GGame::g_game->StartType = GAME_START_TYPE_SKIRMISH;
		else if (ARGS_MULTIPLAYER)
			GGame::g_game->StartType = GAME_START_TYPE_MULTIPLAYER;

		while (GGame::g_game->GameMode != GAME_MODE_QUITTING)
		{
			VideoUnskippable = false;
			if (!PlayerProfile::GetNumberOfProfiles())
			{
				GGame::g_game->StartType = GAME_START_TYPE_NEW_GAME;
				FrontEnd::JustDoNewProfileBox();
				VideoUnskippable = true;
			}
			if (GGame::g_game->StartType == GAME_START_TYPE_SKIRMISH)
				FrontEnd::JustDoSkirmishGameBox();
			if (GGame::g_game->StartType == GAME_START_TYPE_MULTIPLAYER || GGame::g_game->GameMode == GAME_MODE_ONLINE)
			{
				LHLobby::InitLibrary();
				if (LHSocket::InitFlag)
				{
					DoCitadelMultiplayer();
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
					QuittingMultiplayerGame = true;
					BWGameSpy::Instance.LeaveGameChannel();
					QuittingMultiplayerGame = false;
#endif
				}
				else
					GGame::g_game->StartType = GAME_START_TYPE_AUTOSAVE;
			}
			if (!FrontEnd::MultiplayerGameRunning || GGame::g_game->StartType == GAME_START_TYPE_NEW_GAME)
				LHNetBase::Instance.StartAGame(LH_PACKET_SOURCE_NETWORK);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130) || defined(VERSION_BW1WCI)
			*SSEFlag = FrontEnd::MultiplayerGameRunning ? false : SavedHasSSE2;
#endif
			GGame::g_game->StartGame();
			GGame::g_game->Close();
			if (GGame::g_game->GameMode == GAME_MODE_ONLINE)
			{
				if (GameOSFile::IsAutoSaveValid())
					GGame::g_game->StartType = GAME_START_TYPE_AUTOSAVE;
				else
					GGame::g_game->StartType = GAME_START_TYPE_NEW_GAME;
			}
			switch (GGame::g_game->GameMode)
			{
			case GAME_MODE_NEW_GAME:
				GGame::g_game->StartType = GAME_START_TYPE_NEW_GAME;
				break;
			case GAME_MODE_RESTART:
				GGame::g_game->StartType = GAME_START_TYPE_AUTOSAVE;
				break;
			case GAME_MODE_ONLINE:
				GGame::g_game->StartType = GAME_START_TYPE_MULTIPLAYER;
				break;
			case GAME_MODE_LOAD_GAME:
				GGame::g_game->StartType = GAME_START_TYPE_LOAD_GAME;
				break;
			case GAME_MODE_SKIRMISH:
				GGame::g_game->StartType = GAME_START_TYPE_SKIRMISH;
				break;
			case GAME_MODE_QUITTING:
				break;
			default:
				GGame::g_game->GameMode = GAME_MODE_QUITTING;
				break;
			}
			FrontEnd::MultiplayerGameRunning = false;
			LHNetBase::Instance.Shutdown();
		}
		FrontEnd::Close();
		GGame::g_game->CloseOneTimeOnly();
	}
	free_system();
	return 0;
}

void ResetRenderFPU(bool32_t enable)
{
	LHResetFPU();
}

static ASSERT_MODE AssertMode = ASSERT_MODE_DIALOG;

LH_ASSERT_RETURN FullScreenAssertFunction(char* text, char* file, uint16_t line, char* code, bool32_t forced)
{
	char reminder[512];
	char message[512];
	if (GGame::SystemExit)
	{
		AssertionKeyCapture = false;
		return LH_ASSERT_RETURN_CONTINUE;
	}
	if (forced)
		AssertMode = ASSERT_MODE_DIALOG;
	switch (AssertMode)
	{
	case ASSERT_MODE_REMINDERS: {
		sprintf(reminder, "%s (%d) %s", file, line, text);
		reminder[ASSERT_TEXT_MAX_LENGTH] = '\0';
		GGlobal::Global.AddPlayerTextMessage(-1, reminder);
		GGlobal::Global.DisplayPlayerTextMessages();
		LHSys::GetScreen().Flip(0);
		return LH_ASSERT_RETURN_IGNORE;
	}
	case ASSERT_MODE_DIALOG: {
		AssertionKeyCapture = true;
		sprintf(message, "%s (%d) %s", file, line, text);
		message[ASSERT_TEXT_MAX_LENGTH] = '\0';
		GGlobal::Global.AddPlayerTextMessage(-1, message);
		GGlobal::Global.DisplayPlayerTextMessages();
		int y = ASSERT_TEXT_TOP;
		int height = Fonts[FONT_SIZE_MEDIUM].Height;
		ResetRenderFPU(false);
		if (LHSys::GetScreen().Lock(0))
			return LH_ASSERT_RETURN_DEBUG;

		char header[128];
		sprintf(header, "%s (%d)", file, line);
		LH3DVideo::RectFill(0, y, Fonts[FONT_SIZE_MEDIUM].Length(header), y + height, 0);
		Fonts[FONT_SIZE_MEDIUM].Mess(header, 0, y, &green, &black, FONT_NO_CURSOR);
		y += height;
		LH3DVideo::RectFill(0, y, Fonts[FONT_SIZE_SMALL].Length(text), y + height, 0);
		Fonts[FONT_SIZE_SMALL].Mess(text, 0, y, &green, &black, FONT_NO_CURSOR);
		y += height;
		LH3DVideo::RectFill(0, y, Fonts[FONT_SIZE_MEDIUM].Length("ESC - continue"), y + height, 0);
		Fonts[FONT_SIZE_MEDIUM].Mess("ESC - continue", 0, y, &white, &black, FONT_NO_CURSOR);
		y += height;
		LH3DVideo::RectFill(0, y, Fonts[FONT_SIZE_MEDIUM].Length("I - ignore this assert"), y + height, 0);
		Fonts[FONT_SIZE_MEDIUM].Mess("I - ignore this assert", 0, y, &white, &black, FONT_NO_CURSOR);
		y += height;
		LH3DVideo::RectFill(0, y, Fonts[FONT_SIZE_MEDIUM].Length("D - debug"), y + height, 0);
		Fonts[FONT_SIZE_MEDIUM].Mess("D - debug", 0, y, &white, &black, FONT_NO_CURSOR);
		y += height;
		LH3DVideo::RectFill(0, y, Fonts[FONT_SIZE_MEDIUM].Length("N - no asserts"), y + height, 0);
		Fonts[FONT_SIZE_MEDIUM].Mess("N - no asserts", 0, y, &white, &black, FONT_NO_CURSOR);
		y += height;
		LH3DVideo::RectFill(0, y, Fonts[FONT_SIZE_MEDIUM].Length("R - reminders only"), y + height, 0);
		Fonts[FONT_SIZE_MEDIUM].Mess("R - reminders only", 0, y, &white, &black, FONT_NO_CURSOR);
		y += height;
		LH3DVideo::RectFill(0, y, Fonts[FONT_SIZE_MEDIUM].Length("X - exit"), y + height, 0);
		Fonts[FONT_SIZE_MEDIUM].Mess("X - exit", 0, y, &white, &black, FONT_NO_CURSOR);
		LHSys::GetScreen().Unlock();
		LHSys::GetScreen().Flip(0);

		while (true)
		{
			if (AnyWindowMessages() == true)
				ProcessWindowMessages();
			LH_KEY key = AssertionKey;
			if (key)
				AssertionKey = KB_NONE;
			Sleep(ASSERT_KEY_POLL_MS);
			if (key == KB_ESC || key == KB_SPACE)
			{
				AssertionKeyCapture = false;
				return LH_ASSERT_RETURN_CONTINUE;
			}
			if (key == KB_I)
			{
				AssertionKeyCapture = false;
				return LH_ASSERT_RETURN_IGNORE;
			}
			if (key == KB_R)
			{
				AssertMode = ASSERT_MODE_REMINDERS;
				AssertionKeyCapture = false;
				return LH_ASSERT_RETURN_CONTINUE;
			}
			if (key == KB_N)
			{
				AssertMode = ASSERT_MODE_NONE;
				AssertionKeyCapture = false;
				return LH_ASSERT_RETURN_CONTINUE;
			}
			if (key == KB_D)
			{
				LHSys::GetScreen().RunInMSWindow(true);
				AssertionKeyCapture = false;
				return LH_ASSERT_RETURN_DEBUG;
			}
			if (key == KB_X)
			{
				LHAssertIgnoreAllAsserts = true;
				LHAssertCustomDraw = NULL;
				LHSys::GetScreen().RunInMSWindow(true);
				AssertionKeyCapture = false;
				return LH_ASSERT_RETURN_EXIT;
			}
		}
	}
	}
	return LH_ASSERT_RETURN_CONTINUE;
}

void WindowedNotifyFunction(int in_window)
{
	LHAssertCustomDraw = in_window ? NULL : FullScreenAssertFunction;
}

void WindowedAltTabFunction(int active)
{
	if (!active)
	{
		LHAssertCustomDraw = NULL;
		if (GGlobal::Global.audio && GGlobal::Global.audio->AudioSystem)
			GGlobal::Global.audio->GlobalSwitch(false);
		return;
	}
	ControlMap::MouseDelta = LHCoord(0, 0);
	LHSys::GetMouse().ClearDeltaPos();
	LHSys::GetMouse().MouseWheelAccum = 0;
	if (GGlobal::Global.audio && GGlobal::Global.audio->AudioSystem)
		GGlobal::Global.audio->GlobalSwitch(true);
	LHAssertCustomDraw = FullScreenAssertFunction;
}

void __stdcall DrawSetupBoxes(void* data)
{
	static bool BoxShowing;
	static bool SavedTurnOffMouseMove;

	if (GGame::g_game == NULL)
		return;
	UpdateTurnOffMouseMove();
	SetupBox::UpdateWantKey();
	if (SetupBox::Showing)
	{
		if (!BoxShowing)
			SavedTurnOffMouseMove = LHSys::TheSystem.TurnOffMouseMove;
		BoxShowing = true;
		SetTurnOffMouseMove(false);
	}
	else if (BoxShowing)
	{
		BoxShowing = false;
		SetTurnOffMouseMove(SavedTurnOffMouseMove);
	}
	if (GatheringBox::Instance)
		GatheringBox::Instance->UpdateFrame();
	if (SetupBox::GetCurrentFadeBox())
		SetupBox::GetCurrentFadeBox()->DrawAll(LHSys::GetMouse().Pos().x, LHSys::GetMouse().Pos().y, 0, 0, true);
	if (SetupBox::GetCurrentActiveBox())
		SetupBox::GetCurrentActiveBox()->DrawAll(LHSys::GetMouse().Pos().x, LHSys::GetMouse().Pos().y,
		                                         SetupThing::MouseCaptured, SetupThing::DoubleClicked, false);
	if (FrontEnd::CursorOn)
		FrontEnd::DrawMouse();
	SetupControl* control = SetupBox::GetCurrentActiveBox() ? SetupBox::GetCurrentActiveBox()->HoverWidget : NULL;
	if (control)
		FrontEnd::SetToolTip((wchar_t*)control->tooltip, (unsigned long)control);
	else
		FrontEnd::SetToolTip(NULL, 0);
}

#ifndef VERSION_BW1WCI
void Good_sleep_us(long us)
{
	static long          Pending = 0;
	static long          Overshoot = 0;
	static bool32_t      FrequencyKnown = false;
	static LARGE_INTEGER Frequency = {SLEEP_SAMPLE_US};

	if (!FrequencyKnown)
	{
		FrequencyKnown = true;
		QueryPerformanceFrequency(&Frequency);
	}
	Pending += us;
	if (Pending - Overshoot > SLEEP_SAMPLE_US)
	{
		Pending -= Overshoot;
		LARGE_INTEGER start;
		QueryPerformanceCounter(&start);
		Sleep(Pending / MICROSECONDS_PER_MS);
		LARGE_INTEGER end;
		QueryPerformanceCounter(&end);
		end.QuadPart = (end.QuadPart - start.QuadPart) * MICROSECONDS_PER_S / (ULONGLONG)Frequency.QuadPart;
		Overshoot = (long)end.QuadPart - Pending;
		Pending %= MICROSECONDS_PER_MS;
	}
}
#endif

void PlayPreIntroVideo()
{
#ifndef VERSION_BW1WCI
	char filename[256];
	if (!CDFound || (sprintf(filename, "%c:\\pre_intro.bik", g_GameDriveCharacter), LHOSFile::Exists(filename)))
		strcpy(filename, ".\\data\\pre_intro.bik");
	if (LHOSFile::Exists(filename))
		return;

	LHVideoPlayer* player = NEW(862) LHVideoPlayer;
	player->Init(filename, true, false);
	player->CurrentFrame = -1;
	if (player->Bink)
		BinkSetSoundOnOff(player->Bink, 0);

	LH_MusicPlayOptions options;
	options.Loop = false;
	options.Bank = GGlobal::Global.audio->AudioSystem->LHBankRegister("audio\\music\\intro\\trailer.sad", 0);
	options.Volume = LH_MUSIC_VOLUME_MAX;
	options.StartChunk = 1;
	options.FadeIn = false;
	options.Positional = false;
	options.Pitch = LH_MUSIC_PITCH_NORMAL;
	GGlobal::Global.audio->AudioSystem->LHMusicPlay(&options);
	LHSys::GetMouse().SetCursor(NULL, LH_MOUSE_IMAGE_TYPE_HIDDEN, 0);
	do
	{
		LH3DRender::StartFrame();
		int tries = 0;
		while (!player->NextFrameReady() && tries < VIDEO_WAIT_MAX_TRIES)
		{
			tries++;
			Good_sleep_us(VIDEO_WAIT_US);
		}
		player->UnpackNextFrame();
		player->DrawToScreen(
			LH3DColor(LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_OPAQUE), 0, 0,
			LHSys::GetScreen().Width(), LHSys::GetScreen().Height(), false, false);
		LH3DRender::FinishFrame();
		LHSys::GetScreen().Flip(1);
	} while (player->CurrentFrame < player->TotalFrames - 1 && LHSys::GetKeyboard().CurrentKey != KB_ESC);
	if (player->Bink)
		BinkSetSoundOnOff(player->Bink, 0);
	player->Close();
	delete player;
	GGlobal::Global.audio->AudioSystem->LHMusicStop(0);
#endif
	LHResetFPU();
	InputReset();
}

bool32_t SkipLogoPressed()
{
	if (LHSys::GetKeyboard().CurrentKey == KB_ESC ||
	    (LHSys::GetMouse().ButtonPressed & (LH_MOUSE_BUTTON_LEFT_DOWN | LH_MOUSE_BUTTON_RIGHT_DOWN)))
		return true;
	return false;
}

void PlayLogoScreens()
{
	char filename[256];
	if (!CDFound || (sprintf(filename, "%c:\\logo.bik", g_GameDriveCharacter), LHOSFile::Exists(filename)))
		strcpy(filename, ".\\data\\logo.bik");
	if (LHOSFile::Exists(filename))
		return;

	InputReset();
	int       video = 1;
	LH3DColor colour;
	colour.b = LH3D_COLOR_CHANNEL_MAX;
	colour.g = LH3D_COLOR_CHANNEL_MAX;
	colour.r = LH3D_COLOR_CHANNEL_MAX;
	do
	{
		LHVideoPlayer* player = NEW(960) LHVideoPlayer;
		player->Init(filename, true, false);
		player->CurrentFrame = -1;
		if (player->Bink)
			BinkGoto(player->Bink, video, 0);
		player->UnpackNextFrame();
		LH3DRender::StartFrame();
		player->CopyToTextures();
		LH3DRender::FinishFrame();
		LH3DRender::StartFrame();
		LH3DRender::FinishFrame();

		Zoomer fade;
		fade.SetPosition(0.0f);
		fade.SetDestination(1.0f, 0.7f);
		int state = LOGO_FADE_IN;
		LH3DRender::g_mode_cleaning = LH3D_CLEANING_MODE_SCREEN;
		LHSys::GetMouse().SetCursor(NULL, LH_MOUSE_IMAGE_TYPE_HIDDEN, 0);
		do
		{
			LH3DRender::StartFrame();
			fade.Update(LH3DTech::g_delta_time * 0.001f);
			int alpha = (int)(fade.GetCurrentValue() * LH3D_COLOR_CHANNEL_MAX);
			if (alpha > 0)
			{
				if (alpha >= LH3D_COLOR_CHANNEL_MAX)
					alpha = LH3D_COLOR_CHANNEL_MAX;
			}
			else
				alpha = 0;
			if (SkipLogoPressed())
			{
				if (state < LOGO_FADE_OUT)
				{
					state = LOGO_FADE_HOLD;
					fade.SetPosition(1.0f);
					InputReset();
				}
				else if (state == LOGO_FADE_OUT)
				{
					state = LOGO_FADE_OUT;
					fade.SetPosition(0.0f);
					goto nextState;
				}
			}
			if (fade.CurrentTime == fade.duration)
			{
			nextState:
				switch (++state)
				{
				case LOGO_FADE_HOLD:
					fade.SetDestination(2.0f, 1.7f);
					break;
				default:
					fade.SetDestination(0.0f, 1.1f);
					break;
				}
			}
			colour.a = alpha;
			player->DoDrawToScreen(colour, -1, -1, LHSys::GetScreen().Width(), LHSys::GetScreen().Height(), false,
			                       false);
			g_enable_callbacks = false;
			LH3DRender::FinishFrame();
			g_enable_callbacks = true;
			LHSys::GetScreen().Flip(1);
		} while (state < LOGO_FADE_DONE);
		player->Close();
		delete player;
	} while (++video <= LOGO_VIDEO_LAST_FRAME);
	InputReset();
	LHResetFPU();
}

#if defined(VERSION_BW1W100)
static SafeDiscRecord StartSystemMarker = {
	/* Seed */ {{0xfe, 0x35, 0x60, 0x75, 0x9e, 0x17, 0x12, 0x75, 0x3c, 0x4b, 0xb2, 0xea,
                 0xaa, 0x87, 0x7f, 0x60, 0xfd, 0xd7, 0x80, 0xd5, 0xf6, 0x0d, 0xe1, 0x4a}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xf7,
	/* Unk1 */ {0x79, 0xa1, 0x35, 0xf1, 0xaf, 0x01, 0xab, 0xef, 0xe5, 0x61, 0x20, 0xed, 0x1b, 0xc2, 0x95, 0xe0,
                0x51, 0x22, 0x0b, 0xb8, 0xa1, 0x9d, 0x80, 0x80, 0xbb, 0xe2, 0xf5, 0xbf, 0xa1, 0x0d, 0x6b},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0x7a, 0xd4, 0x95, 0xd3, 0xc2, 0x87, 0xe0, 0xc1, 0xad, 0x33, 0xd2, 0x38, 0xc6, 0x44, 0x13, 0x91},
	/* ANext */ 0xa0564d16,
	/* BWrapVA */ 0x161b8584,
	/* CDesc */ 0x8b2b8b89,
	/* DRuntime */ 0x007e6080,
	/* EStatic */ 0x766545ce,
	/* FStatic */ 0xebc57bcc,
	/* Cookie */ {0xeb, 0xf1, 0x51, 0x6f, 0x28},
	/* Pad3 */ 0x00,
};
#elif defined(VERSION_BW1W110)
static SafeDiscRecord StartSystemMarker = {
	/* Seed */ {{0x01, 0x30, 0xb1, 0x63, 0x99, 0xeb, 0xcf, 0x63, 0xfa, 0xb9, 0x1c, 0xc7,
                 0x23, 0x0c, 0x70, 0x2b, 0x01, 0xc0, 0xc4, 0x8e, 0x05, 0xf0, 0x75, 0xf2}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x02,
	/* Unk1 */ {0x50, 0xd8, 0xb9, 0x09, 0x80, 0x89, 0x1d, 0x08, 0xb0, 0x3a, 0x81, 0x0b, 0xe0, 0xeb, 0xe4, 0x00,
                0x10, 0x9d, 0x48, 0x2c, 0xdc, 0x6d, 0xac, 0x79, 0x76, 0xff, 0x0f, 0x65, 0xf2, 0xeb, 0x73},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0x19, 0xf5, 0x34, 0x07, 0xc5, 0x20, 0x96, 0xdc, 0x6c, 0x85, 0x10, 0x52, 0xb4, 0xb1, 0x71, 0xa7},
	/* ANext */ 0xfca54f78,
	/* BWrapVA */ 0x9184f9ee,
	/* CDesc */ 0xf488cc37,
	/* DRuntime */ 0x5807d273,
	/* EStatic */ 0x00000000,
	/* FStatic */ 0x1d06691a,
	/* Cookie */ {0x1b, 0x10, 0xb0, 0x83, 0x1c},
	/* Unk3 */ {0x40, 0x61, 0xe7, 0x18, 0xd9, 0x78, 0x46, 0x6d},
};
#elif defined(VERSION_BW1W120)
static SafeDiscRecord StartSystemMarker = {
	/* Seed */ {{0x03, 0xe8, 0x6a, 0xff, 0xba, 0xce, 0x8a, 0xdf, 0x19, 0x27, 0xe0, 0x20,
                 0x31, 0x4e, 0xd5, 0xbe, 0x4d, 0x75, 0xb5, 0x9d, 0x67, 0x9c, 0x95, 0x7c}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x7c,
	/* Unk1 */ {0xc3, 0x75, 0x5b, 0x97, 0xea, 0x55, 0x3a, 0xad, 0x11, 0x34, 0x19, 0xca, 0x38, 0x14, 0xf8, 0xe2,
                0x5f, 0xf4, 0xd8, 0x00, 0x00, 0x00, 0x00, 0xb9, 0x17, 0x10, 0xb4, 0x10, 0xae, 0xb4, 0x96, 0x2f,
                0xd5, 0x94, 0x75, 0xb0, 0xb2, 0xc6, 0x03, 0x46, 0x14, 0xcb, 0x54, 0x5d, 0x23, 0x17, 0x33, 0x74,
                0x4a, 0x77, 0x12, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd7, 0xe5, 0x09, 0x20, 0x0b,
                0x80, 0x3b, 0x96, 0x4f, 0x79, 0xe2, 0x39, 0xa0, 0xcc, 0x3c, 0xcb, 0x0e, 0x35, 0x76, 0x4d, 0x0e,
                0x35, 0x76, 0x4d, 0x2e, 0x5c, 0x56, 0x2c, 0x3c, 0x83, 0x36, 0x0b},
};
#elif defined(VERSION_BW1W130)
static SafeDiscRecord StartSystemMarker = {
	/* Seed */ {{0x3b, 0xf3, 0x92, 0xff, 0x54, 0xd8, 0x97, 0xba, 0x8f, 0x2c, 0x05, 0x45,
                 0x1d, 0x59, 0x1f, 0x75, 0xab, 0x85, 0x1a, 0x30, 0x3f, 0xb2, 0x01, 0xeb}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xcb,
	/* Unk1 */ {0xde, 0x0c, 0xa6, 0x5b, 0x0b, 0x0a, 0x61, 0xeb, 0x37, 0x31, 0x1c, 0x7a, 0x64, 0x3c, 0xd7, 0x04,
                0x91, 0x3b, 0x92, 0x00, 0x00, 0x00, 0x00, 0xa5, 0xad, 0x10, 0x49, 0x26, 0xea, 0x2d, 0x08, 0xb7,
                0x16, 0x2b, 0xc3, 0xc0, 0x5d, 0x3a, 0x04, 0x78, 0xb0, 0x91, 0x7e, 0xd1, 0x6f, 0x1d, 0x39, 0x62,
                0x9c, 0x18, 0xf4, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd6, 0x77, 0x69, 0x6c, 0xe1,
                0xef, 0xc0, 0xa3, 0x2c, 0x54, 0x86, 0x24, 0x12, 0xbc, 0xff, 0x95, 0xb8, 0xa7, 0x79, 0x56, 0xb8,
                0xa7, 0x79, 0x56, 0x42, 0xd4, 0x64, 0x11, 0xda, 0x00, 0x62, 0xcc},
};
#elif defined(VERSION_BW1WCI)
static SafeDiscRecord StartSystemMarker = {
	/* Seed */ {{0xb1, 0x61, 0xc0, 0x7a, 0xb1, 0x95, 0x46, 0x7a, 0x0a, 0x31, 0x06, 0xf5,
                 0x93, 0xb6, 0x24, 0x70, 0xc1, 0x86, 0x01, 0xeb, 0x75, 0xe8, 0xc1, 0x65}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xd2,
	/* Unk1 */ {0xab, 0x42, 0x5b, 0x89, 0x0d, 0x03, 0xd6, 0x38, 0x6f, 0xc3, 0x50, 0xeb, 0xd0, 0x83, 0xcb, 0x9b,
                0x32, 0x44, 0x46, 0x24, 0x66, 0xc2, 0xc1, 0x7d, 0x66, 0xa1, 0x3b, 0x9c, 0x09, 0x26, 0xb6, 0x00,
                0x00, 0x00, 0x00, 0xd0, 0x26, 0xaa, 0xaf, 0xc1, 0x7c, 0xc6, 0x26, 0x72, 0xde, 0x86, 0xa1, 0xa0,
                0x38, 0xac, 0x03, 0xde, 0xa1, 0x07, 0x97, 0x05, 0x90, 0xed, 0x11, 0x42, 0x63, 0x88, 0x8c, 0xd5,
                0x98, 0x2b, 0x07, 0x10, 0x00, 0x00, 0x00, 0x74, 0x69, 0xf5, 0xe1, 0xec, 0xec, 0xdf, 0xae, 0xbb,
                0xc5, 0x46, 0x56, 0x17, 0x09, 0x77, 0xc0, 0xff, 0x74, 0x10, 0x9b, 0x7f, 0xf1, 0x82, 0x9d},
};
#endif

int start_system()
{
	static GUID PreferredDDrawGuid;
	static GUID PreferredDeviceGuid;

	unsigned long value = 0;
	unsigned long screenWidth = 0;
	unsigned long screenHeight = 0;
	unsigned long screenDepth = 0;

	if (RegistryRetrieveGUID(BWSETUP_REGISTRY_KEY, "DDrawGuid", &PreferredDDrawGuid) == LH_OK)
		PreferredDDrawGUID = &PreferredDDrawGuid;
	if (RegistryRetrieveGUID(BWSETUP_REGISTRY_KEY, "D3DeviceGuid", &PreferredDeviceGuid) == LH_OK)
		LH3DRender::lpPrefferedDeviceGUID = &PreferredDeviceGuid;
	LHLobby::InitLibrary();
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "DisplayNetworkDialog", &value) != LH_OK)
		value = 0;
	LHLobby::MGJCallback = NetworkMGJCallbackFunc;
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "ResetDisplay", &value) == LH_OK && value)
		LHSys::GetScreen().ResetDisplay();
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "CacheBusyTextures", &value) == LH_OK)
		LH3DRender::g_b_swap_texture = value;
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "DebugInfo", &value) == LH_OK)
		LH3DRender::g_show_debug_info = value;
	RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "HardwareTnL", &value);
	LH3DRender::g_b_disable_TNL = true;
	LH3DRender::b_need_init = true;
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "MaxAGP", &value) == LH_OK && value)
		LH3DVRAMTex::g_max_amount_agp_mem = value * MEGABYTE;
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "MaxVRAM", &value) == LH_OK && value)
		LH3DVRAMTex::g_max_amount_vram_mem = value * MEGABYTE;
	WindowedNotifyCallBackFunction = WindowedNotifyFunction;
	WindowedNotifyAltTabCallbackFunction = WindowedAltTabFunction;
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "FullScreen", &value) != LH_OK)
		value = 1;
	if (value)
	{
		LHSys::GetScreen().SetFullscreenMode(true);
		LHAssertCustomDraw = FullScreenAssertFunction;
	}
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "ScreenW", &screenWidth) != LH_OK || !screenWidth)
		screenWidth = DEFAULT_SCREEN_WIDTH;
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "ScreenH", &screenHeight) != LH_OK || !screenHeight)
		screenHeight = DEFAULT_SCREEN_HEIGHT;
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "ScreenD", &screenDepth) != LH_OK || !screenDepth)
		screenDepth = DEFAULT_SCREEN_DEPTH;
	screenWidth &= ~1;
	screenHeight &= ~1;

	int detail = DETAIL_LEVEL_DEFAULT;
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "detailidx", &value) == LH_OK && value < DETAIL_LEVEL_COUNT)
		detail = value;
	else
	{
		int speed = CPUCheck::GetCPUSpeed();
		if (speed > CPU_SPEED_HIGHEST_DETAIL)
			detail = DETAIL_LEVEL_HIGHEST;
		else if (speed < CPU_SPEED_DEFAULT_DETAIL)
			detail = (speed >= CPU_SPEED_LOW_DETAIL) + 1;
	}
	LH3DLevelOfDetail::UpdateFromRegistry(BWSETUP_REGISTRY_KEY, false, detail);
	if (LHSys::GetScreen().GetAvailableVidMem() < LOW_RES_VIDEO_MEMORY)
		LH3DTexture::g_b_use_low_res = true;
	LHSys::GetScreen().SetFullscreenMode(true);
	g_b_p4_improvement = true;
	if (LHSys::GetScreen().Open(screenWidth, screenHeight, screenDepth))
	{
		LHSys::GetSystem().SetTerminate();
		exit(0);
	}

	LHSprite::TransparentColor24.Set(0, 0, 0xfe);
	LHSprite::TransparentColor16.Set(0, 0, 0xfe);
	LHSys::GetText().LoadFont("Data\\Font0-0.bmp", LHSys::GetScreen().depth == 16 ? 3 : 1);
	LH3DVideo::SetupVideo(LHSys::GetScreen().RedShift, LHSys::GetScreen().GreenShift, LHSys::GetScreen().BlueShift);
	LoadFonts();
	ReinitLoadingScreen();
	ResetRenderFPU(true);
	LHSys::GetScreen().TextWindow.Set(0, 0, LHSys::GetScreen().width - 1, LHSys::GetScreen().height - 1);

	Base::ObjectHeap = UniqueKeyHeap::Create(OBJECT_HEAP_SIZE, HEAP_KEY_COUNT);
	if (!Base::ObjectHeap)
		return START_SYSTEM_OUT_OF_MEMORY;
	Base::ObjectHeapStore = NEW(1268) HeapStore;
	Base::ObjectHeapStore->Init(Base::ObjectHeap);
	LocalObjectHeap = UniqueKeyHeap::Create(LOCAL_HEAP_SIZE, HEAP_KEY_COUNT);
	if (!LocalObjectHeap)
		return START_SYSTEM_OUT_OF_MEMORY;
	GGame::g_game = NEW(1278) GGame;
	if (!GGame::g_game)
		return START_SYSTEM_OUT_OF_MEMORY;

	char country[COUNTRY_CODE_LENGTH + 2];
	country[0] = '\0';
	country[1] = '\0';
	country[2] = '\0';
	country[3] = '\0';
	FILE* file = fopen("Country.txt", "rt");
	if (file == NULL)
		GGame::g_game->CurrentLanguage = GAME_LANGUAGE_UK_ENGLISH;
	else
	{
		fread(country, COUNTRY_CODE_LENGTH, 1, file);
		fclose(file);
		bool found = false;
		for (unsigned int language = 0; language < GAME_LANGUAGE_LAST; language++)
		{
			if (!_stricmp(country, CountryCodes[language]))
			{
				found = true;
				GGame::g_game->CurrentLanguage = (GAME_LANGUAGE)language;
				break;
			}
		}
		if (!found)
			GGame::g_game->CurrentLanguage = GAME_LANGUAGE_UK_ENGLISH;
	}
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "GatheringFlag", &value) != LH_OK)
		value = 0;
	else if (value)
		GGame::g_game->GameFlags |= GAME_FLAG_ACTIVATE_CREATURE_DESIRES;
	LH3DAtmos::Init(LH3DLevelOfDetail::g_b_use_weather_system ? LH3D_ATMOS_FLAGS_ALL : 0);
	GatheringText::SetupGameFonts();
	SetupThing::Init();
	LH3DRender::RegisterFinishFrameCallback(SETUP_BOXES_FINISH_PRIORITY, true, DrawSetupBoxes, NULL);
	CHECK_PROTECTION_MARKER(StartSystemMarker);
	return 0;
}

int free_system()
{
	LHLobby::CloseLibrary();
	LH3DRender::RemoveFinishFrameCallback(DrawSetupBoxes, NULL);
	SetupThing::Close();
	GatheringText::CloseGameFonts();
	LH3DAtmos::Close();
	LHNetBase::Instance.Shutdown();
	FreeFonts();
	LHSys::GetText().FreeFont();
	if (GGame::g_game)
	{
		delete GGame::g_game;
		GGame::g_game = NULL;
	}
	LHDLL::Destroy();
	if (DebugRecord::Records.count)
		DebugRecord::Records.DeleteAll();
	return 0;
}
