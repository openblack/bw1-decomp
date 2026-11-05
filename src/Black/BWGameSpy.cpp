#include "BWGameSpy.h"

#include <stdio.h> /* For sprintf, sscanf */
// Only BW1W120's unit carries the std::ctype<unsigned short>::id guard of the STL headers.
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#include <string> /* For the std::ctype<unsigned short>::id guard */
#endif
#include <stdlib.h> /* For atoi */
#include <string.h> /* For strcpy, strcmp, strnicmp */
#include <wchar.h>  /* For wcslen, wcscpy, wcsncpy */

#include <chlasm/HelpTextEnums.h>                  /* For HELP_TEXT_DIALOG_ADDITION_18 */
#include <Lionhead/LH3DLib/development/LH3DText.h> /* For CHAR2WCHAR */
#include <Lionhead/LHLib/ver5.0/LHTimer.inl>       /* For LHTimer */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHRegistry.h>      /* For RegistryRetrieveULong */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>       /* For LHSPrintf, LHSPrintfW */
#include <Lionhead/LHLog/ver4.0/LHVersion.h>       /* For LHVersion::GetModuleChecksum */

#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"

#include "alexmfc.h"                      /* For SetupBox */
#include "DialogBoxBase.h"                /* For DialogBoxBase::Hide */
#include "FrontEnd.h"                     /* For WCHAR2CHAR */
#include "GSFunctions.h"                  /* For GSFunctions */
#include "HelpText.h"                     /* For HelpTextDataBase */
#include "LHNetBase.h"                    /* For LHNetBase */
#include "MPFEAskForTeamDetailsMessage.h" /* For MPFEAskForTeamDetailsMessage */
#include "MPFEChannelDetails.h"           /* For MPFEChannelDetails */
#include "MPFEChannelSelector.h"          /* For MPFEChannelSelector */
#include "MPFEConditionMessages.h"        /* For GetInfoFileChecksum */
#include "MPFEConnectionStatus.h"         /* For MPFEConnectionStatus */
#include "MPFEData.h"                     /* For MPFEData */
#include "MPFEDatabaseID.h"               /* For MPFEDatabaseID */
#include "MPFEHasCreature.h"              /* For MPFEHasCreature */
#include "MPFELogin.h"                    /* For MPFELogin */
#include "MPFEPlayerDetails.h"            /* For MPFEPlayerDetails */
#include "PCMain.h"                       /* For QuittingMultiplayerGame */
#include "SafeDisc.h"                     /* For SafeDiscMarker, CHECK_PROTECTION_MARKER */
#include "TextConversion.h"               /* For TextConversion */

#define GAMESPY_TITLE       "bandw"
#define GAMESPY_SECRET_KEY  "KbEab3"
#define GAMESPY_MAX_UPDATES 30

#define GOA_PLAYER_FORMAT "\\player_%u\\%s\\lhuid_%u\\%u"

#define IRC_NICK_PREFIX     "BNW_"
#define IRC_NICK_FORMAT     IRC_NICK_PREFIX "%u"
#define IRC_NICK_PREFIX_LEN 4

#define BW_SETUP_REGISTRY_KEY "Software\\Lionhead Studios Ltd\\Black & White\\BWSetup"

// The allocations pass the original file's __LINE__: BW1W110 added twelve lines above them and BW1W120
// seven more.
#if defined(VERSION_BW1W100)
#define BW_GAME_SPY_SOURCE_FILE "C:\\dev\\black\\BWGameSpy.cpp"
#define BW_GAME_SPY_LINE_OFFSET (-12)
#elif defined(VERSION_BW1W110)
#define BW_GAME_SPY_SOURCE_FILE "C:\\dev\\Black\\BWGameSpy.cpp"
#define BW_GAME_SPY_LINE_OFFSET 0
#else
#define BW_GAME_SPY_SOURCE_FILE "C:\\dev\\MP\\Black\\BWGameSpy.cpp"
#define BW_GAME_SPY_LINE_OFFSET 7
#endif

#define BW1W100_MAX_PLAYERS 8

#ifdef VERSION_BW1W100
#define JOINING_PLAYER_NAME "Billy wanker"
#else
#define JOINING_PLAYER_NAME "abcdef123"
#endif

#define NO_PLAYER_ID 0xffffffff

#define UNKNOWN_PLAYER_NAME "-1"

#define THINK_INTERVAL      10u
#define BAN_REMOVE_INTERVAL 400u

enum LOBBY_MESSAGE_BOX
{
	LOBBY_MESSAGE_BOX_NONE = 0,
	LOBBY_MESSAGE_BOX_ERROR = 1,
	LOBBY_MESSAGE_BOX_CONNECTING = 2,
};

BWGameSpy     BWGameSpy::Instance;
static DBInfo ChatServerQuery;

PEERCallbacks BWGameSpy::Callbacks = {
	BWGameSpy::DisconnectedCallback,      BWGameSpy::RoomMessageCallback,   BWGameSpy::RoomUTMCallback,
	BWGameSpy::RoomNameChangedCallback,   BWGameSpy::PlayerMessageCallback, BWGameSpy::PlayerUTMCallback,
	BWGameSpy::ReadyChangedCallback,      BWGameSpy::GameStartedCallback,   BWGameSpy::PlayerJoinedCallback,
	BWGameSpy::PlayerLeftCallback,        BWGameSpy::PlayerKickedCallback,  BWGameSpy::NewPlayerListCallback,
	BWGameSpy::PlayerChangedNickCallback, BWGameSpy::PlayerInfoCallback,    BWGameSpy::PingCallback,
	BWGameSpy::CrossPingCallback,         BWGameSpy::GOABasicCallback,      BWGameSpy::GOAInfoCallback,
	BWGameSpy::GOARulesCallback,          BWGameSpy::GOAPlayersCallback,    NULL,
};

#if defined(VERSION_BW1W100)
static SafeDiscMarker InfoVersionMarker = {
	/* Seed */ {{0xf5, 0x15, 0x2f, 0x75, 0xf5, 0xd4, 0x60, 0x75, 0x02, 0xb9, 0x2f, 0xea,
                 0x3f, 0x36, 0xce, 0x5f, 0xd5, 0x57, 0xbc, 0xd4, 0xc9, 0x6d, 0xeb, 0x49}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xb6, // runtime value
	/* Unk1 */ {0x99, 0x49, 0x34, 0xa9, 0xaf, 0x78, 0xa9, 0x9c, 0xd5, 0xb7, 0x1e, 0x93, 0xdb, 0xd6, 0x93, 0x81,
                0xf1, 0x05, 0x09, 0x9c, 0x70, 0x36, 0x7e, 0xda, 0x1d, 0x64, 0xf3, 0x05, 0x62, 0xdc, 0x68},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0x4a, 0xc7, 0xf4, 0xee, 0x22, 0x2c, 0xfc, 0x24, 0xb9, 0x53, 0x0e, 0x94, 0xe0, 0x4d, 0x57, 0x83},
	/* ANext */ 0x9c6d5ff1,    // runtime value
	/* BWrapVA */ 0x124894ee,  // runtime value
	/* CDesc */ 0x87b5a860,    // runtime value
	/* DRuntime */ 0xfd1161a8, // runtime value
	/* EStatic */ 0x719924ed,
	/* FStatic */ 0xe6c83ae2,
	/* Cookie */ {0x04, 0x38, 0x83, 0x7b, 0xb9}, // runtime value
	/* Pad3 */ 0x00,
};
#elif defined(VERSION_BW1W110)
static SafeDiscMarker InfoVersionMarker = {
	/* Seed */ {{0x97, 0x0d, 0xab, 0x38, 0x27, 0xc6, 0xf0, 0x38, 0x16, 0xad, 0x2b, 0x71,
                 0xb5, 0xc3, 0x42, 0xaa, 0x5d, 0x36, 0xac, 0xe2, 0xf3, 0x43, 0x57, 0x1b}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x24, // runtime value
	/* Unk1 */ {0x5f, 0xad, 0x8c, 0xb9, 0x6c, 0x58, 0xc5, 0x4e, 0x6a, 0x13, 0xfe, 0xe7, 0x87, 0xae, 0x36, 0x7a,
                0x95, 0x59, 0x6f, 0x64, 0x48, 0x07, 0xa8, 0x00, 0xb0, 0xaf, 0xe0, 0x31, 0xef, 0x01, 0x19},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0x84, 0xbd, 0xe8, 0x3e, 0xa8, 0x5a, 0xdc, 0x59, 0x72, 0x9e, 0x4f, 0xd9, 0xb1, 0xdd, 0x03, 0x3c},
	/* ANext */ 0x110bc69b,    // runtime value
	/* BWrapVA */ 0xde0e9cc2,  // runtime value
	/* CDesc */ 0x171dd3e1,    // runtime value
	/* DRuntime */ 0x5092175b, // runtime value
	/* EStatic */ 0x00000000,
	/* FStatic */ 0xc3a7e856,
	/* Cookie */ {0xed, 0x6e, 0x0a, 0xfa, 0x84}, // runtime value
	/* Unk3 */ {0x7c, 0xb5, 0x32, 0xe7, 0x52, 0x4d, 0xdc, 0xda},
};

static SafeDiscMarker CreatureVersionMarker = {
	/* Seed */ {{0x1d, 0x44, 0x4a, 0x2b, 0x25, 0x88, 0x11, 0x2b, 0x8a, 0x43, 0xcf, 0x56,
                 0x67, 0x20, 0x9d, 0x81, 0x75, 0x10, 0x29, 0xad, 0x91, 0x54, 0x73, 0xd8}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xce, // runtime value
	/* Unk1 */ {0xdc, 0x07, 0x2f, 0xe9, 0x20, 0x52, 0x5a, 0x04, 0x75, 0x8c, 0x85, 0x23, 0xa9, 0xe6, 0xb0, 0x39,
                0xed, 0x30, 0xdc, 0x6c, 0xdd, 0x78, 0x07, 0xd2, 0x75, 0xc5, 0x32, 0xab, 0xe8, 0x54, 0x5e},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0xbc, 0x33, 0x83, 0x88, 0x5b, 0xe4, 0x45, 0x2e, 0x45, 0xa5, 0x47, 0x13, 0xbf, 0x12, 0x75, 0x1d},
	/* ANext */ 0x1ca51b38,    // runtime value
	/* BWrapVA */ 0xb8fa11ce,  // runtime value
	/* CDesc */ 0xe3eff2ab,    // runtime value
	/* DRuntime */ 0x0e6d3385, // runtime value
	/* EStatic */ 0x00000000,
	/* FStatic */ 0x677263f2,
	/* Cookie */ {0x0f, 0x2f, 0xd5, 0x90, 0x2c}, // runtime value
	/* Unk3 */ {0x73, 0x1f, 0xbc, 0x80, 0x1d, 0x81, 0xfb, 0x7d},
};
#elif defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#if defined(VERSION_BW1W130)
static SafeDiscMarker InfoVersionMarker = {
	/* Seed */ {{0x03, 0xca, 0x93, 0xff, 0x62, 0xd7, 0x74, 0x91, 0xf1, 0x0f, 0x05, 0x6e,
                 0xe1, 0x1f, 0x1f, 0x23, 0xd1, 0x2f, 0x1a, 0xb5, 0xc7, 0x3f, 0x01, 0x47}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xb5,
	/* Unk1 */ {0x4f, 0x0c, 0xd9, 0xa7, 0x5f, 0x0b, 0x6b, 0x95, 0x7f, 0x26, 0xfd, 0x8a, 0x7f, 0x3d, 0x8f, 0x7a,
                0x8f, 0x38, 0x21, 0x00, 0x00, 0x00, 0x00, 0x59, 0x8f, 0x11, 0xb7, 0x58, 0xaf, 0x22, 0x45, 0x4f,
                0xbf, 0x29, 0xd7, 0x40, 0x5e, 0x3a, 0x04, 0x3e, 0x05, 0x92, 0x69, 0x2d, 0xdf, 0x13, 0xfb, 0x1c,
                0xef, 0x1e, 0x8d, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xf0, 0x20, 0xe1, 0x97,
                0xc8, 0x80, 0xad, 0x86, 0xce, 0xaf, 0x46, 0xa2, 0xc8, 0xc9, 0x00, 0xc6, 0x4e, 0x7f, 0xf9, 0xc6,
                0x4e, 0x7f, 0xf9, 0xb2, 0x5e, 0x7a, 0x8b, 0xa4, 0x6e, 0x61, 0x1d},
};

static SafeDiscMarker CreatureVersionMarker = {
	/* Seed */ {{0x93, 0xd8, 0x71, 0xff, 0x7d, 0xc4, 0xd5, 0x9f, 0x66, 0x1d, 0xa4, 0x60,
                 0xcf, 0x3a, 0x5d, 0x3e, 0x30, 0x58, 0xf9, 0xde, 0x9b, 0x75, 0x85, 0x7d}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xfe,
	/* Unk1 */ {0x92, 0x21, 0x1c, 0x65, 0xb0, 0xcd, 0xbc, 0xc8, 0xdd, 0x79, 0x5b, 0x32, 0xeb, 0x35, 0xfa, 0x95,
                0x08, 0xd0, 0x9a, 0x00, 0x00, 0x00, 0x00, 0xcf, 0x35, 0x4a, 0x3d, 0x61, 0x43, 0x18, 0xd8, 0xcb,
                0x60, 0xa4, 0x78, 0x60, 0x5e, 0x3a, 0x04, 0xbd, 0xa6, 0xe4, 0x17, 0x97, 0x9b, 0xac, 0xb7, 0xf9,
                0xb8, 0xc8, 0x56, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x34, 0x25, 0xc4, 0x06, 0x7e,
                0x8b, 0x79, 0x13, 0x24, 0x37, 0x93, 0x94, 0xca, 0x10, 0xd9, 0xae, 0x5d, 0x69, 0x63, 0x12, 0x5d,
                0x69, 0x63, 0x12, 0xc1, 0x86, 0x0f, 0xb1, 0x29, 0xa4, 0xab, 0x51},
};
#else
static SafeDiscMarker InfoVersionMarker = {
	/* Seed */ {{0x73, 0xc1, 0x6b, 0xff, 0x7b, 0x8e, 0x56, 0xaf, 0x30, 0x5b, 0x1f, 0x50,
                 0x63, 0xb6, 0x2b, 0x5f, 0x92, 0x11, 0x4b, 0x0f, 0xc3, 0x6c, 0x68, 0xbf}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xf1,
	/* Unk1 */ {0xc7, 0x89, 0x6f, 0x21, 0x23, 0xa9, 0x1f, 0x52, 0x6e, 0xde, 0xcf, 0x82, 0xd9, 0xef, 0x7f, 0xb3,
                0x34, 0x0f, 0x2e, 0x00, 0x00, 0x00, 0x00, 0xa3, 0x1e, 0xe8, 0xdd, 0x13, 0xeb, 0x4d, 0x8e, 0x43,
                0x46, 0x6d, 0x3e, 0x70, 0xb2, 0xc6, 0x03, 0x03, 0x60, 0x3c, 0xee, 0xa3, 0xfc, 0xe3, 0x9e, 0xd3,
                0x57, 0x83, 0x4e, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x76, 0x03, 0xd4, 0x00,
                0x95, 0xa5, 0xbb, 0x99, 0xc5, 0x7b, 0x06, 0x43, 0x4b, 0xf5, 0xbc, 0xf3, 0x7a, 0x87, 0x6d, 0xf3,
                0x7a, 0x87, 0x6d, 0x24, 0xd6, 0xa4, 0x1d, 0x53, 0x31, 0xc4, 0xcd},
};

static SafeDiscMarker CreatureVersionMarker = {
	/* Seed */ {{0x4b, 0xd5, 0x49, 0xff, 0x79, 0xb5, 0xad, 0xf4, 0xaa, 0x60, 0xe4, 0x0b,
                 0x57, 0xc1, 0xdd, 0xe8, 0xfc, 0x21, 0xb8, 0xdc, 0xab, 0x82, 0x84, 0xd0}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x53,
	/* Unk1 */ {0xe3, 0x60, 0xc4, 0xfd, 0x43, 0x4f, 0xb8, 0xa4, 0xb4, 0x3b, 0xac, 0x52, 0x05, 0x36, 0xa0, 0xf9,
                0x65, 0x12, 0x94, 0x00, 0x00, 0x00, 0x00, 0xe7, 0x57, 0x3a, 0x8a, 0x4d, 0x27, 0xc5, 0x7d, 0xfb,
                0x87, 0xa1, 0x71, 0x60, 0xb2, 0xc6, 0x03, 0xe9, 0x3d, 0x11, 0x65, 0x4f, 0x49, 0x28, 0x59, 0xf5,
                0xa9, 0x34, 0x4d, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb4, 0x0d, 0x37, 0x13, 0x8b,
                0xaa, 0xa8, 0xc7, 0xa8, 0xa8, 0xa4, 0x15, 0x8e, 0xd2, 0xc9, 0x1f, 0xf1, 0xed, 0xae, 0x06, 0xf1,
                0xed, 0xae, 0x06, 0x99, 0x4e, 0xb5, 0xfa, 0x45, 0xaf, 0x91, 0xee},
};
#endif
#elif defined(VERSION_BW1WCI)
static SafeDiscMarker InfoVersionMarker = {
	/* Seed */ {{0xb0, 0x07, 0x67, 0x0b, 0x80, 0xd7, 0x04, 0x0b, 0x18, 0xfc, 0x48, 0x16,
                 0xd0, 0x41, 0x71, 0x22, 0xc1, 0x1e, 0x9c, 0x2d, 0x70, 0x26, 0x03, 0x39}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xd5,
	/* Unk1 */ {0x35, 0xd1, 0x4f, 0x81, 0x3d, 0x38, 0x5b, 0x31, 0x55, 0x8f, 0x66, 0xe1, 0x4c, 0x06, 0x72, 0x90,
                0x54, 0x6d, 0x7d, 0x38, 0xaf, 0x12, 0x88, 0x30, 0x35, 0x7f, 0x94, 0x3f, 0x36, 0x01, 0x9f, 0x00,
                0x00, 0x00, 0x00, 0xc0, 0x46, 0xdc, 0xb5, 0xb0, 0x82, 0xd7, 0xc1, 0x60, 0x8a, 0x3e, 0xcd, 0xf0,
                0x37, 0xac, 0x03, 0xc7, 0x99, 0x0c, 0xe4, 0xb0, 0xf7, 0x77, 0xef, 0x8b, 0xa9, 0xda, 0xfa, 0x4f,
                0xed, 0x22, 0x06, 0x10, 0x00, 0x00, 0x00, 0x74, 0x69, 0xf5, 0xe1, 0x4a, 0x12, 0xc1, 0xd6, 0x8f,
                0x68, 0xfe, 0x3e, 0x47, 0x73, 0x39, 0xa5, 0x60, 0x7f, 0x49, 0x3e, 0x9b, 0xf3, 0x1a, 0xef},
};

static SafeDiscMarker CreatureVersionMarker = {
	/* Seed */ {{0x39, 0x21, 0xc5, 0x01, 0x81, 0xf1, 0xa6, 0x01, 0x42, 0x92, 0xe9, 0x03,
                 0x2b, 0x34, 0x0b, 0x05, 0xe5, 0x84, 0x14, 0x07, 0x1d, 0xa6, 0xd9, 0x08}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x8a,
	/* Unk1 */ {0xe8, 0x63, 0x0c, 0xc9, 0x09, 0x29, 0x0e, 0x00, 0x3b, 0xfe, 0x0f, 0x3b, 0x4c, 0xb3, 0x11, 0x73,
                0x6d, 0x78, 0x13, 0x9c, 0x5e, 0x9e, 0x15, 0x65, 0xf8, 0x46, 0x17, 0x77, 0x8c, 0x64, 0x18, 0x00,
                0x00, 0x00, 0x00, 0x50, 0x2e, 0xfe, 0x1f, 0xc9, 0x34, 0x17, 0x1e, 0x02, 0x56, 0xdc, 0x1f, 0xe0,
                0x37, 0xac, 0x03, 0x72, 0x98, 0x66, 0x23, 0x2d, 0xee, 0x2f, 0x25, 0x4d, 0xda, 0xf0, 0x26, 0x76,
                0xa1, 0xd6, 0x28, 0x10, 0x00, 0x00, 0x00, 0x74, 0x69, 0xf5, 0xe1, 0xd3, 0xf3, 0x16, 0xa5, 0x79,
                0x3c, 0xfc, 0x58, 0x4f, 0xb6, 0x4f, 0x01, 0xbf, 0x26, 0xb0, 0xec, 0xec, 0x3a, 0x56, 0xa6},
};
#endif

bool LayerCommunication::Connected;
int  LayerCommunication::NumPeopleInRoom;

CHAT     BWGameSpy::Chat;
int      BWGameSpy::NumPlayersEnumerated;
RoomType BWGameSpy::CurrentRoom;
GServer  BWGameSpy::CurrentServer;
int      BWGameSpy::NumPlayersExpected;
#ifndef VERSION_BW1W100
bool BWGameSpy::Locked;
#endif
char BWGameSpy::ChatServer[CHAT_SERVER_SIZE];
char BWGameSpy::BanChannel[CHANNEL_NAME_SIZE];
char BWGameSpy::Bans[MAX_BANS][BAN_NAME_SIZE];
int  BWGameSpy::NumBans;
#ifndef VERSION_BW1W100
CHATChannelMode BWGameSpy::ChannelMode;
#endif

static bool GetLHUIDFromIRCNick(const char* nick, LH_USER_ID* id)
{
	if (_strnicmp(nick, IRC_NICK_PREFIX, IRC_NICK_PREFIX_LEN) != 0)
	{
		return false;
	}
	*id = atoi(nick + IRC_NICK_PREFIX_LEN);
	return true;
}

void BWGameSpy::SendMessageA(wchar_t* message, bool private_message, MPFEPlayerDetails* player)
{
	char text[0x200];
	strcpy(text, LHSPrintf("%s", ENCODE_NAME(message)));
	if (private_message)
	{
		if (player != NULL)
		{
			char nick[0x200];
			sprintf(nick, IRC_NICK_FORMAT, player->DatabaseID.id);
			peerMessagePlayer(LHNetBase::Instance.Peer, nick, text, NormalMessage);
		}
	}
	else
	{
		peerMessageRoom(LHNetBase::Instance.Peer, CurrentRoom, text, NormalMessage);
	}
}

void BWGameSpy::SendMessageA(const char* message, bool private_message, MPFEPlayerDetails* player)
{
	if (private_message)
	{
		if (player != NULL)
		{
			char nick[0x200];
			sprintf(nick, IRC_NICK_FORMAT, player->DatabaseID.id);
			peerMessagePlayer(LHNetBase::Instance.Peer, nick, message, NormalMessage);
		}
	}
	else
	{
		peerMessageRoom(LHNetBase::Instance.Peer, CurrentRoom, message, NormalMessage);
	}
}

void BWGameSpy::LeaveGameChannel()
{
	if (CurrentRoom == StagingRoom && MPFEData::Data.InGameChannel)
	{
		NumBans = 0;
		MPFEData::Data.Reset();
		DialogBoxBase::Hide();
		InitialiseLobbyState();
	}
}

void BWGameSpy::LeaveMainRoom()
{
	if (CurrentRoom == TitleRoom)
	{
		peerLeaveRoom(LHNetBase::Instance.Peer, TitleRoom);
		Disconnect();
	}
}

void BWGameSpy::BeginPlayerEnumeration()
{
	PlayerListChanged(StagingRoom);
}

void BWGameSpy::StartGame()
{
	if (LHNetBase::Instance.Peer != NULL)
	{
		peerStopGame(LHNetBase::Instance.Peer);
		peerDisconnect(LHNetBase::Instance.Peer);
		LHNetBase::Instance.Peer = NULL;
	}
}

void BWGameSpy::PlayerInfoCallback(PEER peer, const char* nick, unsigned int IP, int profileID, void* param) {}

void BWGameSpy::RoomUTMCallback(PEER peer, RoomType roomType, const char* nick, const char* command,
                                const char* parameters, void* param)
{
}

void BWGameSpy::PlayerUTMCallback(PEER peer, const char* nick, const char* command, const char* parameters, void* param)
{
}

void BWGameSpy::PlayerKickedCallback(PEER peer, RoomType roomType, const char* nick, const char* reason, void* param)
{
#ifndef VERSION_BW1W100
	LH_USER_ID id;
	wchar_t    name[0x100];
	GetLHUIDFromIRCNick(nick, &id);
	wcscpy(name, MPFEData::Data.GetPlayerDetailsFromDatabaseID(id)->GetName());
	MPFEData::Data.A2D_LeaveGameChannel();
	MPFEData::Data.D2A_YouWereKickedGame(name);
#endif
}

void BWGameSpy::NewPlayerListCallback(PEER peer, RoomType roomType, void* param) {}

void BWGameSpy::RoomNameChangedCallback(PEER peer, RoomType roomType, void* param) {}

bool BWGameSpy::IsOOSChannel(MPFEChannelDetails* channel)
{
	char version[0x80];
	strcpy(version, ServerGetStringValue(channel->Server, "oosversion", "0"));
	if (version != NULL && strcmp(version, "") != 0 && strcmp(version, "0") != 0)
	{
		return true;
	}
	return false;
}

bool BWGameSpy::Connect()
{
	MPFEData::Data.LocalPlayerID = NO_PLAYER_ID;
	MPFEChannelSelector::Instance.setup_box->MessageBoxA(
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_18), MSGBOXSTYLE_NO_BUTTONS,
		LOBBY_MESSAGE_BOX_CONNECTING);
	MPFEData::OOSChecksum = MPFEData::Data.GetOOSChecksum();
	if (Connected)
	{
		Disconnect();
	}
	if (LHNetBase::Instance.Peer == NULL)
	{
		Callbacks.param = NULL;
		LHNetBase::Instance.Peer = peerInitialize(&Callbacks);
	}
	ChatServerQuery.Reset();
	if (db_execute_transaction_async(&ChatServerQuery, "BWGETPEERCHAT", LHNetBase::Instance.User, NULL) ==
	    DBSTATUS_ERROR)
	{
		return false;
	}
	char* port;
	bool  done = false;
	while (!done)
	{
		DBSTATUS status = db_get_status_async(&ChatServerQuery);
		if (status == DBSTATUS_ERROR)
		{
			return false;
		}
		if (status == DBSTATUS_COMPLETE)
		{
			char**        result;
			unsigned long numRows;
			unsigned long numColumns;
			if (db_get_result(&ChatServerQuery, &numRows, &numColumns, &result) != LH_OK)
			{
				return false;
			}
			if (result == NULL)
			{
				return false;
			}
			strcpy(ChatServer, result[0]);
			for (unsigned int i = 0; i < strlen(ChatServer); i++)
			{
				if (ChatServer[i] == ':')
				{
					port = &ChatServer[i + 1];
					ChatServer[i] = '\0';
				}
			}
			done = true;
		}
	}
	MPFEData::InfoFileChecksum2 = GetInfoFileChecksum2();
	MPFEData::InfoFileChecksum = GetInfoFileChecksum();
	if (!peerIsConnected(LHNetBase::Instance.Peer))
	{
		wcsncpy(MPFEData::Data.LocalPlayerName, LHNetBase::Instance.User->GetName(), MPFEData::PLAYER_NAME_SIZE - 1);
		MPFEData::Data.LocalPlayerID = LHNetBase::Instance.User->GetID();
		peerConnect(LHNetBase::Instance.Peer, LHSPrintf(IRC_NICK_FORMAT, MPFEData::Data.LocalPlayerID),
		            LHSPrintf("%s", ENCODE_NAME(LHNetBase::Instance.User->GetName())), ChatServer, atoi(port),
		            LHNetBase::Instance.User->GetID(), NickErrorCallback, ConnectCallback, NULL, PEERFalse);
		return true;
	}
	if (InitialiseLobbyState())
	{
		Connected = true;
	}
	return true;
}

void BWGameSpy::Think()
{
	if (LHNetBase::Instance.Peer == NULL)
	{
		return;
	}
	static LHTimer thinkTimer;
	if (!thinkTimer.Running())
	{
		thinkTimer.Start();
	}
#ifdef VERSION_BW1W100
	if (thinkTimer.MSeconds() > THINK_INTERVAL)
	{
		if (LHNetBase::Instance.Peer != NULL)
		{
			peerThink(LHNetBase::Instance.Peer);
		}
		thinkTimer.Restart(0);
	}
#else
	if (thinkTimer.MSeconds() > THINK_INTERVAL && LHNetBase::Instance.Peer != NULL)
	{
		peerThink(LHNetBase::Instance.Peer);
		thinkTimer.Restart(0);
	}
#endif
	static LHTimer banTimer;
	if (MPFEData::Data.InGameChannel && MPFEData::Data.IsHost)
	{
		if (!banTimer.Running())
		{
			banTimer.Start();
		}
		if (banTimer.MSeconds() > BAN_REMOVE_INTERVAL)
		{
			if (NumBans != 0)
			{
				chatRemoveChannelBan(Chat, BanChannel, Bans[NumBans - 1]);
				NumBans--;
			}
			banTimer.Restart(0);
		}
	}
}

bool BWGameSpy::InitialiseLobbyState()
{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (LHNetBase::Instance.Peer != NULL && peerIsConnected(LHNetBase::Instance.Peer))
	{
		peerLeaveRoom(LHNetBase::Instance.Peer, StagingRoom);
		peerThink(LHNetBase::Instance.Peer);
		peerLeaveRoom(LHNetBase::Instance.Peer, TitleRoom);
		peerThink(LHNetBase::Instance.Peer);
	}
	if (!QuittingMultiplayerGame)
	{
		DialogBoxBase::HideAll();
		MPFEChannelSelector::Instance.Show();
		MPFEChannelSelector::Instance.RemoveAllChannels();
		peerStartListingGames(LHNetBase::Instance.Peer, ListingGamesCallback, NULL);
	}
#else
	peerLeaveRoom(LHNetBase::Instance.Peer, StagingRoom);
	if (LHNetBase::Instance.Peer != NULL && peerIsConnected(LHNetBase::Instance.Peer))
	{
		peerThink(LHNetBase::Instance.Peer);
	}
	peerLeaveRoom(LHNetBase::Instance.Peer, TitleRoom);
	if (LHNetBase::Instance.Peer != NULL && peerIsConnected(LHNetBase::Instance.Peer))
	{
		peerThink(LHNetBase::Instance.Peer);
	}
	DialogBoxBase::HideAll();
	MPFEChannelSelector::Instance.Show();
	MPFEChannelSelector::Instance.RemoveAllChannels();
	peerStartListingGames(LHNetBase::Instance.Peer, ListingGamesCallback, NULL);
#endif
	return true;
}

void BWGameSpy::Disconnect()
{
	if (LHNetBase::Instance.Peer != NULL && Connected)
	{
		Connected = false;
		peerDisconnect(LHNetBase::Instance.Peer);
		peerShutdown(LHNetBase::Instance.Peer);
		LHNetBase::Instance.Peer = NULL;
	}
}

void BWGameSpy::DisconnectedCallback(PEER peer, const char* reason, void* param)
{
	if (Connected)
	{
		CurrentRoom = NumRooms;
		MPFEData::Data.Reset();
		DialogBoxBase::Hide();
		MPFEConnectionStatus::Status.LeaveLobbyScreen();
		MPFELogin::Instance.setup_box->MessageBoxA(
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_STATUS_CC_STATUS_BACK),
			MSGBOXSTYLE_SINGLE_BUTTON, LOBBY_MESSAGE_BOX_NONE);
	}
}

void BWGameSpy::PlayerMessageCallback(PEER peer, const char* nick, const char* message, MessageType messageType,
                                      void* param)
{
	if (MPFEData::Data.CurrentChannel == NULL)
	{
		return;
	}
	LH_USER_ID id;
	if (!GetLHUIDFromIRCNick(nick, &id))
	{
		return;
	}
	MPFEPlayerDetails* player = MPFEData::Data.GetPlayerDetailsFromDatabaseID(id);
	if (player == NULL || player == MPFEData::Data.GetLocalPlayer())
	{
		return;
	}
	wchar_t* text = new (BW_GAME_SPY_SOURCE_FILE, 386 + BW_GAME_SPY_LINE_OFFSET) wchar_t[strlen(message) + 1];
	wcscpy(text, LHSPrintfW(L"%s", DECODE_NAME(message)));
	MPFEMessageObject::ProcessIncomingMessage(text, player, LHSPrintfW(L"%s", DECODE_NAME(nick)));
	if (text != NULL)
	{
		delete text;
	}
}

void BWGameSpy::RoomMessageCallback(PEER peer, RoomType roomType, const char* nick, const char* message,
                                    MessageType messageType, void* param)
{
	if (MPFEData::Data.CurrentChannel == NULL)
	{
		return;
	}
	LH_USER_ID id;
	if (!GetLHUIDFromIRCNick(nick, &id))
	{
		return;
	}
	if (id == MPFEData::Data.LocalPlayerID)
	{
		return;
	}
	MPFEPlayerDetails* player = MPFEData::Data.GetPlayerDetailsFromDatabaseID(id);
	if (player == NULL || player == MPFEData::Data.GetLocalPlayer())
	{
		return;
	}
	wchar_t* text = new (BW_GAME_SPY_SOURCE_FILE, 417 + BW_GAME_SPY_LINE_OFFSET) wchar_t[strlen(message) + 1];
	wcscpy(text, LHSPrintfW(L"%s", DECODE_NAME(message)));
	MPFEMessageObject::ProcessIncomingMessage(text, player, NULL);
	if (text != NULL)
	{
		delete text;
	}
}

void BWGameSpy::ReadyChangedCallback(PEER peer, const char* nick, PEERBool ready, void* param) {}

void BWGameSpy::PlayerJoinedCallback(PEER peer, RoomType roomType, const char* nick, void* param)
{
	if (roomType == StagingRoom)
	{
		NumPeopleInRoom++;
		LH_USER_ID id;
		if (GetLHUIDFromIRCNick(nick, &id))
		{
			MPFEData::Data.D_PlayerJoined(JOINING_PLAYER_NAME, id);
		}
	}
}

void BWGameSpy::PlayerLeftCallback(PEER peer, RoomType roomType, const char* nick, void* param)
{
	if (roomType != StagingRoom || MPFEData::Data.GameStarting)
	{
		return;
	}
	NumPeopleInRoom--;
	LH_USER_ID id;
	if (!GetLHUIDFromIRCNick(nick, &id))
	{
		return;
	}
	MPFEPlayerDetails* player = MPFEData::Data.GetPlayerDetailsFromDatabaseID(id);
	if (player == NULL)
	{
		return;
	}
	MPFEData::Data.D_PlayerLeft(player->DatabaseID, player->GetName());
	if (MPFEData::Data.IsHost)
	{
		peerStateChanged(LHNetBase::Instance.Peer);
		if (LHNetBase::Instance.Peer != NULL && peerIsConnected(LHNetBase::Instance.Peer))
		{
			peerThink(LHNetBase::Instance.Peer);
		}
	}
}

void BWGameSpy::PlayerChangedNickCallback(PEER peer, RoomType roomType, const char* oldNick, const char* newNick,
                                          void* param)
{
}

void BWGameSpy::PingCallback(PEER peer, const char* nick, int ping, void* param) {}

void BWGameSpy::CrossPingCallback(PEER peer, const char* nick1, const char* nick2, int crossPing, void* param)
{
	if (MPFEData::Data.CurrentChannel == NULL)
	{
		return;
	}
	LH_USER_ID id1;
	if (!GetLHUIDFromIRCNick(nick1, &id1))
	{
		return;
	}
	LH_USER_ID id2;
	if (!GetLHUIDFromIRCNick(nick2, &id2))
	{
		return;
	}
	MPFEPlayerDetails* player1 = MPFEData::Data.GetPlayerDetailsFromDatabaseID(id1);
	MPFEPlayerDetails* player2 = MPFEData::Data.GetPlayerDetailsFromDatabaseID(id2);
	if (player1 == NULL || player2 == NULL)
	{
		return;
	}
	if (player1->IsHost || player2->IsHost)
	{
		(player1->IsHost ? player2 : player1)->Ping = crossPing;
	}
}

void BWGameSpy::RoomJoined(RoomType roomType)
{
	CurrentRoom = roomType;
	switch (roomType)
	{
	case TitleRoom:
		EnterTitleRoom();
		break;
	case StagingRoom:
		EnterGameRoom(MPFEData::Data.IsHost,
		              LHSPrintfW(L"%s", DECODE_NAME(peerGetRoomName(LHNetBase::Instance.Peer, StagingRoom))));
		break;
	}
}

void chatUserInfoCallback(CHAT chat, CHATBool success, const char* nick, const char* user, const char* name,
                          const char* address, int numChannels, const char** channels, void* param)
{
	if (!success)
	{
		strcpy((char*)param, UNKNOWN_PLAYER_NAME);
		return;
	}
	if (strcmp((char*)param, "") == 0)
	{
		strcpy((char*)param, name);
		return;
	}
	strcpy((char*)param, address);
}

void BWGameSpy::GetNameFromServerString(LH_USER_ID id, char* name)
{
	if (id == MPFEData::Data.LocalPlayerID)
	{
		strcpy(name, LHSPrintf("%s", ENCODE_NAME(MPFEData::Data.LocalPlayerName)));
		return;
	}
	for (int player = 0; player < Instance.GetNumPeopleInRoom(); player++)
	{
		int playerID = ServerGetPlayerIntValue(CurrentServer, player, "lhuid", 0);
		if (playerID != (int)NO_PLAYER_ID && playerID != 0 && playerID == id)
		{
			strcpy(name, ServerGetPlayerStringValue(CurrentServer, player, "player", "Cheater"));
			return;
		}
	}
	char buffer[0xff] = "";
	chatGetUserInfo(Chat, LHSPrintf(IRC_NICK_FORMAT, id.id), chatUserInfoCallback, buffer, CHATTrue);
	if (strcmp(buffer, UNKNOWN_PLAYER_NAME) != 0)
	{
		strcpy(name, buffer);
	}
}

void BWGameSpy::EnumPlayersCB(PEER peer, PEERBool success, RoomType roomType, int index, const char* nick,
                              PEERBool host, void* param)
{
	if (!success || roomType != StagingRoom || index == -1)
	{
		return;
	}
	NumPeopleInRoom++;
	LH_USER_ID id;
	char       name[0x100];
	if (!GetLHUIDFromIRCNick(nick, &id))
	{
		MPFEData::Data.A2D_LeaveGameChannel();
	}
	GetNameFromServerString(id, name);
	if (host == PEERTrue && id != MPFEData::Data.LocalPlayerID)
	{
		*(bool*)param = true;
	}
	MPFEData::Data.D_EnumeratingPlayersAdd(name, host == PEERTrue, id);
#ifdef VERSION_BW1W100
	if (++NumPlayersEnumerated == NumPlayersExpected)
	{
		MPFEData::Data.D_FinishedPlayerEnumeration(NumPlayersEnumerated);
	}
#else
	NumPlayersEnumerated++;
#endif
}

void BWGameSpy::PlayerListChanged(RoomType roomType)
{
	if (roomType == StagingRoom)
	{
		NumPlayersEnumerated = 0;
		NumPlayersExpected = Instance.GetNumPeopleInRoom() + 1;
		bool hostFound = false;
		peerEnumPlayers(LHNetBase::Instance.Peer, StagingRoom, EnumPlayersCB, &hostFound);
#ifdef VERSION_BW1W100
		if (!hostFound)
		{
			Instance.InitialiseLobbyState();
		}
#else
		if (!hostFound)
		{
			Instance.InitialiseLobbyState();
			return;
		}
		MPFEData::Data.D_FinishedPlayerEnumeration(NumPlayersEnumerated);
#endif
	}
}

void BWGameSpy::JoinCallback(PEER peer, PEERBool success, RoomType roomType, void* param)
{
#ifdef VERSION_BW1W100
	if (success)
	{
		RoomJoined(roomType);
	}
	else if (roomType == StagingRoom)
	{
#else
	if (success && (roomType != StagingRoom || peerGetRoomChannel(LHNetBase::Instance.Peer, roomType) != NULL))
	{
		RoomJoined(roomType);
	}
	else if (roomType == StagingRoom)
	{
		if (MPFEData::Data.CurrentChannel != NULL && MPFEData::Data.CurrentChannel->Server != NULL)
		{
			MPFEData::Data.CurrentChannel->NumPlayers =
				ServerGetIntValue(MPFEData::Data.CurrentChannel->Server, "numplayers", 1);
		}
#endif
		peerJoinTitleRoom(peer, JoinCallback, param, PEERFalse);
		if (LHNetBase::Instance.Peer == NULL || !peerIsConnected(LHNetBase::Instance.Peer))
		{
			MPFEConnectionStatus::Status.LeaveLobbyScreen();
		}
	}
	else
	{
		MPFEChannelSelector::Instance.setup_box->MessageBoxA(
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_19), MSGBOXSTYLE_SINGLE_BUTTON,
			LOBBY_MESSAGE_BOX_ERROR);
	}
}

void BWGameSpy::ListingGamesCallback(PEER peer, PEERBool success, const char* name, GServer server, PEERBool staging,
                                     int msg, int progress, void* param)
{
	if (success)
	{
		ListGame(server, staging, msg);
	}
}

bool IsSameInfoVersion(GServer server)
{
	char expected[0x64];
	char version[0x64];
	sprintf(expected, "%I64u", MPFEData::InfoFileChecksum2);
	strcpy(version, ServerGetStringValue(server, "infoversion", "0"));
	bool same = strcmp(expected, version) == 0;
	CHECK_PROTECTION_MARKER(InfoVersionMarker);
	return same;
}

#ifndef VERSION_BW1W100
bool IsSameCreatureVersion(GServer server)
{
	char expected[0x64];
	char version[0x64];
	sprintf(expected, "%I64u", MPFEData::CreatureFileChecksum);
	strcpy(version, ServerGetStringValue(server, "creatureversion", "0"));
	bool same = strcmp(expected, version) == 0;
	CHECK_PROTECTION_MARKER(CreatureVersionMarker);
	return same;
}
#endif

static bool IsSameOOSVersion(GServer server);

void BWGameSpy::ListGame(GServer server, PEERBool staging, int msg)
{
	wchar_t       name[0x400];
	unsigned long showAllGames = 0;
	RegistryRetrieveULong(BW_SETUP_REGISTRY_KEY, "LeetLamer", &showAllGames);
	switch (msg)
	{
	case PEER_CLEAR:
		MPFEChannelSelector::Instance.RemoveAllChannels();
		CurrentServer = NULL;
		break;
	case PEER_ADD: {
		if (ServerGetIntValue(server, "gamever", 0) != LHVersion::GetModuleChecksum())
		{
			break;
		}
#ifdef VERSION_BW1W100
		if (!IsSameInfoVersion(server) || !IsSameOOSVersion(server))
#else
		if (!IsSameInfoVersion(server) || !IsSameCreatureVersion(server) || !IsSameOOSVersion(server))
#endif
		{
			break;
		}
#ifdef VERSION_BW1W100
		int closed = strcmp(ServerGetStringValue(server, "gamemode", ""), "openstaging");
		MPFEChannelSelector::Instance.AddChannel(
			LHSPrintfW(L"%s", DECODE_NAME(ServerGetStringValue(server, "hostname", "(none)"))),
			ServerGetIntValue(server, "numplayers", 0), closed != 0,
			ServerGetIntValue(server, "gamever", LHVersion::GetModuleChecksum()),
			ServerGetIntValue(server, "password", 0) == 1, server, NULL,
			ServerGetStringValue(server, "chanhost", NULL));
#else
		int maxPlayers = ServerGetIntValue(server, "maxplayers", -1);
		int closed = strcmp(ServerGetStringValue(server, "gamemode", ""), "openstaging");
		MPFEChannelSelector::Instance.AddChannel(
			LHSPrintfW(L"%s", DECODE_NAME(ServerGetStringValue(server, "hostname", "(none)"))),
			ServerGetIntValue(server, "numplayers", 0), closed != 0,
			ServerGetIntValue(server, "gamever", LHVersion::GetModuleChecksum()),
			ServerGetIntValue(server, "password", 0) == 1, server, NULL, ServerGetStringValue(server, "chanhost", NULL),
			maxPlayers);
#endif
		break;
	}
	case PEER_UPDATE: {
		if (ServerGetIntValue(server, "gamever", 0) != LHVersion::GetModuleChecksum())
		{
			break;
		}
#ifdef VERSION_BW1W100
		if (!IsSameInfoVersion(server) || !IsSameOOSVersion(server))
#else
		if (!IsSameInfoVersion(server) || !IsSameCreatureVersion(server) || !IsSameOOSVersion(server))
#endif
		{
			break;
		}
#ifdef VERSION_BW1W100
		int closed = strcmp(ServerGetStringValue(server, "gamemode", ""), "openstaging");
		MPFEChannelSelector::Instance.UpdateChannel(
			LHSPrintfW(L"%s", DECODE_NAME(ServerGetStringValue(server, "hostname", "(none)"))),
			ServerGetIntValue(server, "numplayers", 0), closed != 0,
			ServerGetIntValue(server, "gamever", LHVersion::GetModuleChecksum()),
			ServerGetIntValue(server, "password", 0) == 1, server, ServerGetStringValue(server, "chanhost", NULL));
#else
		int maxPlayers = ServerGetIntValue(server, "maxplayers", -1);
		int closed = strcmp(ServerGetStringValue(server, "gamemode", ""), "openstaging");
		MPFEChannelSelector::Instance.UpdateChannel(
			LHSPrintfW(L"%s", DECODE_NAME(ServerGetStringValue(server, "hostname", "(none)"))),
			ServerGetIntValue(server, "numplayers", 0), closed != 0,
			ServerGetIntValue(server, "gamever", LHVersion::GetModuleChecksum()),
			ServerGetIntValue(server, "password", 0) == 1, server, ServerGetStringValue(server, "chanhost", NULL),
			maxPlayers);
#endif
		break;
	}
	case PEER_REMOVE:
		MPFEChannelSelector::Instance.RemoveChannel((unsigned long)server, NULL);
		if (CurrentServer == server)
		{
			CurrentServer = NULL;
		}
		break;
	}
}

static bool IsSameOOSVersion(GServer server)
{
	char             version[0x80];
	unsigned __int64 checksum;
	strcpy(version, ServerGetStringValue(server, "oosversion", "0"));
	sscanf(version, "%I64u", &checksum);
	if (checksum != 0 && checksum != MPFEData::OOSChecksum)
	{
		return false;
	}
	return true;
}

void BWGameSpy::GOABasicCallback(PEER peer, PEERBool playing, char* outbuf, int maxlen, void* param)
{
	char host[0x100];
	strcpy(host, LHSPrintf("%s", ENCODE_NAME(MPFEData::Data.LocalPlayerName)));
#ifdef VERSION_BW1W100
	if (MPFEData::Data.IsOOSGame)
	{
		sprintf(outbuf, "\\gamever\\%u\\chanhost\\%s\\infoversion\\%I64u\\oosversion\\%I64u",
		        LHVersion::GetModuleChecksum(), host, MPFEData::InfoFileChecksum2, MPFEData::OOSChecksum);
	}
	else
	{
		sprintf(outbuf, "\\gamever\\%u\\chanhost\\%s\\infoversion\\%I64u\\oosversion\\%I64u",
		        LHVersion::GetModuleChecksum(), host, MPFEData::InfoFileChecksum2, (unsigned __int64)0);
	}
#else
	if (MPFEData::Data.IsOOSGame)
	{
		sprintf(outbuf, "\\gamever\\%u\\chanhost\\%s\\infoversion\\%I64u\\oosversion\\%I64u\\creatureversion\\%I64u",
		        LHVersion::GetModuleChecksum(), host, MPFEData::InfoFileChecksum2, MPFEData::OOSChecksum,
		        MPFEData::CreatureFileChecksum);
	}
	else
	{
		sprintf(outbuf, "\\gamever\\%u\\chanhost\\%s\\infoversion\\%I64u\\oosversion\\%I64u\\creatureversion\\%I64u",
		        LHVersion::GetModuleChecksum(), host, MPFEData::InfoFileChecksum2, (unsigned __int64)0,
		        MPFEData::CreatureFileChecksum);
	}
#endif
}

void BWGameSpy::GOAInfoCallback(PEER peer, PEERBool playing, char* outbuf, int maxlen, void* param)
{
	char hostName[0x100];
	strcpy(hostName, LHSPrintf("%s", ENCODE_NAME((wchar_t*)MPFEData::Data.CurrentChannel)));
#ifdef VERSION_BW1W100
	// Staging rooms always held eight players and could not be locked in BW1W100.
	if (!playing)
	{
		sprintf(outbuf, "\\hostname\\%s\\numplayers\\%d\\maxplayers\\8", hostName,
		        MPFEData::Data.CurrentChannel != NULL ? MPFEData::Data.CurrentChannel->NumPlayers : 0);
	}
	else
	{
		sprintf(outbuf, "\\hostname\\%s\\numplayers\\%d\\maxplayers\\8\\gamemode\\closedplaying", hostName,
		        MPFEData::Data.CurrentChannel != NULL ? MPFEData::Data.CurrentChannel->NumPlayers : 0);
	}
#else
	if (!playing)
	{
		sprintf(outbuf, "\\hostname\\%s\\numplayers\\%d\\maxplayers\\%d\\locked\\%u", hostName,
		        MPFEData::Data.CurrentChannel != NULL ? MPFEData::Data.CurrentChannel->NumPlayers : 0,
		        MPFEData::Data.CurrentChannel->MaxPlayers, Locked == true);
	}
	else
	{
		sprintf(outbuf, "\\hostname\\%s\\numplayers\\%d\\maxplayers\\%d\\locked\\%u\\gamemode\\closedplaying", hostName,
		        MPFEData::Data.CurrentChannel != NULL ? MPFEData::Data.CurrentChannel->NumPlayers : 0,
		        MPFEData::Data.CurrentChannel->MaxPlayers, Locked == true);
	}
#endif
}

void BWGameSpy::GOARulesCallback(PEER peer, PEERBool playing, char* outbuf, int maxlen, void* param) {}

void BWGameSpy::GOAPlayersCallback(PEER peer, PEERBool playing, char* outbuf, int maxlen, void* param)
{
	if (MPFEData::Data.CurrentChannel == NULL || !MPFEData::Data.IsHost)
	{
		return;
	}
	int index = 0;
	for (int team = 0; team < MPFEData::MAX_TEAMS; team++)
	{
		for (OrderedNode<MPFEPlayerDetails>* node = MPFEData::Data.Teams[team].head; node != NULL; node = node->next)
		{
			strcat(outbuf,
			       LHSPrintf(GOA_PLAYER_FORMAT, index, (char*)LHSPrintf("%s", ENCODE_NAME(node->GetData()->Name)),
			                 index, node->GetData()->DatabaseID));
			index++;
		}
	}
	for (LHLinkedNode<MPFEPlayerDetails*>* node = MPFEData::Data.UnassignedPlayers.GetStart(); node != NULL;
	     node = node->next.Get())
	{
		MPFEPlayerDetails* player = node->payload;
		if (player->DatabaseID.IsValid())
		{
			// The original passes outbuf as the format; the real format string becomes an argument.
			strcat(outbuf, LHSPrintf(outbuf, GOA_PLAYER_FORMAT, index,
			                         (char*)LHSPrintf("%s", ENCODE_NAME(player->Name)), index, player->DatabaseID));
		}
	}
}

void BWGameSpy::NickErrorCallback(PEER peer, int type, const char* nick, void* param)
{
	MPFEConnectionStatus::Status.LeaveLobbyScreen();
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	MPFELogin::Instance.setup_box->MessageBoxA(L"Username already in use.", MSGBOXSTYLE_SINGLE_BUTTON,
	                                           LOBBY_MESSAGE_BOX_ERROR);
	if (LHNetBase::Instance.Peer != NULL)
	{
		peerDisconnect(LHNetBase::Instance.Peer);
		if (LHNetBase::Instance.Peer != NULL)
		{
			peerShutdown(LHNetBase::Instance.Peer);
		}
	}
#else
	MPFELogin::Instance.setup_box->MessageBoxA(
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_19), MSGBOXSTYLE_SINGLE_BUTTON,
		LOBBY_MESSAGE_BOX_ERROR);
	peerDisconnect(LHNetBase::Instance.Peer);
	peerShutdown(LHNetBase::Instance.Peer);
#endif
	LHNetBase::Instance.Peer = NULL;
}

void BWGameSpy::ConnectCallback(PEER peer, PEERBool success, void* param)
{
	if (success)
	{
		Connected = true;
		PEERBool pingRooms[NumRooms];
		pingRooms[StagingRoom] = PEERTrue;
		pingRooms[TitleRoom] = PEERFalse;
		pingRooms[GroupRoom] = PEERFalse;
		peerSetTitle(peer, GAMESPY_TITLE, GAMESPY_SECRET_KEY, GAMESPY_TITLE, GAMESPY_SECRET_KEY, GAMESPY_MAX_UPDATES,
		             pingRooms, pingRooms);
		Chat = peerGetChat(LHNetBase::Instance.Peer);
		MPFEChannelSelector::Instance.setup_box->SetOffHold();
		Instance.InitialiseLobbyState();
	}
	else
	{
		MPFEConnectionStatus::Status.LeaveLobbyScreen();
		MPFELogin::Instance.setup_box->MessageBoxA(
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_20), MSGBOXSTYLE_SINGLE_BUTTON,
			LOBBY_MESSAGE_BOX_ERROR);
	}
}

void BWGameSpy::GameStartedCallback(PEER peer, unsigned int IP, const char* message, void* param) {}

void BWGameSpy::EnterTitleRoom() {}

void BWGameSpy::CreateOrJoinRoom(wchar_t* name, wchar_t* password, MPFEChannelDetails* channel)
{
	TextConversion nameText(name);
	TextConversion passwordText(password);
#ifndef VERSION_BW1W100
	ChannelMode.Secret = CHATTrue;
	ChannelMode.Private = CHATTrue;
	ChannelMode.NoExternalMessages = CHATTrue;
	ChannelMode.OnlyOpsChangeTopic = CHATTrue;
	ChannelMode.InviteOnly = CHATFalse;
	ChannelMode.Limit = MPFEData::Data.CurrentChannel->MaxPlayers;
#endif
	if (channel != NULL && !MPFEData::Data.IsHost)
	{
		if (channel->HasPassword && wcslen(password) == 0)
		{
			MPFEChannelSelector::Instance.setup_box->MessageBoxA(
				HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CONNECT), MSGBOXSTYLE_SINGLE_BUTTON,
				LOBBY_MESSAGE_BOX_NONE);
			MPFEData::Data.CurrentChannel = NULL;
			MPFEData::Data.IsHost = false;
			return;
		}
		peerLeaveRoom(LHNetBase::Instance.Peer, TitleRoom);
		CurrentRoom = NumRooms;
		CurrentServer = MPFEData::Data.CurrentChannel->Server;
		peerJoinStagingRoom(LHNetBase::Instance.Peer, channel->Server, passwordText.Narrow, JoinCallback, NULL,
		                    PEERTrue);
		return;
	}
	if (wcslen(name) == 0)
	{
		MPFEChannelSelector::Instance.setup_box->MessageBoxA(
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_JOIN), MSGBOXSTYLE_SINGLE_BUTTON,
			LOBBY_MESSAGE_BOX_NONE);
		MPFEData::Data.CurrentChannel = NULL;
		MPFEData::Data.IsHost = false;
		return;
	}
	for (unsigned int i = 0; i < wcslen(name); i++)
	{
		if (name[i] == L'\\' || name[i] == L'/')
		{
			name[i] = L'_';
		}
	}
	if (MPFEData::Data.IsOOSGame)
	{
		MPFEData::OOSChecksum = MPFEData::Data.GetOOSChecksum();
	}
	else
	{
		MPFEData::OOSChecksum = 0;
	}
	TextConversion roomName(name);
	peerLeaveRoom(LHNetBase::Instance.Peer, TitleRoom);
#ifdef VERSION_BW1W100
	peerCreateStagingRoom(LHNetBase::Instance.Peer, roomName.Narrow, BW1W100_MAX_PLAYERS, passwordText.Narrow,
	                      JoinCallback, NULL, PEERTrue);
#else
	Locked = false;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	MPFEData::Data.ResetConditions();
#endif
	peerCreateStagingRoom(LHNetBase::Instance.Peer, roomName.Narrow, MPFEChannelSelector::MaxPlayers,
	                      passwordText.Narrow, JoinCallback, NULL, PEERTrue);
#endif
}

void BWGameSpy::EnumBanCallback(CHAT chat, CHATBool success, const char* channel, int numBans, const char** bans,
                                void* param)
{
	if (success == CHATTrue)
	{
		strcpy(BanChannel, channel);
		for (int i = 0; i < numBans; i++)
		{
			strcpy(Bans[i], bans[i]);
			NumBans++;
			if (i >= MAX_BANS - 1)
			{
				break;
			}
		}
	}
}

#ifndef VERSION_BW1W100
void ChannelModeCallback(CHAT chat, CHATBool success, const char* channel, CHATChannelMode* mode, void* param)
{
	if (param != NULL)
	{
		*(CHATChannelMode*)param = *mode;
	}
}
#endif

void BWGameSpy::EnterGameRoom(bool host, wchar_t* name)
{
#ifdef VERSION_BW1W100
	MPFEDatabaseID databaseID;
	peerStopListingGames(LHNetBase::Instance.Peer);
	if (!host)
	{
		peerMessageRoom(LHNetBase::Instance.Peer, StagingRoom, LHSPrintf("%s", ENCODE_NAME(databaseID.Message)),
		                NormalMessage);
		if (LHNetBase::Instance.Peer != NULL && peerIsConnected(LHNetBase::Instance.Peer))
		{
			peerThink(LHNetBase::Instance.Peer);
		}
	}
	else
	{
		char channel[0x100];
		strcpy(channel, peerGetRoomChannel(LHNetBase::Instance.Peer, StagingRoom));
		NumBans = 0;
		chatEnumChannelBans(Chat, channel, EnumBanCallback, NULL, CHATFalse);
	}
	NumPeopleInRoom = CurrentServer == NULL;
	MPFEData::Data.D_IJoinedRoom(name, host, LHNetBase::Instance.User->GetID());
#else
	peerStopListingGames(LHNetBase::Instance.Peer);
	if (host)
	{
		char channel[0x100];
		strcpy(channel, peerGetRoomChannel(LHNetBase::Instance.Peer, StagingRoom));
		NumBans = 0;
		chatEnumChannelBans(Chat, channel, EnumBanCallback, NULL, CHATFalse);
	}
	NumPeopleInRoom = CurrentServer == NULL;
	MPFEData::Data.D_IJoinedRoom(name, host, LHNetBase::Instance.User->GetID());
	if (!host)
	{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		const char* channelName = peerGetRoomChannel(LHNetBase::Instance.Peer, StagingRoom);
		if (channelName == NULL)
		{
			Instance.LeaveGameChannel();
			return;
		}
		char channel[0x100];
		strcpy(channel, channelName);
		chatGetChannelMode(Chat, channel, ChannelModeCallback, NULL, CHATTrue);
		MPFEHasCreature hasCreature;
		hasCreature.Send(NULL);
#else
		char channel[0x100];
		strcpy(channel, peerGetRoomChannel(LHNetBase::Instance.Peer, StagingRoom));
		chatGetChannelMode(Chat, channel, ChannelModeCallback, NULL, CHATTrue);
#endif
		MPFEDatabaseID databaseID;
		databaseID.Send(NULL);
		MPFEAskForTeamDetailsMessage askForTeamDetails;
		askForTeamDetails.Send(NULL);
	}
#endif
}

void BWGameSpy::PopulateChannelPlayers(MPFEChannelDetails* channel)
{
	GServer server = channel->Server;
	char*   host = ServerGetStringValue(server, "chanhost", "");
	for (int player = 0; player < ServerGetIntValue(server, "numplayers", -1); player++)
	{
		char* playerName = ServerGetPlayerStringValue(server, player, "player", "");
		MPFEChannelSelector::Instance.AddPlayerToMiniList(LHSPrintfW(L"%s", DECODE_NAME(playerName)),
		                                                  strcmp(playerName, host) == 0);
	}
}

int BWGameSpy::GetNumPeopleInRoom()
{
	if (CurrentServer != NULL)
	{
		return ServerGetIntValue(CurrentServer, "numplayers", -1);
	}
	return NumPeopleInRoom;
}

void BWGameSpy::KickPlayerFromChannel(MPFEPlayerDetails* player)
{
	if (MPFEData::Data.CurrentChannel == NULL)
	{
		return;
	}
	char channel[0x100];
	char nick[0x100];
	strcpy(channel, peerGetRoomChannel(LHNetBase::Instance.Peer, StagingRoom));
#ifdef VERSION_BW1W100
	strcpy(nick, LHSPrintf("%s", ENCODE_NAME(player->GetName())));
#else
	strcpy(nick, LHSPrintf(IRC_NICK_FORMAT, player->DatabaseID.id));
#endif
	chatKickUser(Chat, channel, nick,
	             "You are either not using a Black & White compatible client or the host has kicked you because he "
	             "wanted to.");
}

void BWGameSpy::BanPlayerInChannel(MPFEPlayerDetails* player)
{
	if (MPFEData::Data.CurrentChannel == NULL)
	{
		return;
	}
	char channel[0x100];
	char nick[0x100];
	strcpy(channel, peerGetRoomChannel(LHNetBase::Instance.Peer, StagingRoom));
	strcpy(nick, LHSPrintf("%s", ENCODE_NAME(player->GetName())));
	chatBanUser(Chat, channel, nick);
}

#ifndef VERSION_BW1W100
void BWGameSpy::LockChannel(bool lock)
{
	char channel[0x100];
	strcpy(channel, peerGetRoomChannel(LHNetBase::Instance.Peer, StagingRoom));
	Locked = lock;
	ChannelMode.InviteOnly = lock == true;
	chatSetChannelMode(Chat, channel, &ChannelMode);
	peerStateChanged(LHNetBase::Instance.Peer);
}

void BWGameSpy::SetInvite(bool invite)
{
	char channel[0x100];
	strcpy(channel, peerGetRoomChannel(LHNetBase::Instance.Peer, StagingRoom));
	ChannelMode.InviteOnly = invite == true;
	chatSetChannelMode(Chat, channel, &ChannelMode);
	peerStateChanged(LHNetBase::Instance.Peer);
}
#endif
