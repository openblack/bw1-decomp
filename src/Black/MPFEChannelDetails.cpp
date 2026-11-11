#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */

#include "MPFEChannelDetails.h"

#include <stdio.h> /* For swprintf */

#include <chlasm/HelpTextEnums.h>

#include <Lionhead/LHLog/ver4.0/LHVersion.h> /* For LHVersion::GetModuleChecksum */

#include "HelpText.h"             /* For HelpTextDataBase::HelpTextDatabase, HelpTextDataPatch */
#include "MPFEConnectionStatus.h" /* For MPFEConnectionStatus::Status */

#if defined(VERSION_BW1W100)
MPFEChannelDetails::MPFEChannelDetails(wchar_t* name, bool has_password, int num_players, bool closed, GServer server,
                                       unsigned long game_version, LHLocalLobbyInfo* lobby_info)
{
	wcscpy(Name, name);
	HasPassword = has_password;
	NumPlayers = num_players;
	Closed = closed;
	Server = server;
	GameVersion = game_version;
	LobbyInfo = lobby_info;
	MapID = 0;
	wcscpy(MapName, L"");
}
#else
MPFEChannelDetails::MPFEChannelDetails(wchar_t* name, bool has_password, int num_players, bool closed, GServer server,
                                       unsigned long game_version, LHLocalLobbyInfo* lobby_info, int max_players)
{
	wcscpy(Name, name);
	HasPassword = has_password;
	NumPlayers = num_players;
	Closed = closed;
	Server = server;
	GameVersion = game_version;
	MaxPlayers = max_players;
	field_0x4b4 = 2;
	LobbyInfo = lobby_info;
	MapID = 0;
	JoinTime = 0;
	wcscpy(MapName, L"");
}

#endif

MPFEChannelDetails::~MPFEChannelDetails() {}

void MPFEChannelDetails::GetDisplayString(wchar_t* text)
{
#if defined(VERSION_BW1W100)
	swprintf(text, L"%s (%d)%s%s%s", Name, NumPlayers,
	         Closed ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_PLAYING) : L"",
	         GameVersion == LHVersion::GetModuleChecksum()
	             ? L""
	             : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_WRONGVER),
	         HasPassword ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_NEEDS_PASSWORD) : L"");
#else
	bool locked = false;
	if (MPFEConnectionStatus::Status.IsInternetLobby())
	{
		locked = ServerGetIntValue(Server, "locked", 0) != 0;
	}

	wchar_t lockedText[0x100];
	swprintf(lockedText, L"-%s", HelpTextDataPatch::GetTextL(HELP_TEXT_PATCH_01));

	if (MaxPlayers == -1)
	{
		swprintf(text, L"%s (%d)%s%s%s%s", Name, NumPlayers,
		         Closed ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_PLAYING) : L"",
		         GameVersion == LHVersion::GetModuleChecksum()
		             ? L""
		             : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_WRONGVER),
		         HasPassword ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_NEEDS_PASSWORD) : L"",
		         locked ? lockedText : L"");
	}
	else
	{
		swprintf(text, L"%s (%d/%d)%s%s%s%s", Name, NumPlayers, MaxPlayers,
		         Closed ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_PLAYING) : L"",
		         GameVersion == LHVersion::GetModuleChecksum()
		             ? L""
		             : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_WRONGVER),
		         HasPassword ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_NEEDS_PASSWORD) : L"",
		         locked ? lockedText : L"");
	}
#endif
}
