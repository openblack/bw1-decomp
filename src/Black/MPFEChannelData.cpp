#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */

#include "MPFEData.h"

#include <io.h>      /* For _filelength, _fileno */
#include <stdio.h>   /* For fopen, fread, swprintf */
#include <string.h>  /* For wcscmp, wcscpy */
#include <windows.h> /* For timeGetTime */

#include <Lionhead/LH3DLib/development/LH3DText.h>         /* For CHAR2WCHAR */
#include <Lionhead/LHLib/ver5.0/LHLinkedListIterator.h>    /* For LHLinkedListIterator */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                   /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>               /* For LHSPrintf, LHSPrintfW */
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>               /* For LHOSFile */
#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h>         /* For LHLobby::UserFile */
#include <Lionhead/LHMultiplayer/ver4.0/LHMessageServer.h> /* For LHMessageServer */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h>       /* For LHNetUser */
#include <Lionhead/LHMultiplayer/ver4.0/LHPlayer.h>        /* For LHPlayer */
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>       /* For LHSession */

#include "BWGameSpy.h"                       /* For BWGameSpy::Instance */
#include "alexmfc.h"                         /* For SetupBox */
#include "BWLan.h"                           /* For BWLan::Instance */
#include "ChannelBox.h"                      /* For ChannelBox */
#include "DialogBoxBase.h"                   /* For DialogBoxBase::HideAll */
#include "FrontEnd.h"                        /* For FrontEnd::ChannelDialog */
#include "Game.h"                            /* For GGame::g_game */
#include "GSFunctions.h"                     /* For DECODE_NAME */
#include "HelpText.h"                        /* For HelpTextDataBase::HelpTextDatabase */
#include "LandscapeDetails.h"                /* For LandscapeDetails */
#include "LayerCommunication.h"              /* For LayerCommunication */
#include "MPFEAlexDialog.h"                  /* For AddRequester */
#include "LHNetBase.h"                       /* For LHNetBase::Instance */
#include "MPFEAskForTeamDetailsMessage.h"    /* For MPFEAskForTeamDetailsMessage */
#include "MPFEAllConditions.h"               /* For MPFEAllConditions */
#include "MPFEAskJoinMessage.h"              /* For MPFEAskJoinMessage */
#include "MPFEChangeClanRequest.h"           /* For MPFEChangeClanRequest */
#include "MPFEChangedMapMessage.h"           /* For MPFEChangedMapMessage */
#include "MPFEChangedTeamRequestMessage.h"   /* For MPFEChangedTeamRequestMessage */
#include "MPFEChangedTykeStatus.h"           /* For MPFEChangedTykeStatus */
#include "MPFEChannelDetails.h"              /* For MPFEChannelDetails */
#include "MPFEChannelSelector.h"             /* For MPFEChannelSelector::Instance */
#include "MPFEClanDetails.h"                 /* For MPFEClanDetails */
#include "MPFEClanList.h"                    /* For MPFEClanList */
#include "MPFECondtionUpdateMessage.h"       /* For MPFECondtionUpdateMessage */
#include "MPFEConnectionStatus.h"            /* For MPFEConnectionStatus::Status */
#include "MPFEConnectionType.h"              /* For MPFEConnectionType */
#include "MPFEDisconnectNowMessage.h"        /* For MPFEDisconnectNowMessage */
#include "MPFEHasCreature.h"                 /* For MPFEHasCreature */
#include "MPFEInviteToTeamMessage.h"         /* For MPFEInviteToTeamMessage */
#include "MPFEKickMessageRequest.h"          /* For MPFEKickMessageRequest */
#include "MPFENumberCodec.h"                 /* For MPFENumberCodec */
#include "MPFEPlayerDetails.h"               /* For MPFEPlayerDetails */
#include "MPFEPrivateChatMessage.h"          /* For MPFEPrivateChatMessage */
#include "MPFEPublicChatMessage.h"           /* For MPFEPublicChatMessage */
#include "MPFEReadyMessage.h"                /* For MPFEReadyMessage */
#include "MPFEReplyToInviteMessage.h"        /* For MPFEReplyToInviteMessage */
#include "MPFEReplyToJoinMessage.h"          /* For MPFEReplyToJoinMessage */
#include "MPFEResetClan.h"                   /* For MPFEResetClan */
#include "MPFEStartGameData.h"               /* For MPFEStartGameData */
#include "MPFEStartGameNowMessage.h"         /* For MPFEStartGameNowMessage */
#include "MPFEStartGameOkayToStartMessage.h" /* For MPFEStartGameOkayToStartMessage */
#include "MPFEStopGameStartMessage.h"        /* For MPFEStopGameStartMessage */
#include "MPFETeamsReadyList.h"              /* For MPFETeamsReadyList */
#include "MPFEUserTeamList.h"                /* For MPFEUserTeamList */
#include "Player.h"                          /* For GPlayer */
#include "WinConditionSettings.h"            /* For WinConditionSettings */

#if defined(VERSION_BW1W100)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line)                                                                                            \
	((line) - ((line) < 700    ? 62                                                                                    \
	           : (line) < 800  ? 101                                                                                   \
	           : (line) < 900  ? 104                                                                                   \
	           : (line) < 1000 ? 107                                                                                   \
	           : (line) < 1200 ? 114                                                                                   \
	           : (line) < 1500 ? 117                                                                                   \
	                           : 157))
#elif defined(VERSION_BW1W110)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line)                                                                                            \
	((line) - ((line) < 700    ? 62                                                                                    \
	           : (line) < 800  ? 101                                                                                   \
	           : (line) < 900  ? 104                                                                                   \
	           : (line) < 1000 ? 107                                                                                   \
	           : (line) < 1200 ? 108                                                                                   \
	           : (line) < 1500 ? 111                                                                                   \
	                           : 149))
#elif defined(VERSION_BW1WCI)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line)                                                                                            \
	((line) - ((line) < 700    ? 59                                                                                    \
	           : (line) < 800  ? 85                                                                                    \
	           : (line) < 900  ? 87                                                                                    \
	           : (line) < 1000 ? 90                                                                                    \
	           : (line) < 1200 ? 91                                                                                    \
	           : (line) < 1500 ? 94                                                                                    \
	                           : 128))
#endif

#define MPFE_DATA_CREATURE_MIND_PATH ".\\Scripts\\CreatureMind\\"
#define MPFE_DATA_ONLINE_MAPS_PATH   ".\\Online maps\\"

MPFEData MPFEData::Data;

MPFEData::MPFEData() : ThumbnailMap(NULL)
{
	Initialise();
}

MPFEData::~MPFEData() {}

void MPFEData::Reset()
{
	PlayersTransferringFiles.RemoveAll();
	Session = NULL;
	ProfileRetried = false;
	TeamListSequence = 0;
	SelectedPlayer = NULL;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	SettingsChanged = false;
#elif defined(VERSION_BW1WCI)
	TykeEnabled = false;
#endif
	TeamsChanged = false;
	ClansChanged = false;
	HaveTeamList = false;
	StartGameRequested = false;
	TransferringFiles = false;
	GameStarting = false;
	IsHost = false;
	MapChanged = false;
	if (CurrentChannel != NULL)
	{
		CurrentChannel = NULL;
	}
	field_0xae4.RemoveAll();
	if (MPFEConnectionStatus::Status.IsInternetLobby())
	{
		Layer = &BWGameSpy::Instance;
	}
	else
	{
		Layer = &BWLan::Instance;
	}
	UnassignedPlayers.DeleteAll();
	Invites.DeleteAll();
	TeamJoinRequests.DeleteAll();
	StopDownloads();
	DownloadPercentage = 0.0f;
	for (int i = 0; i < MAX_TEAMS; i++)
	{
		Teams[i].DeleteAll();
	}
	wcscpy(TeamDetails[TEAM_NONE].Name, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_137));
	for (int j = 0; j < MAX_TEAMS; j++)
	{
		FileTransfers[j].Reset();
	}
	ResetClans();
	field_0x1724 = 0;
	TransferringFiles = false;
	GameStarting = false;
	ProfileWaitingForDatabase = false;
	ProfileSent = false;
	FrontEnd::ChannelDialog->ReInit();
}

void MPFEData::ResetClans()
{
	for (int i = 1; i < MAX_TEAMS; i++)
	{
#if defined(VERSION_BW1WCI)
		TeamDetails[i].field_0x208 = false;
#endif
		TeamDetails[i].ClanID = 0;
		TeamDetails[i].ClanSetByID = 0;
		swprintf(TeamDetails[i].Name, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_63), i);
	}
}

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
void MPFEData::ResetConditions()
{
	if (ActiveDialog != NULL)
	{
		for (int i = 0; i < WC_LAST; i++)
		{
			ActiveDialog->ConditionEnabled[i] = false;
			if (ActiveDialog->ConditionCheckBoxes[i] != NULL)
			{
				ActiveDialog->ConditionCheckBoxes[i]->style = BBSTYLE_CHECK_BOX_OFF;
			}
		}
	}
	if (ActiveDialog != NULL)
	{
		for (int j = 0; j < WC_LAST; j++)
		{
			ActiveDialog->ConditionEnabled[j] = false;
			if (ActiveDialog->ConditionCheckBoxes[j] != NULL)
			{
				ActiveDialog->ConditionCheckBoxes[j]->style = BBSTYLE_CHECK_BOX_OFF;
			}
		}
	}
	for (int type = 0; type < WC_LAST; type++)
	{
		Conditions[type].Init(type);
		Conditions[type].SetTarget((WinConditionSettings::MaxTargets[type] + WinConditionSettings::MinTargets[type]) >>
		                           1);
	}
	if (ActiveDialog != NULL)
	{
		ActiveDialog->ShowChatOnLandTab = false;
	}
}
#endif

void MPFEData::Initialise()
{
	IsHost = false;
#if defined(VERSION_BW1WCI)
	TykeEnabled = false;
#endif
	TeamListSequence = 0;
	SelectedPlayer = NULL;
	Session = NULL;
	CurrentChannel = NULL;
	wcscpy(LocalPlayerName, L"");
	TransferringFiles = false;
	GameStarting = false;
	ProfileWaitingForDatabase = false;
	ProfileSent = false;
	field_0x1724 = 0;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	WinConditionSettings::ResetLimits();
	if (ActiveDialog != NULL)
	{
		for (int i = 0; i < WC_LAST; i++)
		{
			ActiveDialog->ConditionEnabled[i] = false;
			if (ActiveDialog->ConditionCheckBoxes[i] != NULL)
			{
				ActiveDialog->ConditionCheckBoxes[i]->style = BBSTYLE_CHECK_BOX_OFF;
			}
		}
	}
	for (unsigned int type = 0; type < WC_LAST; type++)
	{
		Conditions[type].Init(type);
		Conditions[type].SetTarget((WinConditionSettings::MaxTargets[type] + WinConditionSettings::MinTargets[type]) >>
		                           1);
	}
	if (ActiveDialog != NULL)
	{
		ActiveDialog->ShowChatOnLandTab = false;
	}
#endif
}

void MPFEData::A2D_LeaveGameChannel()
{
	static bool Leaving = false;
	if (!Leaving)
	{
		Leaving = true;
		if (InGameChannel)
		{
			OOSChecksum = 0;
			GetLayer()->LeaveGameChannel();
			InGameChannel = false;
			Reset();
		}
		Leaving = false;
	}
}

#ifndef VERSION_BW1W100
void MPFEData::A2D_LeaveMainRoom()
{
	Layer->LeaveMainRoom();
}
#endif

#ifndef VERSION_BW1W100
LH_USER_ID MPFEData::GetIDFromNick(char* nick)
{
	for (unsigned int i = 0; i < strlen(nick); i++)
	{
		if (nick[i] == '_')
		{
			char         idText[12];
			unsigned int j;
			for (j = 0; j < i; j++)
			{
				idText[j] = nick[j];
			}
			idText[j] = '\0';
			MPFENumberCodec codec(idText);
			return LH_USER_ID(codec.Number);
		}
	}
	return LH_USER_ID(LH_ALL_USERS_ID);
}
#endif

#ifndef VERSION_BW1W100
char* MPFEData::GetNameFromNick(char* nick)
{
	for (unsigned int i = 0; i < strlen(nick); i++)
	{
		if (nick[i] == '_')
		{
			return &nick[i + 1];
		}
	}
	return nick;
}
#endif

MPFEPlayerDetails* MPFEData::GetLocalPlayer()
{
	return GetPlayerDetailsFromName(Data.GetMyPlayerName());
}

MPFEPlayerDetails* MPFEData::GetHostPlayer()
{
	for (int i = 0; i < MAX_TEAMS; i++)
	{
		for (OrderedNode<MPFEPlayerDetails>* node = Teams[i].head; node != NULL; node = node->next)
		{
			if (node->GetData()->IsHost)
			{
				return node->GetData();
			}
		}
	}
	for (LHLinkedNode<MPFEPlayerDetails*>* node = UnassignedPlayers.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload->IsHost)
		{
			return node->payload;
		}
	}
	return NULL;
}

MPFEPlayerDetails* MPFEData::GetPlayerDetailsFromName(wchar_t* name)
{
	if (name != NULL)
	{
		for (int i = 0; i < MAX_TEAMS; i++)
		{
			for (OrderedNode<MPFEPlayerDetails>* node = Teams[i].head; node != NULL; node = node->next)
			{
				if (_wcsnicmp(node->GetData()->Name, name, PLAYER_NAME_SIZE) == 0)
				{
					return node->GetData();
				}
			}
		}
		for (LHLinkedListIterator<MPFEPlayerDetails*> it(UnassignedPlayers.GetStart()); it != NULL; it++)
		{
			if (_wcsnicmp(it.Get()->Name, name, PLAYER_NAME_SIZE) == 0)
			{
				return it.Get();
			}
		}
	}
	return NULL;
}

MPFEPlayerDetails* MPFEData::GetPlayerDetailsFromDatabaseID(LH_USER_ID id)
{
	if (id != 0)
	{
		for (int i = 0; i < MAX_TEAMS; i++)
		{
			for (OrderedNode<MPFEPlayerDetails>* node = Teams[i].head; node != NULL; node = node->next)
			{
				if (node->GetData()->DatabaseID.Number == id.Number)
				{
					return node->GetData();
				}
			}
		}
		for (LHLinkedNode<MPFEPlayerDetails*>* node = UnassignedPlayers.GetStart(); node != NULL;
		     node = node->next.Get())
		{
			if (node->payload->DatabaseID.Number == id.Number)
			{
				return node->payload;
			}
		}
	}
	return NULL;
}

MPFEPlayerDetails* MPFEData::GetPlayerDetailsFromID(LH_USER_ID id)
{
	for (int i = 0; i < MAX_TEAMS; i++)
	{
		for (OrderedNode<MPFEPlayerDetails>* node = Teams[i].head; node != NULL; node = node->next)
		{
			if (node->GetData()->ID == id.id)
			{
				return node->GetData();
			}
		}
	}
	return NULL;
}

void MPFEData::A2D_SendChat(wchar_t* name, wchar_t* text, bool is_private)
{
	MPFEPlayerDetails* local = GetLocalPlayer();
#if defined(VERSION_BW1W100) || defined(VERSION_BW1W110) || defined(VERSION_BW1WCI)
	D2A_IncomingChatString(local != NULL ? local->Name : L"", text, false, false, false);
	MPFEPlayerDetails* player = GetPlayerDetailsFromName(name);
#else
	MPFEPlayerDetails* player = GetPlayerDetailsFromName(name);
	if (!is_private)
	{
		D2A_IncomingChatString(local != NULL ? local->Name : L"", text, false, false, false);
	}
	else if (player == GetLocalPlayer())
	{
		D2A_IncomingChatString(local != NULL ? local->Name : L"", text, false, false, false);
	}
#endif
	if (player != NULL)
	{
		MPFEPrivateChatMessage message(text, is_private);
		message.Send(player);
	}
	else
	{
		MPFEPublicChatMessage message(text);
		message.Send(NULL);
	}
}

void MPFEData::A2D_JoinTeam(TeamEnums team)
{
	for (LHLinkedNode<TeamEnums*>* node = TeamJoinRequests.GetStart(); node != NULL; node = node->next.Get())
	{
		if (*node->payload == team)
		{
			return;
		}
	}
	if (Teams[team].count >= MPFE_MAX_PLAYERS_PER_TEAM)
	{
		return;
	}
	if (team != TEAM_NONE)
	{
		MPFEPlayerDetails* leader = GetLowestNumberedPlayerInTeam(team);
		if (leader != NULL && leader->IsTeamLeader)
		{
			TeamEnums* request = NEW(358) TeamEnums;
			*request = team;
			TeamJoinRequests.Add(request);
			MPFEAskJoinMessage message(team);
			message.Send(leader);
			return;
		}
	}
	if (!GetLocalPlayer()->IsHost)
	{
		MPFEChangedTeamRequestMessage message(team);
		message.Send(GetHostPlayer());
	}
	else
	{
		if (GetLocalPlayer()->IsTeamLeader)
		{
			MPFEResetClan message(GetLocalPlayer()->Team);
			ClanCreatureDownload.Stop();
			message.Send(NULL);
		}
		GetHostPlayer()->AssignToTeam(team);
		D2A_RefreshTeams();
		TeamsChanged = true;
	}
}

void MPFEData::A2D_PlayerReplyToJoinRequest(wchar_t* name, bool accept, TeamEnums team)
{
	MPFEReplyToJoinMessage message(team == GetLocalPlayer()->Team ? (accept == true ? L'Y' : L'N') : L'I', team);
	MPFEPlayerDetails*     player = GetPlayerDetailsFromName(name);
	if (player != NULL)
	{
		message.Send(player);
	}
}

void MPFEData::A2D_KickPlayerFromTeam(wchar_t* name)
{
	MPFEPlayerDetails* player = GetPlayerDetailsFromName(name);
	if (player != NULL && (GetLocalPlayer()->IsHost || GetLocalPlayer()->IsTeamLeader) &&
	    (GetLocalPlayer()->IsHost || GetLocalPlayer()->Team == player->Team))
	{
		if (GetLocalPlayer()->IsHost)
		{
			MPFEKickMessageRequest message(player);
			MPFEKickMessageRequest::ProcessIncoming(message.Message + 1, GetLocalPlayer());
			D2A_RefreshTeams();
		}
		else
		{
			MPFEKickMessageRequest message(player);
			message.Send(GetHostPlayer());
		}
	}
}

void MPFEData::A2D_InvitePlayer(wchar_t* name)
{
	if (GetLocalPlayer()->IsTeamLeader && GetLocalPlayer()->Team != TEAM_NONE &&
	    GetLocalPlayer()->Team != TEAM_UNASSIGNED &&
	    Teams[GetLocalPlayer()->Team].GetSize() < MPFE_MAX_PLAYERS_PER_TEAM)
	{
		MPFEPlayerDetails* player = GetPlayerDetailsFromName(name);
		if (player != NULL && player->Team != GetLocalPlayer()->Team)
		{
			for (LHLinkedNode<MPFEInviteDetails*>* node = Invites.GetStart(); node != NULL; node = node->next.Get())
			{
				if (node->payload != NULL && wcscmp(node->payload->Name, name) == 0)
				{
					return;
				}
			}
			MPFEInviteDetails* invite = NEW(446) MPFEInviteDetails;
			wcscpy(invite->Name, name);
			invite->Team = GetLocalPlayer()->Team;
			Invites.Add(invite);
			MPFEInviteToTeamMessage message((TeamEnums)invite->Team);
			message.Send(player);
		}
	}
}

void MPFEData::A2D_PlayerReplyToInvite(wchar_t* name, bool accept, TeamEnums team)
{
	MPFEPlayerDetails* player = GetPlayerDetailsFromName(name);
	if (player != NULL)
	{
		MPFEReplyToInviteMessage message(accept, team);
		message.Send(player);
		if (accept)
		{
			if (!GetLocalPlayer()->IsHost)
			{
				MPFEChangedTeamRequestMessage request(team);
				request.Send(GetHostPlayer());
			}
			else
			{
				if (GetLocalPlayer()->IsTeamLeader)
				{
					ClanCreatureDownload.Stop();
					MPFEResetClan reset(GetLocalPlayer()->Team);
					reset.Send(NULL);
				}
				GetLocalPlayer()->AssignToTeam(team);
				Data.D2A_RefreshTeams();
				TeamsChanged = true;
			}
		}
	}
}

void MPFEData::A2D_SetClan(MPFEClanDetails* clan)
{
	GetLocalPlayer()->Clan = clan;
	if (GetLocalPlayer()->IsTeamLeader)
	{
		if (clan != NULL)
		{
			A2D_SetClan(NULL);
			if (GetLocalPlayer()->IsHost)
			{
				for (unsigned long i = 1; i < Data.CurrentChannel->NumTeams + 1; i++)
				{
					if (i != Data.GetLocalPlayer()->Team && clan->ID == Data.TeamDetails[i].ClanID)
					{
						return;
					}
				}
				ClanCreatureDownload.Start(clan->ID);
				TeamDetails[GetLocalPlayer()->Team].ClanID = clan->ID;
				GetLocalPlayer()->Clan = clan;
				wcscpy(TeamDetails[GetLocalPlayer()->Team].Name, clan->Name);
				ClansChanged = true;
			}
			else
			{
				ClanCreatureDownload.Start(clan->ID);
				MPFEChangeClanRequest request(clan->ID, clan->Name);
				request.Send(GetHostPlayer());
			}
		}
		else
		{
			ClanCreatureDownload.Stop();
			if (GetLocalPlayer()->IsHost)
			{
				TeamDetails[GetLocalPlayer()->Team].ClanID = 0;
				GetLocalPlayer()->Clan = NULL;
				swprintf(TeamDetails[GetLocalPlayer()->Team].Name,
				         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_63),
				         GetLocalPlayer()->Team);
				ClansChanged = true;
				MPFEResetClan reset(GetLocalPlayer()->Team);
				reset.Send(NULL);
			}
			else
			{
				MPFEChangeClanRequest request(0, L"d");
				request.Send(GetHostPlayer());
			}
		}
	}
}

void MPFEData::A2D_SetMap(unsigned long map_id)
{
	if (GetLocalPlayer()->IsHost && map_id != 0)
	{
		LandscapeDetails* details = A2D_GetLandscapeDetailsFromID(map_id);
		if (details != NULL)
		{
			MPFEChangedMapMessage message(map_id, details->NumTeams);
			message.Send(NULL);
			for (int i = details->NumTeams + 1; i < MAX_TEAMS; i++)
			{
				MPFEResetClan reset(i);
				reset.Send(NULL);
			}
			MPFEChangedMapMessage::ProcessIncoming(message.Message + 1, GetLocalPlayer());
			D_ReOrganizeTeams(details->NumTeams);
			TeamsChanged = true;
		}
	}
}

void MPFEData::D_ReOrganizeTeams(unsigned long num_teams)
{
	for (int i = num_teams + 1; i < MAX_TEAMS; i++)
	{
		while (Data.Teams[i].GetHead() != NULL)
		{
			MPFEPlayerDetails* player = Data.Teams[i].GetHead()->GetData();
			if (player != NULL)
			{
				player->AssignToTeam(TEAM_NONE);
			}
		}
	}
	D2A_RefreshTeams();
}

void MPFEData::D_FoundMapSetDetails(unsigned long id)
{
	if (CurrentChannel->MapID == id)
	{
		A2D_GetLandscapeDetailsFromID(id);
	}
}

void MPFEData::A2D_GetThumbnail(unsigned long map_id)
{
	ThumbDownload.GetFileNumber(map_id);
}

void MPFEData::A2D_RequestForClanDetails(wchar_t* name)
{
	MPFEPlayerDetails* player = GetPlayerDetailsFromName(name);
	if (player != NULL)
	{
		D_GetPlayerClanInfoFromDatabase(player);
	}
}

void MPFEData::A2D_RequestForPlayerDetails(wchar_t* name)
{
	MPFEPlayerDetails* player = GetPlayerDetailsFromName(name);
	if (player != NULL)
	{
		D_GetPlayerInfoFromDatabase(player);
	}
}

void MPFEData::ProcessDaniel()
{
	static unsigned long lastRefreshTime = 0;
	static unsigned long lastReadySendTime = 0;
	static unsigned long lastConditionsSendTime = 0;
	static unsigned long lastTeamsReadySendTime = 0;
	static unsigned long lastTeamsSendTime = 0;
	static unsigned long lastClansSendTime = 0;
	static unsigned long lastMapSendTime = 0;
#if defined(VERSION_BW1WCI)
	static unsigned long lastTykeStatusSendTime = 0;
#endif

	Layer->Process();
	if (GameStarting || !InGameChannel || GetLocalPlayer() == NULL || CurrentChannel == NULL)
	{
		return;
	}
	if (GetLocalPlayer()->IsHost)
	{
		if (CurrentChannel->NumPlayers <= 1)
		{
			D2A_DisableStartGameButton();
		}
		else
		{
			D2A_EnableStartGameButton();
		}
	}
	if (lastRefreshTime + MPFE_DATA_REFRESH_INTERVAL < timeGetTime())
	{
		D_RefreshPlayerClans();
		D_RefreshDatabaseQueries();
		CheckForUnpureClients();
		ClanCreatureDownload.Refresh();
		lastRefreshTime = timeGetTime();
	}
	DownloadSpeed = 0;
	DownloadPercentage = 0;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (ReadyChanged && lastReadySendTime + MPFE_DATA_SEND_INTERVAL < timeGetTime())
	{
		MPFEReadyMessage message(GetLocalPlayer()->Ready);
		message.Send(Data.GetHostPlayer());
		ReadyChanged = false;
		lastReadySendTime = timeGetTime();
	}
	if (SettingsChanged && GetLocalPlayer()->IsHost && lastConditionsSendTime + MPFE_DATA_SEND_INTERVAL < timeGetTime())
	{
		SettingsChanged = false;
		MPFECondtionUpdateMessage message;
		message.Send(NULL);
		lastConditionsSendTime = timeGetTime();
	}
	if (TeamsReadyChanged && GetLocalPlayer()->IsHost &&
	    lastTeamsReadySendTime + MPFE_DATA_SEND_INTERVAL < timeGetTime())
	{
		TeamsReadyChanged = false;
		MPFETeamsReadyList message;
		message.Send(NULL);
		lastTeamsReadySendTime = timeGetTime();
	}
#endif
	if (TeamsChanged && GetLocalPlayer()->IsHost)
	{
		if (lastTeamsSendTime + MPFE_DATA_SEND_INTERVAL < timeGetTime())
		{
			TeamsChanged = false;
			MPFEUserTeamList message;
			message.Send(NULL);
			lastTeamsSendTime = timeGetTime();
		}
	}
	else if (ClansChanged && GetLocalPlayer()->IsHost && lastClansSendTime + MPFE_DATA_SEND_INTERVAL < timeGetTime())
	{
		ClansChanged = false;
		MPFEClanList message;
		message.Send(NULL);
		lastClansSendTime = timeGetTime();
	}
	if (MapChanged && GetLocalPlayer()->IsHost && lastMapSendTime + MPFE_DATA_SEND_INTERVAL < timeGetTime())
	{
		MapChanged = false;
		MPFEChangedMapMessage message(CurrentChannel->MapID, CurrentChannel->NumTeams);
#if defined(VERSION_BW1WCI)
		lastMapSendTime = timeGetTime();
#endif
		message.Send(NULL);
	}
#if defined(VERSION_BW1WCI)
	if (TykeStatusChanged && lastTykeStatusSendTime + MPFE_DATA_TYKE_STATUS_INTERVAL < timeGetTime())
	{
		TykeStatusChanged = false;
		MPFEChangedTykeStatus message;
		message.Send(NULL);
		MPFEChangedTykeStatus::ProcessIncoming(message.Message + 1, GetLocalPlayer());
		lastTykeStatusSendTime = timeGetTime();
	}
#endif
	if (ProfileWaitingForDatabase && ClanCreatureDownload.Querying != true && !ProfileRetried)
	{
		ProfileRetried = true;
		D_SendOutPlayerProfile();
	}
	ThumbDownload.Refresh();
	if (ThumbDownload.IsDownloading())
	{
		DownloadSpeed = ThumbDownload.GetTransferSpeed();
		DownloadPercentage = ThumbDownload.GetPercentageDownloaded();
	}
	MapDownload.Refresh();
	if (MapDownload.IsDownloading())
	{
		DownloadSpeed = MapDownload.GetTransferSpeed();
		DownloadPercentage = MapDownload.GetPercentageDownloaded();
	}
	if (PlayersTransferringFiles.count == 0 && TransferringFiles && GetLocalPlayer()->IsHost)
	{
		D_StartGameSession(NULL);
#if defined(VERSION_BW1W100) || defined(VERSION_BW1W110) || defined(VERSION_BW1WCI)
		if (strcmp(MPFEConnectionStatus::Status.GetConnection()->Address, "") != 0)
		{
			LHTransportInfo* transport =
				NEW(748) LHTransportInfo(MPFEConnectionStatus::Status.GetConnection()->Address, MPFE_DATA_SESSION_PORT);
			if (transport != NULL)
			{
				MPFEStartGameNowMessage message(LHSPrintfW(L"%s", DECODE_NAME(transport->GetIP())));
				message.Send(NULL);
				delete transport;
			}
		}
		else
		{
			const char*             ip = Session->GetMessageServer()->GetConnectionAcceptorInfo()->GetIP();
			MPFEStartGameNowMessage message(LHSPrintfW(L"%s", DECODE_NAME(ip)));
			message.Send(NULL);
		}
#else
		char address[100];
		memset(address, 0, sizeof(address));
		strcpy(address, LHNetBase::Instance.User->LoginText);
		if (MPFEConnectionStatus::Status.IsLanLobby())
		{
			if (strcmp(MPFEConnectionStatus::Status.GetConnection()->Address, "") != 0)
			{
				LHTransportInfo* transport = NEW(748)
					LHTransportInfo(MPFEConnectionStatus::Status.GetConnection()->Address, MPFE_DATA_SESSION_PORT);
				if (transport != NULL)
				{
					strcpy(address, transport->GetIP());
					delete transport;
				}
			}
			else
			{
				strcpy(address, Session->GetMessageServer()->GetConnectionAcceptorInfo()->GetIP());
			}
		}
		MPFEStartGameNowMessage message(LHSPrintfW(L"%s", DECODE_NAME(address)));
		message.Send(NULL);
#endif
		Sleep(MPFE_DATA_START_GAME_DELAY);
		Layer->Process();
		if (LHNetBase::Instance.WaitUntilGameLoopStarted() == -1)
		{
			GGame::g_game->QuitGameAndGoIntoNetworkLobby();
		}
		else
		{
			D_DecodeFilesAndSetupPlayersForSession();
			GameStarting = true;
			Layer->StartGame();
			MPFEConnectionStatus::Status.StartGame();
			DialogBoxBase::HideAll();
		}
	}
	else
	{
		for (int i = TEAM_FIRST; i < MAX_TEAMS; i++)
		{
			FileTransfers[i].Process();
			if (FileTransfers[i].Received)
			{
				PlayersTransferringFiles.Remove(FileTransfers[i].Sender);
				FileTransfers[i].Received = false;
			}
		}
	}
}

void MPFEData::CheckForUnpureClients()
{
	if (Data.IsHost && !MPFEConnectionStatus::Status.IsLanLobby())
	{
		for (LHLinkedListIterator<MPFEPlayerDetails*> it = UnassignedPlayers.GetStart(); it; it++)
		{
			if (it.Get()->JoinTime != MPFE_NO_JOIN_TIME &&
			    timeGetTime() - it.Get()->JoinTime > MPFE_DATA_UNPURE_CLIENT_TIMEOUT)
			{
				it.Get()->JoinTime = MPFE_NO_JOIN_TIME;
				GetLayer()->BanPlayerInChannel(it.Get());
			}
		}
	}
}

#ifndef VERSION_BW1W100
void MPFEData::ProcessAlex() {}
#endif

#ifndef VERSION_BW1W100
void MPFEData::D_UpdateBoxCaption()
{
	ActiveDialog->UpdateCaption();
}
#endif

void MPFEData::FlushTeams()
{
	if (TeamsChanged && GetLocalPlayer()->IsHost)
	{
		TeamsChanged = false;
		MPFEUserTeamList list;
		list.Send(NULL);
		GetLayer()->Process();
	}
#if defined(VERSION_BW1WCI)
	Data.TykeStatusChanged = true;
#endif
}

void MPFEData::D_PlayerJoined(const char* nick, LH_USER_ID id)
{
	if (Data.GetPlayerDetailsFromID(id) == NULL)
	{
		FlushTeams();
		if (MPFEConnectionStatus::Status.IsLanLobby())
		{
			MPFEPlayerDetails* player = NEW(890) MPFEPlayerDetails(LHSPrintfW(L"%s", DECODE_NAME(nick)), false);
			MPFEPlayerDetails* lowest = GetLowestNumberedPlayer();
			player->PlayerNumber = lowest->PlayerNumber + 1;
			player->DatabaseID = id;
			player->AssignToBestFitTeam();
			TeamsChanged = true;
			Data.ClansChanged = true;
			if (CurrentChannel->MapID != 0)
			{
#if defined(VERSION_BW1W100) || defined(VERSION_BW1W110) || defined(VERSION_BW1WCI)
				MapChanged = true;
#else
				MPFEChangedMapMessage map(CurrentChannel->MapID, CurrentChannel->NumTeams);
				map.Send(player);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
				MPFEAllConditions conditions(Conditions, ActiveDialog->ConditionEnabled);
				conditions.Send(player);
#endif
#endif
			}
			if (StartGameRequested)
			{
				MPFEDisconnectNowMessage message;
				message.Send(player);
			}
		}
		else
		{
			MPFEPlayerDetails* player = NEW(913) MPFEPlayerDetails(LHSPrintfW(L"%s", DECODE_NAME(nick)), false);
			MPFEPlayerDetails* lowest = GetLowestNumberedPlayer();
			if (lowest == NULL)
			{
				player->PlayerNumber = Data.UnassignedPlayers.count + 1;
			}
			else
			{
				player->PlayerNumber = lowest->PlayerNumber + 1;
			}
			player->DatabaseID = id;
			UnassignedPlayers.Add(player);
			if (StartGameRequested)
			{
				Data.GetLayer()->KickPlayerFromChannel(player);
				MPFEDisconnectNowMessage message;
				message.Send(player);
			}
		}
	}
	D_RecomputeNumPlayers();
	D2A_RefreshTeams();
}

void MPFEData::D_PlayerLeft(LH_USER_ID id, wchar_t* name)
{
	if (CurrentChannel == NULL)
	{
		return;
	}
	MPFEPlayerDetails* player = GetPlayerDetailsFromDatabaseID(id);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	TeamsReadyChanged = true;
#endif
	if (player == NULL)
	{
		if (name == NULL)
		{
			return;
		}
		player = GetPlayerDetailsFromName(name);
		if (player == NULL)
		{
			return;
		}
	}
	if (player->IsTeamLeader && player->Team != TEAM_UNASSIGNED)
	{
		MPFEResetClan message(player->Team);
		message.Send(NULL);
	}
	if (field_0xae4.count != 0 && field_0xae4.Contains(player))
	{
		field_0xae4.Remove(player);
	}
	if (player->IsHost)
	{
		A2D_LeaveGameChannel();
		MPFEChannelSelector::Instance.setup_box->MessageBoxA(HelpTextData::GetTextL(HELP_TEXT_DIALOG_ADDITION_127),
		                                                     MSGBOXSTYLE_SINGLE_BUTTON, 0);
		return;
	}
	bool found = false;
	for (int i = 0; i < MAX_TEAMS && !found; i++)
	{
		for (OrderedNode<MPFEPlayerDetails>* node = Teams[i].GetHead(); node != NULL; node = node->next)
		{
			if (node->GetData() == player)
			{
				found = true;
				Teams[i].Remove(player);
				break;
			}
		}
	}
	if (!found && UnassignedPlayers.Contains(player))
	{
		UnassignedPlayers.Remove(player);
	}
	for (LHLinkedNode<MPFEInviteDetails*>* node = Invites.GetStart(); node != NULL; node = node->next.Get())
	{
		MPFEInviteDetails* invite = node->payload;
		if (invite != NULL && wcscmp(invite->Name, player->GetName()) == 0)
		{
			Invites.Remove(invite);
			break;
		}
	}
	if (PlayersAwaitingStartReply.Contains(player))
	{
		PlayersAwaitingStartReply.Remove(player);
		if (Data.IsHost && player->IsTeamLeader)
		{
			MPFEStopGameStartMessage message;
			message.Send(NULL);
			MPFEStopGameStartMessage::ProcessIncoming(message.Message + 1, Data.GetLocalPlayer());
		}
	}
	if (Data.PlayersTransferringFiles.Contains(player))
	{
		Data.PlayersTransferringFiles.Remove(player);
		if (Data.IsHost && player->IsTeamLeader)
		{
			MPFEStopGameStartMessage message;
			message.Send(NULL);
			MPFEStopGameStartMessage::ProcessIncoming(message.Message + 1, Data.GetLocalPlayer());
		}
	}
	if (Data.IsHost)
	{
		D_ReShuffle(player);
		if (player->Team != TEAM_UNASSIGNED)
		{
			D_ReShuffleTeam(player, player->Team);
		}
		Data.TeamsChanged = true;
	}
	if (player->IsHost)
	{
		GetHighestNumberedPlayer()->IsHost = true;
	}
	if (player->IsTeamLeader)
	{
		for (LHLinkedNode<TeamEnums*>* node = Data.TeamJoinRequests.GetStart(); node != NULL; node = node->next.Get())
		{
			if (player->Team == *node->payload)
			{
				Data.TeamJoinRequests.Remove(node->payload);
				break;
			}
		}
#ifndef VERSION_BW1W100
		if (TransferringFiles)
		{
			MPFEStopGameStartMessage message;
			message.Send(NULL);
			MPFEStopGameStartMessage::ProcessIncoming(message.Message + 1, GetLocalPlayer());
		}
#endif
	}
	D_RecomputeNumPlayers();
	D2A_RefreshTeams();
	if (player != NULL)
	{
		delete player;
	}
}

#ifndef VERSION_BW1W100
void MPFEData::D_PlayerChangedNick(const char* old_nick, const char* new_nick)
{
	MPFEPlayerDetails* player = GetPlayerDetailsFromName(LHSPrintfW(L"%s", DECODE_NAME(old_nick)));
	if (player != NULL)
	{
		player->SetName(LHSPrintfW(L"%s", DECODE_NAME(new_nick)));
	}
	for (LHLinkedNode<MPFEInviteDetails*>* node = Invites.GetStart(); node != NULL; node = node->next.Get())
	{
		MPFEInviteDetails* invite = node->payload;
		if (invite != NULL && wcscmp(invite->Name, LHSPrintfW(L"%s", DECODE_NAME(old_nick))) == 0)
		{
			wcscpy(invite->Name, LHSPrintfW(L"%s", DECODE_NAME(new_nick)));
			return;
		}
	}
}
#endif

void MPFEData::D_IJoinedRoom(const wchar_t* name, bool host, LH_USER_ID id)
{
	InGameChannel = true;
	wcscpy(CurrentChannel->MapName, L"");
	FrontEnd::ChannelDialog->Data = &Data;
	FrontEnd::ChannelDialog->Data->ActiveDialog = FrontEnd::ChannelDialog;
	FrontEnd::ChannelDialog->Show();
	ActiveDialog = FrontEnd::ChannelDialog;
	for (GPlayer* player = GGame::g_game->GetNextActivePlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextActivePlayerAndNeutral(player))
	{
		if (player->StartGameData != NULL)
		{
			delete player->StartGameData;
			player->StartGameData = NULL;
		}
	}
	for (int i = 0; i < MAX_TEAMS; i++)
	{
		FileTransfers[i].Reset();
	}
	if (host)
	{
		MPFEPlayerDetails* player = NEW(1124) MPFEPlayerDetails(GetMyPlayerName(), host);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		player->HasCreature =
			LHOSFile::Exists(LHSPrintf(MPFE_DATA_CREATURE_MIND_PATH "%s", LHLobby::UserFile)) == LH_FILE_RESULT_OK;
#endif
		player->ID = LHNetBase::Instance.User->GetID();
		player->AssignToTeam(TEAM_FIRST);
		ActiveDialog->LocalPlayer = player;
		player->IsTeamLeader = true;
		player->field_0x119 = false;
		if (id == 0)
		{
			id = LHNetBase::Instance.User->GetID();
		}
		player->DatabaseID = id;
		player->PlayerNumber = MPFE_HOST_PLAYER_NUMBER;
		CurrentChannel->NumPlayers = 1;
		HaveTeamList = true;
		D2A_RefreshTeams();
	}
	else
	{
		CurrentChannel->NumPlayers = 0;
		HaveTeamList = false;
		D_BeginPlayerEnumeration();
		if (Data.UnassignedPlayers.count == 0)
		{
			return;
		}
	}
	if (!Data.IsOOSGame)
	{
		CurrentChannel->NumTeams = MPFE_DATA_DEFAULT_NUM_TEAMS;
		Data.D2A_RefreshTeams();
		return;
	}
	FILE* file = fopen("oos.dat", "rb");
	if (file != NULL)
	{
		char  numTeams;
		short mapID;
		fread(&numTeams, 1, 1, file);
		fread(&mapID, 2, 1, file);
		CurrentChannel->NumTeams = numTeams;
		CurrentChannel->MapID = mapID;
		Data.D2A_RefreshTeams();
		fclose(file);
	}
	else
	{
		Data.A2D_LeaveGameChannel();
	}
}

void MPFEData::D_BeginPlayerEnumeration()
{
	GetLayer()->BeginPlayerEnumeration();
}

void MPFEData::D_FinishedPlayerEnumeration(int count)
{
	GetLocalPlayer()->PlayerNumber = count;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	MPFEHasCreature message;
	message.Send(NULL);
#endif
	ActiveDialog->LocalPlayer = GetLocalPlayer();
	D2A_RefreshMaps();
	D2A_RefreshTeams();
}

void MPFEData::D_ReShuffle(MPFEPlayerDetails* player)
{
	for (int i = 0; i < MAX_TEAMS; i++)
	{
		for (OrderedNode<MPFEPlayerDetails>* node = Teams[i].head; node != NULL; node = node->next)
		{
			if (node->GetData()->PlayerNumber > player->PlayerNumber)
			{
				node->GetData()->PlayerNumber--;
			}
		}
	}
	for (LHLinkedNode<MPFEPlayerDetails*>* node = UnassignedPlayers.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload->PlayerNumber > player->PlayerNumber)
		{
			node->payload->PlayerNumber--;
		}
	}
}

void MPFEData::D_ReShuffleTeam(MPFEPlayerDetails* player, TeamEnums team)
{
	for (OrderedNode<MPFEPlayerDetails>* node = Teams[team].head; node != NULL; node = node->next)
	{
		if (node->GetData()->TeamNumber > player->TeamNumber)
		{
			node->GetData()->TeamNumber--;
		}
	}
	MPFEPlayerDetails* leader = Teams[team].head != NULL ? Teams[team].head->GetData() : NULL;
	if (leader != NULL)
	{
		leader->IsTeamLeader = true;
	}
}

void MPFEData::D_EnumeratingPlayersAdd(const char* nick, bool host, LH_USER_ID id)
{
	wchar_t name[0x100];
	wcscpy(name, LHSPrintfW(L"%s", DECODE_NAME(nick)));
	CurrentChannel->NumPlayers++;
	if (wcscmp(name, GetMyPlayerName()) == 0)
	{
		if (GetLocalPlayer() == NULL)
		{
			MPFEPlayerDetails* player = NEW(1263) MPFEPlayerDetails(name, host);
			ActiveDialog->LocalPlayer = player;
			player->ID = LHNetBase::Instance.User->GetID();
			player->field_0x119 = false;
			if (!id.IsValid())
			{
				id = LHNetBase::Instance.User->GetID();
			}
			player->DatabaseID = id;
			UnassignedPlayers.Add(player);
		}
	}
	else if (GetPlayerDetailsFromName(name) == NULL)
	{
		MPFEPlayerDetails* player = NEW(1281) MPFEPlayerDetails(name, host);
		UnassignedPlayers.Add(player);
		player->DatabaseID = id;
		player->IsTeamLeader = false;
		player->Team = TEAM_UNASSIGNED;
#if defined(VERSION_BW1W100)
		if (player->IsHost)
#else
		if (player->IsHost && MPFEConnectionStatus::Status.IsLanLobby())
#endif
		{
			MPFEAskForTeamDetailsMessage message;
			message.Send(player);
		}
	}
}

void MPFEData::D_RecomputeNumPlayers()
{
	if (CurrentChannel != NULL)
	{
		int count = 0;
		for (int i = 0; i < MAX_TEAMS; i++)
		{
			count += Teams[i].count;
		}
		CurrentChannel->NumPlayers = UnassignedPlayers.count + count;
	}
}

wchar_t* MPFEData::GetMyPlayerName()
{
	return LocalPlayerName;
}

#ifndef VERSION_BW1W100
void MPFEData::SetMyPlayerName(wchar_t* name)
{
	if (wcscmp(LocalPlayerName, name) != 0)
	{
		MPFEPlayerDetails* player = GetLocalPlayer();
		wcsncpy(player->Name, name, PLAYER_NAME_SIZE - 1);
	}
	wcsncpy(LocalPlayerName, name, PLAYER_NAME_SIZE - 1);
}
#endif

MPFEPlayerDetails* MPFEData::GetLowestNumberedPlayer()
{
	bool               first = true;
	int                number = 0;
	MPFEPlayerDetails* player = NULL;
	for (int i = 0; i < MAX_TEAMS; i++)
	{
		for (OrderedNode<MPFEPlayerDetails>* node = Teams[i].head; node != NULL; node = node->next)
		{
			if (first || (node->GetData()->PlayerNumber > number && node->GetData()->PlayerNumber != MPFE_NO_NUMBER))
			{
				number = node->GetData()->PlayerNumber;
				player = node->GetData();
				first = false;
			}
		}
	}
	for (LHLinkedNode<MPFEPlayerDetails*>* node = UnassignedPlayers.GetStart(); node != NULL; node = node->next.Get())
	{
		if (first || (node->payload->PlayerNumber > number && node->payload->PlayerNumber != MPFE_NO_NUMBER))
		{
			player = node->payload;
			number = node->payload->PlayerNumber;
			first = false;
		}
	}
	return player;
}

MPFEPlayerDetails* MPFEData::GetHighestNumberedPlayerInTeam(TeamEnums team)
{
	bool               first = true;
	int                number = 0;
	MPFEPlayerDetails* player = NULL;
	for (OrderedNode<MPFEPlayerDetails>* node = Teams[team].head; node != NULL; node = node->next)
	{
		if (first || ((int)node->GetData()->TeamNumber > number && node->GetData()->TeamNumber != MPFE_NO_NUMBER))
		{
			number = node->GetData()->TeamNumber;
			player = node->GetData();
			first = false;
		}
	}
	return player;
}

MPFEPlayerDetails* MPFEData::GetHighestNumberedPlayer()
{
	bool               first = true;
	int                number;
	MPFEPlayerDetails* player = NULL;
	for (int i = 0; i < MAX_TEAMS; i++)
	{
		for (OrderedNode<MPFEPlayerDetails>* node = Teams[i].head; node != NULL; node = node->next)
		{
			if (first || (node->GetData()->PlayerNumber < number && node->GetData()->PlayerNumber != MPFE_NO_NUMBER))
			{
				player = node->GetData();
				number = node->GetData()->PlayerNumber;
				first = false;
			}
		}
	}
	for (LHLinkedNode<MPFEPlayerDetails*>* node = UnassignedPlayers.GetStart(); node != NULL; node = node->next.Get())
	{
		if (first || (node->payload->PlayerNumber < number && node->payload->PlayerNumber != MPFE_NO_NUMBER))
		{
			player = node->payload;
			number = node->payload->PlayerNumber;
			first = false;
		}
	}
	return player;
}

MPFEPlayerDetails* MPFEData::GetLowestNumberedPlayerInTeam(TeamEnums team)
{
	bool               first = true;
	int                number;
	MPFEPlayerDetails* player = NULL;
	for (OrderedNode<MPFEPlayerDetails>* node = Teams[team].head; node != NULL; node = node->next)
	{
		if (first || ((int)node->GetData()->TeamNumber < number && node->GetData()->TeamNumber != MPFE_NO_NUMBER))
		{
			player = node->GetData();
			number = node->GetData()->TeamNumber;
			first = false;
		}
	}
	return player;
}

#ifndef VERSION_BW1W100
bool MPFEData::IsAnyPlayerFlagged()
{
	for (int i = 0; i < MAX_TEAMS; i++)
	{
		for (OrderedNode<MPFEPlayerDetails>* node = Teams[i].GetHead(); node != NULL; node = node->next)
		{
			if (node->GetData()->field_0x119 == true)
			{
				return true;
			}
		}
	}
	for (LHLinkedListIterator<MPFEPlayerDetails*> it = UnassignedPlayers.GetStart(); it; it++)
	{
		if (it.Get()->field_0x119 == true)
		{
			return true;
		}
	}
	return false;
}
#endif

#ifndef VERSION_BW1W100
void MPFEData::A2D_RejectJoinRequest(TeamEnums team, wchar_t* name)
{
	MPFEReplyToJoinMessage message(L'I', team);
	MPFEPlayerDetails*     player = Data.GetPlayerDetailsFromName(name);
	if (player != NULL)
	{
		message.Send(player);
	}
}
#endif

void MPFEData::D_SendOutPlayerProfile()
{
	unsigned long size = 0;
	ProfileSent = true;
	char*         bitmap = NULL;
	unsigned long bitmapLength = 0;
	if (GetLocalPlayer()->IsTeamLeader && GetLocalPlayer()->Team != TEAM_NONE)
	{
		if (GetLocalPlayer()->Clan != NULL)
		{
			bitmap = GetLocalPlayer()->Clan->Bitmap;
			bitmapLength = GetLocalPlayer()->Clan->BitmapLength;
		}
		if (ClanCreatureDownload.Querying == true)
		{
			ProfileWaitingForDatabase = true;
			return;
		}
		char* data;
		if (ClanCreatureDownload.CreatureFile != NULL && Data.TeamDetails[Data.GetLocalPlayer()->Team].ClanID != 0)
		{
			char*         userData = ClanCreatureDownload.UserData;
			unsigned long userDataLen = ClanCreatureDownload.UserDataLen;
			if (userDataLen == 0)
			{
				userData = (char*)LHLobby::UserData;
				userDataLen = LHLobby::UserDataLen;
			}
			unsigned long creatureFileSize = ClanCreatureDownload.CreatureFileSize;
			char*         creatureFile = ClanCreatureDownload.CreatureFile;
			float         alignment = ClanCreatureDownload.Alignment;
#if defined(VERSION_BW1WCI)
			data = MPFEStartGameData::EncodeDataCreatureMemory(alignment, creatureFile, creatureFileSize, NULL, 0,
			                                                   userData, userDataLen, bitmap, bitmapLength, &size);
#else
			data = MPFEStartGameData::EncodeDataCreatureMemory(alignment, creatureFile, creatureFileSize, userData,
			                                                   userDataLen, bitmap, bitmapLength, &size);
#endif
		}
		else
		{
#if defined(VERSION_BW1WCI)
			char path[128];
			strcpy(path, LHSPrintf(MPFE_DATA_CREATURE_MIND_PATH "%s", LHLobby::UserFile));
			char tykePath[128];
			strcpy(tykePath, LHSPrintf(MPFE_DATA_CREATURE_MIND_PATH "T%s", LHLobby::UserFile));
			data = MPFEStartGameData::EncodeDataCreatureFile(path, Data.TykeEnabled ? tykePath : NULL,
			                                                 (char*)LHLobby::UserData, LHLobby::UserDataLen, bitmap,
			                                                 bitmapLength, &size);
#else
			data = MPFEStartGameData::EncodeDataCreatureFile(
				LHSPrintf(MPFE_DATA_CREATURE_MIND_PATH "%s", LHLobby::UserFile), (char*)LHLobby::UserData,
				LHLobby::UserDataLen, bitmap, bitmapLength, &size);
#endif
		}
		FileTransfers[GetLocalPlayer()->Team].StartSending(data, size, true);
		if (data != NULL)
		{
			delete data;
		}
	}
}

void MPFEData::A2D_StartGame()
{
	unsigned long numPlayers = 0;
	for (unsigned long i = TEAM_FIRST; i < MAX_TEAMS; i++)
	{
		numPlayers += Data.Teams[i].count;
	}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	for (int condition = 0; condition < WC_LAST; condition++)
	{
		if (ActiveDialog->ConditionEnabled[condition] &&
		    (condition == WC_CREATURE_KILL_VILLAGERS || condition == WC_BUILDINGS_CREATURE_SMASHED))
		{
			for (unsigned long team = TEAM_FIRST; team < MAX_TEAMS; team++)
			{
				if (TeamDetails[team].ClanID == 0 && Teams[team].GetHead() != NULL &&
				    Teams[team].GetHead()->GetData() != NULL && !Teams[team].GetHead()->GetData()->HasCreature)
				{
					AddRequester(ActiveDialog, MPFEREQUESTER_CREATURE_CONDITIONS, NULL, TEAM_ANY, 0xffffffff);
					return;
				}
			}
			break;
		}
	}
#endif
	if (StartGameRequested || MapDownload.IsDownloading() || CurrentChannel->MapID == 0 || numPlayers <= 1)
	{
		return;
	}
	Data.MapChecksum = Data.GetMapChecksum(CurrentChannel->MapID);
	Data.ActiveDialog->setup_box->SetOffHold();
	Data.ActiveDialog->Requesters.DeleteAll();
	Data.D2A_HostWaitStart();
	MPFEStartGameOkayToStartMessage message;
	Data.StartGameRequested = true;
#ifndef VERSION_BW1W100
	Data.GetLayer()->SetInvite(true);
#endif
	for (int j = 0; j < MAX_TEAMS; j++)
	{
		for (OrderedNode<MPFEPlayerDetails>* node = Data.Teams[j].head; node != NULL; node = node->next)
		{
			if (node->GetData() != Data.GetLocalPlayer())
			{
				Data.PlayersAwaitingStartReply.AddToEnd(node->GetData());
				message.Send(node->GetData());
			}
		}
	}
	for (LHLinkedListIterator<MPFEPlayerDetails*> it = Data.UnassignedPlayers.GetStart(); it; it++)
	{
		MPFEDisconnectNowMessage disconnect;
		disconnect.Send(it.Get());
#ifndef VERSION_BW1W100
		Data.GetLayer()->KickPlayerFromChannel(it.Get());
#endif
	}
}

void MPFEData::D_StartGameSession(char* session_name)
{
	Session = NULL;
	char mapFile[128];
	strcpy(mapFile, A2D_GetLandscapeDetailsFromID(CurrentChannel->MapID)->FileName);
	LHLobby::SendFullChecksum = false;
	LH_USER_ID ids[32];
	wchar_t    names[32][LH_MAX_NAME_LENGTH];
	int        count = 0;
	for (int i = 0; i < MAX_TEAMS; i++)
	{
		for (OrderedNode<MPFEPlayerDetails>* node = Data.Teams[i].GetHead(); node != NULL; node = node->next)
		{
			wcscpy(names[count], node->GetData()->GetName());
			ids[count] = node->GetData()->DatabaseID;
			count++;
		}
	}
	if (session_name != NULL)
	{
		char*         gameData;
		unsigned long gameDataLength;
		if (Data.IsOOSGame)
		{
			gameDataLength = sizeof("oos");
			gameData = "oos";
		}
		else
		{
			gameDataLength = strlen(mapFile) + 1;
			gameData = mapFile;
		}
		Session =
			LHSession::Create(false, LHNetBase::Instance.User, &LHTransportInfo(session_name, MPFE_DATA_SESSION_PORT),
		                      LHSPrintf("%s", ENCODE_NAME(Data.CurrentChannel->Name)), Data.CurrentChannel->NumPlayers,
		                      100, gameData, gameDataLength, names, ids);
	}
	else
	{
		LHTransportInfo* transport = NULL;
		if (strcmp(MPFEConnectionStatus::Status.GetConnection()->Address, "") != 0)
		{
			transport = NEW(1630)
				LHTransportInfo(MPFEConnectionStatus::Status.GetConnection()->Address, MPFE_DATA_SESSION_PORT);
		}
		char*         gameData;
		unsigned long gameDataLength;
		if (Data.IsOOSGame)
		{
			gameDataLength = sizeof("oos");
			gameData = "oos";
		}
		else
		{
			gameDataLength = strlen(mapFile) + 1;
			gameData = mapFile;
		}
		Session = LHSession::Create(true, LHNetBase::Instance.User, transport,
		                            LHSPrintf("%s", ENCODE_NAME(Data.CurrentChannel->Name)),
		                            Data.CurrentChannel->NumPlayers, 100, gameData, gameDataLength, names, ids);
		if (transport != NULL)
		{
			delete transport;
		}
	}
	if (Session == NULL)
	{
		GGame::g_game->QuitGameAndGoIntoNetworkLobby();
		return;
	}
	_unlink("start.dat");
	FILE* file = fopen("start.dat", "wb");
	if (file != NULL)
	{
		char           numTeams = Data.CurrentChannel->NumTeams;
		unsigned short mapID = Data.CurrentChannel->MapID;
		fwrite(&numTeams, sizeof(numTeams), 1, file);
		fwrite(&mapID, sizeof(mapID), 1, file);
		fclose(file);
	}
	LHNetBase::Instance.Session = Session;
	if (MPFEConnectionStatus::Status.IsInternetLobby())
	{
		LHNetBase::Instance.CurrentLobby = NULL;
		LHNetBase::Instance.Channel = NULL;
	}
}

void MPFEData::D_DecodeFilesAndSetupPlayersForSession()
{
	char  no_file[] = "";
	char* user_file = LHLobby::UserFile;
	for (int team = TEAM_FIRST; team < MAX_TEAMS; team++)
	{
		if (Teams[team].count != 0)
		{
			if (GGame::g_game->GetPlayer(team)->StartGameData != NULL)
			{
				delete GGame::g_game->GetPlayer(team)->StartGameData;
			}
			GGame::g_game->GetPlayer(team - 1)->StartGameData = NEW(1688) MPFEStartGameData();
			GGame::g_game->GetPlayer(team - 1)->StartGameData->DecodeData(FileTransfers[team].Data);
			if (TeamDetails[team].ClanID != 0)
			{
				GGame::g_game->GetPlayer(team - 1)->StartGameData->LocalCreature = false;
			}
			GGame::g_game->GetPlayer(team - 1)->StartGameData->LocalCreature = false;
			if (TeamDetails[team].ClanID == 0 &&
			    Data.GetLowestNumberedPlayerInTeam((TeamEnums)team) == Data.GetLocalPlayer())
			{
				GGame::g_game->GetPlayer(team - 1)->StartGameData->LocalCreature = true;
			}
			Session->SetUserData(Teams[team].GetHead()->GetData()->DatabaseID, "",
			                     GGame::g_game->GetPlayer(team - 1)->StartGameData->GetMemoryLength(),
			                     GGame::g_game->GetPlayer(team - 1)->StartGameData->GetMemoryData());
			FileTransfers[team].Reset();
		}
		for (OrderedNode<MPFEPlayerDetails>* node = Teams[team].GetHead(); node != NULL; node = node->next)
		{
			LHPlayer* player = LHNetBase::Instance.Session->GetPlayer(node->GetData()->DatabaseID);
			if (player == NULL)
			{
				MPFEConnectionStatus::Status.LeaveLobbyScreen();
				return;
			}
			player->TeamMemberNumber = node->GetData()->TeamNumber;
			player->TeamNumber = team;
			player->ClanID = team == TEAM_UNASSIGNED ? 0 : Data.TeamDetails[node->GetData()->Team].ClanID;
			char* file = no_file;
			if (player->ClanID == 0 && node->GetData() == Data.GetLocalPlayer())
			{
				file = user_file;
			}
			Session->SetUserData(node->GetData()->DatabaseID, file,
			                     GGame::g_game->GetPlayer(team - 1)->StartGameData->GetMemoryLength(),
			                     GGame::g_game->GetPlayer(team - 1)->StartGameData->GetMemoryData());
		}
	}
	for (OrderedNode<MPFEPlayerDetails>* node = Teams[TEAM_NONE].GetHead(); node != NULL; node = node->next)
	{
		LHPlayer* player = LHNetBase::Instance.Session->GetPlayer(node->GetData()->DatabaseID);
		player->TeamMemberNumber = node->GetData()->TeamNumber;
		player->TeamNumber = TEAM_NONE;
	}
}

LandscapeDetails* MPFEData::A2D_GetLandscapeDetailsFromID(unsigned long id)
{
	return MapDownload.GetLandscapeDetailsforNumber(id);
}

LandscapeDetails* MPFEData::A2D_GetNextLandscape(LandscapeDetails* details)
{
	LHLinkedNode<LandscapeDetails*>* node = MPFEDatabase::Landscapes.GetStart();
	if (details == NULL)
	{
		return node != NULL ? node->payload : NULL;
	}
	for (; node != NULL; node = node->next.Get())
	{
		if (node->payload == details)
		{
			node = node->next.Get();
			break;
		}
	}
	if (node != NULL)
	{
		return node->payload;
	}
	return NULL;
}

void MPFEData::D_GotThumbnail()
{
	if (ThumbnailMap.LoadThumbnail(ThumbDownload.LocalFileName))
	{
		D2A_UpdateThumbnail(ThumbDownload.GetCurrentFileNumber());
	}
	LandscapeDetails* details = A2D_GetLandscapeDetailsFromID(ThumbDownload.GetCurrentFileNumber());
	details->ThumbnailOnDisk = details->AreWeOnDisk(false);
}

void MPFEData::D_GotMapfile()
{
	LandscapeDetails* details = A2D_GetLandscapeDetailsFromID(MapDownload.FileNumber);
	details->MapOnDisk = details->AreWeOnDisk(true);
}

#ifndef VERSION_BW1W100
void MPFEData::D_StopQueries()
{
	D_StopDatabaseQuery();
	D_StopClanQueries();
}
#endif

#ifndef VERSION_BW1W100
void MPFEData::D_StopDatabaseQuery()
{
	if (DatabaseQueryActive)
	{
		DatabaseQuery.Reset();
		DatabaseQueryActive = false;
	}
}
#endif

#ifndef VERSION_BW1W100
void MPFEData::D_StopClanQueries()
{
	for (int i = 0; i < MAX_TEAMS; i++)
	{
		for (OrderedNode<MPFEPlayerDetails>* node = Teams[i].GetHead(); node != NULL; node = node->next)
		{
			if (node->GetData()->ClanQuerying)
			{
				node->GetData()->StopClanQuery();
			}
		}
	}
}
#endif

void MPFEData::D_GetPlayerInfoFromDatabase(MPFEPlayerDetails* player)
{
	if (player->PlayerQueried)
	{
		D2A_RefreshPlayerDetails();
	}
	else if (!player->PlayerQuerying)
	{
		player->QueryPlayer();
	}
}

void MPFEData::D_GetPlayerClanInfoFromDatabase(MPFEPlayerDetails* player)
{
	if (player->ClanQueried)
	{
		D_UpdateBoxClans();
	}
	else if (!player->ClanQuerying)
	{
		player->QueryClans();
	}
}

void MPFEData::D_RefreshDatabaseQueries()
{
	for (int i = 0; i < MAX_TEAMS; i++)
	{
		for (OrderedNode<MPFEPlayerDetails>* node = Teams[i].head; node != NULL; node = node->next)
		{
			if (node->GetData()->ClanQuerying)
			{
				node->GetData()->RefreshClanQuery();
			}
			if (node->GetData()->PlayerQuerying)
			{
				node->GetData()->RefreshPlayerQuery();
			}
		}
	}
}

uint64_t MPFEData::GetMapChecksum(unsigned long map_id)
{
	FILE*    file;
	uint32_t sum = 0;
	uint32_t weighted = 0;
	if (Data.IsOOSGame)
	{
		file = fopen("oos.txt", "rb");
	}
	else
	{
		LandscapeDetails* details = Data.A2D_GetLandscapeDetailsFromID(map_id);
		if (details == NULL)
		{
			return (uint64_t)-1;
		}
		file = fopen(LHSPrintf(MPFE_DATA_ONLINE_MAPS_PATH "%s.map", details->FileName), "rb");
	}
	if (file != NULL)
	{
		unsigned long  length = _filelength((_fileno)(file));
		unsigned char* buffer = NEW(1861) unsigned char[length];
		fread(buffer, 1, length, file);
		for (unsigned long i = 0; i < length; i++)
		{
			sum += (buffer[i] == '\n' ? i & 0x3f : 0) + buffer[i];
			weighted = buffer[i] * 9 + weighted + buffer[i] / 3;
		}
		delete buffer;
		fclose(file);
	}
	return ((uint64_t)weighted << 32) | sum;
}

uint64_t MPFEData::GetOOSChecksum()
{
	FILE*    file = fopen("oos.txt", "rb");
	uint32_t sum = 0;
	uint32_t weighted = 0;
	if (file == NULL)
	{
		return 0;
	}
	unsigned long length = _filelength((_fileno)(file));
	char*         buffer = NEW(1883) char[length];
	fread(buffer, length, 1, file);
	for (unsigned long i = 0; i < length; i++)
	{
		char c = buffer[i];
		sum += c + (c == '\n' ? i & 0x7f : 0);
		weighted = c / 2 + weighted + c * 10;
	}
	fclose(file);
	delete buffer;
	return ((uint64_t)weighted << 32) | sum;
}

bool MPFEData::D_GotSelectedMapFile()
{
	if (CurrentChannel->MapID == 0)
	{
		return false;
	}
	LandscapeDetails* details = Data.A2D_GetLandscapeDetailsFromID(CurrentChannel->MapID);
	if (details == NULL)
	{
		return false;
	}
	return details->AreWeOnDisk(true);
}

void MPFEData::D_RefreshPlayerClans()
{
	for (int i = 0; i < MAX_TEAMS; i++)
	{
		for (OrderedNode<MPFEPlayerDetails>* node = Teams[i].head; node != NULL; node = node->next)
		{
			for (LHLinkedNode<MPFEClanDetails*>* clan = node->GetData()->Clans.GetStart(); clan != NULL;
			     clan = clan->next.Get())
			{
				clan->payload->Refresh();
			}
		}
	}
}

void MPFEData::D_UpdateBoxClans()
{
	ActiveDialog->UpdateClans();
}

uint64_t MPFEData::InfoFileChecksum2 = 0;
uint64_t MPFEData::InfoFileChecksum = 0;
uint64_t MPFEData::CreatureFileChecksum = 0;
uint64_t MPFEData::OOSChecksum = 0;
