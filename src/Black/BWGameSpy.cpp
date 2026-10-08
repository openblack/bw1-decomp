#include "BWGameSpy.h"

#include <stdio.h> /* For sprintf, sscanf */
// Only BW1W120's unit carries the std::ctype<unsigned short>::id guard of the STL headers.
#ifdef VERSION_BW1W120
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
#include "TextConversion.h"               /* For TextConversion */

#define GAMESPY_TITLE       "bandw"
#define GAMESPY_SECRET_KEY  "KbEab3"
#define GAMESPY_MAX_UPDATES 30

#define GOA_PLAYER_FORMAT "\\player_%u\\%s\\lhuid_%u\\%u"

#define IRC_NICK_PREFIX     "BNW_"
#define IRC_NICK_FORMAT     IRC_NICK_PREFIX "%u"
#define IRC_NICK_PREFIX_LEN 4

#define ENCODE_NAME(name) (GSFunctions::NeedsEncoding(name) ? GSFunctions::EncodeUnicode(name) : WCHAR2CHAR(name))
#define DECODE_NAME(name) (GSFunctions::IsEncodedString(name) ? GSFunctions::DecodeUnicode(name) : CHAR2WCHAR(name))

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

struct ProtectionMarker
{
	uint32_t Words[30];
	union {
		uint32_t Words[4];
		double   Alignment;
	} Tail;
};

#if defined(VERSION_BW1W100)
static ProtectionMarker InfoVersionMarker = {
	{0x752f15f5, 0x7560d4f5, 0xea2fb902, 0x5fce363f, 0xd4bc57d5, 0x49eb6dc9, 0x00000000, 0x344999b6,
     0xa978afa9, 0x1eb7d59c, 0x93d6db93, 0x0905f181, 0x7e36709c, 0xf3641dda, 0x68dc6205, 0x00000010,
     0x419f56e7, 0xeef4c74a, 0x24fc2c22, 0x940e53b9, 0x83574de0, 0x9c6d5ff1, 0x124894ee, 0x87b5a860,
     0xfd1161a8, 0x719924ed, 0xe6c83ae2, 0x7b833804, 0x000000b9, 0x00000000},
	{{0x00000000, 0x00000000, 0x00000000, 0x00000000}},
};
#elif defined(VERSION_BW1W110)
static ProtectionMarker InfoVersionMarker = {
	{0x38ab0d97, 0x38f0c627, 0x712bad16, 0xaa42c3b5, 0xe2ac365d, 0x1b5743f3, 0x00000000, 0x8cad5f24,
     0xc5586cb9, 0xfe136a4e, 0x36ae87e7, 0x6f59957a, 0xa8074864, 0xe0afb000, 0x1901ef31, 0x00000010,
     0x419f56e7, 0x3ee8bd84, 0x59dc5aa8, 0xd94f9e72, 0x3c03ddb1, 0x110bc69b, 0xde0e9cc2, 0x171dd3e1,
     0x5092175b, 0x00000000, 0xc3a7e856, 0xfa0a6eed, 0x32b57c84, 0xdc4d52e7},
	{{0x000000da, 0x00000000, 0x00000000, 0x00000000}},
};

static ProtectionMarker CreatureVersionMarker = {
	{0x2b4a441d, 0x2b118825, 0x56cf438a, 0x819d2067, 0xad291075, 0xd8735491, 0x00000000, 0x2f07dcce,
     0x5a5220e9, 0x858c7504, 0xb0e6a923, 0xdc30ed39, 0x0778dd6c, 0x32c575d2, 0x5e54e8ab, 0x00000010,
     0x419f56e7, 0x888333bc, 0x2e45e45b, 0x1347a545, 0x1d7512bf, 0x1ca51b38, 0xb8fa11ce, 0xe3eff2ab,
     0x0e6d3385, 0x00000000, 0x677263f2, 0x90d52f0f, 0xbc1f732c, 0xfb811d80},
	{{0x0000007d, 0x00000000, 0x00000000, 0x00000000}},
};
#else
static ProtectionMarker InfoVersionMarker = {
	{0xff6bc173, 0xaf568e7b, 0x501f5b30, 0x5f2bb663, 0x0f4b1192, 0xbf686cc3, 0x00000000, 0x6f89c7f1,
     0x1fa92321, 0xcfde6e52, 0x7fefd982, 0x2e0f34b3, 0x00000000, 0xdde81ea3, 0x8e4deb13, 0x3e6d4643,
     0x03c6b270, 0xee3c6003, 0x9ee3fca3, 0x4e8357d3, 0x00000010, 0x00000000, 0xd4037641, 0xbba59500,
     0x067bc599, 0xbcf54b43, 0x6d877af3, 0x6d877af3, 0x1da4d624, 0xcdc43153},
	{{0x00000000, 0x00000000, 0x00000000, 0x00000000}},
};

static ProtectionMarker CreatureVersionMarker = {
	{0xff49d54b, 0xf4adb579, 0x0be460aa, 0xe8ddc157, 0xdcb821fc, 0xd08482ab, 0x00000000, 0xc460e353,
     0xb84f43fd, 0xac3bb4a4, 0xa0360552, 0x941265f9, 0x00000000, 0x8a3a57e7, 0x7dc5274d, 0x71a187fb,
     0x03c6b260, 0x65113de9, 0x5928494f, 0x4d34a9f5, 0x00000010, 0x00000000, 0x13370db4, 0xc7a8aa8b,
     0x15a4a8a8, 0x1fc9d28e, 0x06aeedf1, 0x06aeedf1, 0xfab54e99, 0xee91af45},
	{{0x00000000, 0x00000000, 0x00000000, 0x00000000}},
};
#endif

#define CHECK_PROTECTION_MARKER(marker)                                                                                \
	if (!(marker).Words[1])                                                                                            \
	{                                                                                                                  \
		((void (*)())(marker).Words[3])();                                                                             \
	}

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
			sprintf(nick, IRC_NICK_FORMAT, player->ID.id);
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
			sprintf(nick, IRC_NICK_FORMAT, player->ID.id);
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
	wchar_t    name[MPFEPlayerDetails::NAME_SIZE * 2];
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
#ifdef VERSION_BW1W120
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
	MPFEData::Data.D_PlayerLeft(player->ID, player->GetName());
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
			                 index, node->GetData()->ID));
			index++;
		}
	}
	for (LHLinkedNode<MPFEPlayerDetails*>* node = MPFEData::Data.UnassignedPlayers.GetStart(); node != NULL;
	     node = node->next.Get())
	{
		MPFEPlayerDetails* player = node->payload;
		if (player->ID.IsValid())
		{
			// The original passes outbuf as the format; the real format string becomes an argument.
			strcat(outbuf, LHSPrintf(outbuf, GOA_PLAYER_FORMAT, index,
			                         (char*)LHSPrintf("%s", ENCODE_NAME(player->Name)), index, player->ID));
		}
	}
}

void BWGameSpy::NickErrorCallback(PEER peer, int type, const char* nick, void* param)
{
	MPFEConnectionStatus::Status.LeaveLobbyScreen();
#ifdef VERSION_BW1W120
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
	ChannelMode.Private = CHATTrue;
	ChannelMode.Secret = CHATTrue;
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
#ifdef VERSION_BW1W120
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
#ifdef VERSION_BW1W120
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
	strcpy(nick, LHSPrintf(IRC_NICK_FORMAT, player->ID.id));
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
