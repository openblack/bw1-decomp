#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */

#include "MPFEMessageObject.h"

#include <stdio.h> /* For swprintf, swscanf */
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#include <vector> /* For std::vector */
#endif
#include <wchar.h> /* For wcscmp, wcscpy, wcslen */

#include <GameSpy/Peer/peer.h>                          /* For peerStateChanged, peerThink */
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>            /* For LHOSFile */
#include <Lionhead/LHLib/ver5.0/LHLinkedListIterator.h> /* For LHLinkedListIterator */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>            /* For LHSPrintf */
#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h>      /* For LHLobby */

#include "alexmfc.h"                           /* For SetupBox */
#include "ChannelBox.h"                        /* For ChannelBox */
#include "LayerCommunication.h"                /* For LayerCommunication */
#include "MPFEAlexDialog.h"                    /* For MPFERequesterQ */
#include "LHNetBase.h"                         /* For LHNetBase */
#include "MPFEAllConditions.h"                 /* For MPFEAllConditions */
#include "MPFEAskForTeamDetailsMessage.h"      /* For MPFEAskForTeamDetailsMessage */
#include "MPFEAskJoinMessage.h"                /* For MPFEAskJoinMessage */
#include "MPFECancelStartMessage.h"            /* For MPFECancelStartMessage */
#include "MPFEChangeClanRequest.h"             /* For MPFEChangeClanRequest */
#include "MPFEChangedMapMessage.h"             /* For MPFEChangedMapMessage */
#include "MPFEChangedTeamRequestMessage.h"     /* For MPFEChangedTeamRequestMessage */
#include "MPFEChangedTykeStatus.h"             /* For MPFEChangedTykeStatus */
#include "MPFEChannelDetails.h"                /* For MPFEChannelDetails */
#include "MPFEClanList.h"                      /* For MPFEClanList */
#include "MPFECondtionUpdateMessage.h"         /* For MPFECondtionUpdateMessage */
#include "MPFEConnectionStatus.h"              /* For MPFEConnectionStatus */
#include "MPFEData.h"                          /* For MPFEData */
#include "MPFEDatabaseID.h"                    /* For MPFEDatabaseID */
#include "MPFEFileTransfer.h"                  /* For MPFEFileTransfer */
#include "MPFEHasCreature.h"                   /* For MPFEHasCreature */
#include "MPFEInviteToTeamMessage.h"           /* For MPFEInviteToTeamMessage */
#include "MPFEKickMessage.h"                   /* For MPFEKickMessage */
#include "MPFEKickMessageRequest.h"            /* For MPFEKickMessageRequest */
#include "MPFEMapErrorMessage.h"               /* For MPFEMapErrorMessage */
#include "MPFEPlayerDetails.h"                 /* For MPFEPlayerDetails */
#include "MPFEPrivateChatMessage.h"            /* For MPFEPrivateChatMessage */
#include "MPFEPublicChatMessage.h"             /* For MPFEPublicChatMessage */
#include "MPFEReadyMessage.h"                  /* For MPFEReadyMessage */
#include "MPFEReplyToInviteMessage.h"          /* For MPFEReplyToInviteMessage */
#include "MPFEReplyToJoinMessage.h"            /* For MPFEReplyToJoinMessage */
#include "MPFEResetClan.h"                     /* For MPFEResetClan */
#include "MPFEStartGameNowMessage.h"           /* For MPFEStartGameNowMessage */
#include "MPFEStartGameOkayToStartMessage.h"   /* For MPFEStartGameOkayToStartMessage */
#include "MPFEStartGameReadyMessage.h"         /* For MPFEStartGameReadyMessage */
#include "MPFEStartGameTransferFilesMessage.h" /* For MPFEStartGameTransferFilesMessage */
#include "MPFEStopGameStartMessage.h"          /* For MPFEStopGameStartMessage */
#include "MPFETeamsReadyList.h"                /* For MPFETeamsReadyList */
#include "MPFEUserTeamList.h"                  /* For MPFEUserTeamList */

#if defined(VERSION_BW1W100)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 400 ? 27 : 34))
#elif defined(VERSION_BW1W110)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 400 ? 26 : 33))
#elif defined(VERSION_BW1WCI)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 400 ? 23 : 30))
#endif

// BW1W120 00627cf0 BW1M119 inlined
static bool OOSChecksumMatches(uint64_t checksum);

void MPFEMessageObject::Send(MPFEPlayerDetails* player)
{
	MPFEData::Data.GetLayer()->SendMessageA(Message, player != NULL, player);
}

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
SpecialMessageTypes MPFEMessageObject::GetMessageType(wchar_t code)
{
	if (code >= L'A' && code <= L'Z')
	{
		return (SpecialMessageTypes)(code - L'A');
	}
	return (SpecialMessageTypes)(code - L'a');
}

wchar_t MPFEMessageObject::GetMessageCode(SpecialMessageTypes type)
{
	if (type > L'Z' - L'A')
	{
		return L'a' + type;
	}
	return L'A' + type;
}
#else
SpecialMessageTypes MPFEMessageObject::GetMessageType(wchar_t code)
{
	SpecialMessageTypes type = (SpecialMessageTypes)(code - L'A');
	if (type > SPECIAL_MESSAGE_TYPE_LAST && code < L'A')
	{
		type = SPECIAL_MESSAGE_TYPE_INVALID;
	}
	return type;
}

wchar_t MPFEMessageObject::GetMessageCode(SpecialMessageTypes type)
{
	return L'A' + type;
}
#endif

void MPFEMessageObject::ProcessIncomingMessage(wchar_t* message, MPFEPlayerDetails* from, wchar_t* name)
{
	SpecialMessageTypes type = GetMessageType(message[0]);
	if (MPFEData::Data.GetLocalPlayer()->IsHost && type == SPECIAL_MESSAGE_TYPE_INVALID &&
	    MPFEConnectionStatus::Status.IsInternetLobby())
	{
		MPFEData::Data.GetLayer()->BanPlayerInChannel(from);
	}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (wcscmp(L"abcdef123", from->Name) == 0 && !from->ReceivedDatabaseID &&
	    type != SPECIAL_MESSAGE_TYPE_DATABASE_ID && type != SPECIAL_MESSAGE_TYPE_HAS_CREATURE)
#elif defined(VERSION_BW1W100)
	if (!from->DatabaseID.IsValid() && type != SPECIAL_MESSAGE_TYPE_DATABASE_ID)
#else
	if (wcscmp(L"abcdef123", from->Name) == 0 && !from->ReceivedDatabaseID && type != SPECIAL_MESSAGE_TYPE_DATABASE_ID)
#endif
	{
		if (MPFEData::Data.GetLocalPlayer()->IsHost)
		{
			MPFEData::Data.GetLayer()->KickPlayerFromChannel(from);
		}
		return;
	}
	switch (type)
	{
	case SPECIAL_MESSAGE_TYPE_PUBLIC_CHAT:
		MPFEPublicChatMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_PRIVATE_CHAT:
		MPFEPrivateChatMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_ASK_FOR_TEAM_DETAILS:
		MPFEAskForTeamDetailsMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_USER_TEAM_LIST:
		MPFEUserTeamList::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_CLAN_LIST:
		MPFEClanList::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_CHANGE_CLAN_REQUEST:
		MPFEChangeClanRequest::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_CHANGED_TEAM_REQUEST:
		MPFEChangedTeamRequestMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_RESET_CLAN:
		MPFEResetClan::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_ASK_JOIN:
		MPFEAskJoinMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_REPLY_TO_JOIN:
		MPFEReplyToJoinMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_INVITE_TO_TEAM:
		MPFEInviteToTeamMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_REPLY_TO_INVITE:
		MPFEReplyToInviteMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_FILE_TRANSFER:
		MPFEFileTransfer::ProcessIncomming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_START_GAME_OKAY_TO_START:
		MPFEStartGameOkayToStartMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_START_GAME_READY:
		MPFEStartGameReadyMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_START_GAME_TRANSFER_FILES:
		MPFEStartGameTransferFilesMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_START_GAME_NOW:
		MPFEStartGameNowMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_CHANGED_MAP:
		MPFEChangedMapMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_MAP_ERROR:
		MPFEMapErrorMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_CANCEL_START:
		MPFECancelStartMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_KICK:
		MPFEKickMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_KICK_REQUEST:
		MPFEKickMessageRequest::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_DATABASE_ID:
		MPFEDatabaseID::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_STOP_GAME_START:
		MPFEStopGameStartMessage::ProcessIncoming(message + 1, from);
		break;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	case SPECIAL_MESSAGE_TYPE_CONDITION_UPDATE:
		MPFECondtionUpdateMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_ALL_CONDITIONS:
		MPFEAllConditions::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_READY:
		MPFEReadyMessage::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_TEAMS_READY_LIST:
		MPFETeamsReadyList::ProcessIncoming(message + 1, from);
		break;
	case SPECIAL_MESSAGE_TYPE_HAS_CREATURE:
		MPFEHasCreature::ProcessIncoming(message + 1, from);
		break;
#elif defined(VERSION_BW1WCI)
	case SPECIAL_MESSAGE_TYPE_CHANGED_TYKE_STATUS:
		MPFEChangedTykeStatus::ProcessIncoming(message + 1, from);
		break;
#endif
	}
}

MPFEPublicChatMessage::MPFEPublicChatMessage(wchar_t* message)
{
	Message = NEW(188) wchar_t[wcslen(message) + 10];
	swprintf(Message, L"%c%s", GetMessageCode(SPECIAL_MESSAGE_TYPE_PUBLIC_CHAT), message);
}

void MPFEPublicChatMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (from != NULL)
	{
		MPFEData::Data.D2A_IncomingChatString(from->Name, message, false, false, false);
	}
}

MPFEPrivateChatMessage::MPFEPrivateChatMessage(wchar_t* message, bool is_team)
{
	Message = NEW(203) wchar_t[wcslen(message) + 20];
	swprintf(Message, L"%c%c%s", GetMessageCode(SPECIAL_MESSAGE_TYPE_PRIVATE_CHAT), is_team == true ? L'T' : L'P',
	         message);
}

void MPFEPrivateChatMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (from != NULL)
	{
		MPFEData::Data.D2A_IncomingChatString(from->Name, message + 1, true, message[0] == L'T', false);
	}
}

MPFEAskJoinMessage::MPFEAskJoinMessage(TeamEnums team)
{
	Message = NEW(220) wchar_t[10];
	swprintf(Message, L"%c%u", GetMessageCode(SPECIAL_MESSAGE_TYPE_ASK_JOIN), team);
}

void MPFEAskJoinMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (from != NULL)
	{
		TeamEnums team;
		swscanf(message, L"%u", &team);
		if (team != MPFEData::Data.GetLocalPlayer()->Team)
		{
			MPFEReplyToJoinMessage reply(L'I', team);
			reply.Send(from);
		}
		else
		{
			MPFEData::Data.D2A_PlayerRequestToJoinTeam(team, from->Name);
		}
	}
}

MPFEReplyToJoinMessage::MPFEReplyToJoinMessage(wchar_t reply, TeamEnums team)
{
	Message = NEW(246) wchar_t[10];
	swprintf(Message, L"%c%c%u", GetMessageCode(SPECIAL_MESSAGE_TYPE_REPLY_TO_JOIN), reply, team);
}

void MPFEReplyToJoinMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (from != NULL)
	{
		wchar_t   reply;
		TeamEnums team;
		swscanf(message, L"%c%u", &reply, &team);
		unsigned long* request = NULL;
		for (LHLinkedListIterator<unsigned long*> it = MPFEData::Data.TeamJoinRequests.GetStart(); it; it++)
		{
			if (*it.Get() == (unsigned long)team)
			{
				request = it.Get();
			}
		}
		switch (reply)
		{
		case L'Y':
			MPFEData::Data.TeamJoinRequests.Remove(request);
			delete request;
			if (!MPFEData::Data.GetLocalPlayer()->IsHost)
			{
				MPFEChangedTeamRequestMessage changeTeam(team);
				changeTeam.Send(MPFEData::Data.GetHostPlayer());
			}
			else
			{
				if (MPFEData::Data.GetLocalPlayer()->IsTeamLeader)
				{
					MPFEData::Data.ClanCreatureDownload.Stop();
					MPFEResetClan resetClan(MPFEData::Data.GetLocalPlayer()->Team);
					resetClan.Send(NULL);
				}
				MPFEData::Data.GetLocalPlayer()->AssignToTeam(team);
				MPFEData::Data.TeamsChanged = true;
				MPFEData::Data.D2A_RefreshTeams();
			}
			break;
		case L'N':
			MPFEData::Data.TeamJoinRequests.Remove(request);
			delete request;
			MPFEData::Data.D2A_PlayerDeniedJoin(from->Name);
			break;
		case L'I':
			MPFEData::Data.TeamJoinRequests.Remove(request);
			MPFEPlayerDetails* leader = MPFEData::Data.GetLowestNumberedPlayerInTeam(team);
			if (leader != NULL)
			{
				MPFEAskJoinMessage askJoin(team);
				askJoin.Send(leader);
			}
			else
			{
				MPFEChangedTeamRequestMessage changeTeam(team);
				changeTeam.Send(MPFEData::Data.GetLocalPlayer());
			}
			break;
		}
	}
}

MPFEInviteToTeamMessage::MPFEInviteToTeamMessage(TeamEnums team)
{
	Message = NEW(321) wchar_t[20];
	swprintf(Message, L"%c%u", GetMessageCode(SPECIAL_MESSAGE_TYPE_INVITE_TO_TEAM), team);
}

void MPFEInviteToTeamMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (from != NULL)
	{
		TeamEnums team;
		swscanf(message, L"%u", &team);
		MPFEData::Data.D2A_YouHaveBeenInvited(team, from->GetName());
	}
}

MPFEReplyToInviteMessage::MPFEReplyToInviteMessage(bool accept, TeamEnums team)
{
	Message = NEW(337) wchar_t[40];
	swprintf(Message, L"%c%u:%c", GetMessageCode(SPECIAL_MESSAGE_TYPE_REPLY_TO_INVITE), team,
	         accept == true ? L'Y' : L'N');
}

void MPFEReplyToInviteMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	TeamEnums team;
	wchar_t   reply;
	swscanf(message, L"%u:%c", &team, &reply);
	for (LHLinkedListIterator<MPFEInviteDetails*> it = MPFEData::Data.Invites.GetStart(); it; it++)
	{
		MPFEInviteDetails* invite = it.Get();
		if (wcscmp(invite->Name, from->GetName()) == 0 && invite->Team == (unsigned long)team)
		{
			MPFEData::Data.Invites.Remove(invite);
			delete invite;
			return;
		}
	}
}

MPFECancelStartMessage::MPFECancelStartMessage()
{
	Message = NEW(364) wchar_t[10];
	if (MPFEData::Data.GetLocalPlayer()->IsHost)
	{
		swprintf(Message, L"%c", GetMessageCode(SPECIAL_MESSAGE_TYPE_CANCEL_START));
	}
}

void MPFECancelStartMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (from->IsHost && MPFEData::Data.D_GotSelectedMapFile())
	{
		ChannelBox* box = MPFEData::Data.ActiveDialog;
		bool        first = true;
		for (LHLinkedListIterator<MPFERequesterQ*> it = box->Requesters.GetStart(); it; it++)
		{
			if (it.Get()->Type == MPFEREQUESTER_CLIENT_WAIT_START)
			{
				if (first)
				{
					box->setup_box->SetOffHold();
				}
				box->Requesters.Remove(it.Get());
				break;
			}
			first = false;
		}
		MPFEData::Data.D2A_CouldNotStartBecauseOtherPeopleDownloading();
	}
}

MPFEKickMessageRequest::MPFEKickMessageRequest(MPFEPlayerDetails* player)
{
	Message = NEW(386) wchar_t[50];
	swprintf(Message, L"%c%u", GetMessageCode(SPECIAL_MESSAGE_TYPE_KICK_REQUEST), (unsigned long)player->DatabaseID);
}

void MPFEKickMessageRequest::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (MPFEData::Data.GetLocalPlayer()->IsHost)
	{
		LH_USER_ID id;
		swscanf(message, L"%u", &id);
		MPFEPlayerDetails* player = MPFEData::Data.GetPlayerDetailsFromDatabaseID(id);
		if (player != NULL &&
		    (from->IsHost || (from->IsTeamLeader && from->Team == player->Team && from->Team != TEAM_NONE)))
		{
			MPFEKickMessage kick(player, from);
			kick.Send(player);
			if (player->Team != TEAM_NONE)
			{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
				if (player->IsTeamLeader)
				{
					MPFEResetClan resetClan(player->Team);
					resetClan.Send(NULL);
				}
#endif
				player->AssignToTeam(TEAM_NONE);
			}
			else
			{
				MPFEData::Data.GetLayer()->KickPlayerFromChannel(player);
			}
			MPFEData::Data.D2A_RefreshTeams();
			MPFEUserTeamList teamList;
			teamList.Send(NULL);
		}
	}
}

MPFEKickMessage::MPFEKickMessage(MPFEPlayerDetails* player, MPFEPlayerDetails* by)
{
	Message = NEW(433) wchar_t[50];
	swprintf(Message, L"%c%u:%u:%u", GetMessageCode(SPECIAL_MESSAGE_TYPE_KICK), player->DatabaseID.id,
	         by->DatabaseID.id, player->Team);
}

void MPFEKickMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	LH_USER_ID byID;
	LH_USER_ID playerID;
	TeamEnums  team;
	wchar_t    name[0x100];
	swscanf(message, L"%u:%u:%u", &playerID, &byID, &team);
	MPFEPlayerDetails* player = MPFEData::Data.GetPlayerDetailsFromDatabaseID(playerID);
	MPFEPlayerDetails* by = MPFEData::Data.GetPlayerDetailsFromDatabaseID(byID);
	if (player == MPFEData::Data.GetLocalPlayer())
	{
		TeamEnums playerTeam = player->Team;
		if ((playerTeam == TEAM_NONE || playerTeam == TEAM_UNASSIGNED) && by->IsHost && playerTeam == team)
		{
			wcscpy(name, by->Name);
			MPFEData::Data.A2D_LeaveGameChannel();
			MPFEData::Data.D2A_YouWereKickedGame(name);
		}
		else
		{
			MPFEData::Data.ClanCreatureDownload.Stop();
			MPFEData::Data.D2A_YouWereKicked(by->Name);
		}
	}
}

MPFEDatabaseID::MPFEDatabaseID()
{
	Message = NEW(465) wchar_t[200];
	swprintf(Message, L"%c%I64u:%I64u:%s", GetMessageCode(SPECIAL_MESSAGE_TYPE_DATABASE_ID), MPFEData::InfoFileChecksum,
	         MPFEData::OOSChecksum, MPFEData::Data.LocalPlayerName);
}

#if defined(VERSION_BW1W100)
void MPFEDatabaseID::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	uint64_t infoChecksum;
	uint64_t oosChecksum;
	swscanf(message, L"%I64u:%I64u:", &infoChecksum, &oosChecksum);
	int i = 0;
	while (message[i] != L':')
	{
		i++;
	}
	i += 2;
	while (message[i] != L':')
	{
		i++;
	}
	wcscpy(from->Name, &message[i + 1]);
	if (MPFEConnectionStatus::Status.IsInternetLobby() && MPFEData::Data.IsHost)
	{
		bool checksumsMatch = MPFEData::InfoFileChecksum == infoChecksum && OOSChecksumMatches(oosChecksum);
		if (!checksumsMatch)
		{
			MPFEKickMessage kick(from, MPFEData::Data.GetLocalPlayer());
			kick.Send(from);
			MPFEData::Data.GetLayer()->KickPlayerFromChannel(from);
		}
		else
		{
			from->AssignToBestFitTeam();
			MPFEData::Data.TeamsChanged = true;
			MPFEData::Data.ClansChanged = true;
			if (MPFEData::Data.CurrentChannel->MapID != 0)
			{
				MPFEData::Data.MapChanged = true;
			}
		}
		peerStateChanged(LHNetBase::Instance.Peer);
		peerThink(LHNetBase::Instance.Peer);
	}
}
#else
void MPFEDatabaseID::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (from->ReceivedDatabaseID != true)
	{
		uint64_t infoChecksum;
		uint64_t oosChecksum;
		swscanf(message, L"%I64u:%I64u:", &infoChecksum, &oosChecksum);
		int i = 0;
		while (message[i] != L':')
		{
			i++;
		}
		i += 2;
		while (message[i] != L':')
		{
			i++;
		}
		wcscpy(from->Name, &message[i + 1]);
		from->ReceivedDatabaseID = true;
		if (MPFEConnectionStatus::Status.IsInternetLobby() && MPFEData::Data.IsHost)
		{
			bool checksumsMatch = MPFEData::InfoFileChecksum == infoChecksum && OOSChecksumMatches(oosChecksum);
			if (!checksumsMatch)
			{
				MPFEKickMessage kick(from, MPFEData::Data.GetLocalPlayer());
				kick.Send(from);
				MPFEData::Data.GetLayer()->KickPlayerFromChannel(from);
			}
			else
			{
				from->AssignToBestFitTeam();
				MPFEData::Data.TeamsChanged = true;
				MPFEData::Data.ClansChanged = true;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
				if (MPFEData::Data.CurrentChannel->MapID != 0)
				{
					MPFEChangedMapMessage changedMap(MPFEData::Data.CurrentChannel->MapID,
					                                 MPFEData::Data.CurrentChannel->NumTeams);
					changedMap.Send(from);
					MPFEAllConditions allConditions(MPFEData::Data.Conditions,
					                                MPFEData::Data.ActiveDialog->ConditionEnabled);
					allConditions.Send(from);
				}
#else
				if (MPFEData::Data.CurrentChannel->MapID != 0)
				{
					MPFEData::Data.MapChanged = true;
				}
#endif
			}
			peerStateChanged(LHNetBase::Instance.Peer);
			peerThink(LHNetBase::Instance.Peer);
		}
	}
}
#endif

static bool OOSChecksumMatches(uint64_t checksum)
{
	return MPFEData::OOSChecksum == 0 || checksum == MPFEData::OOSChecksum;
}

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
MPFEReadyMessage::MPFEReadyMessage(bool ready)
{
	Message = NEW(541) wchar_t[20];
	swprintf(Message, L"%c%u", GetMessageCode(SPECIAL_MESSAGE_TYPE_READY), ready != false);
}

void MPFEReadyMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	unsigned long ready;
	swscanf(message, L"%u", &ready);
	from->Ready = ready != 0;
	MPFEData::Data.ActiveDialog->UpdateTeams();
	MPFEData::Data.TeamsReadyChanged = true;
}

MPFETeamsReadyList::MPFETeamsReadyList()
{
	unsigned long     bits = 0;
	std::vector<bool> ready;
	for (int team = 0; team < MPFEData::MAX_TEAMS; team++)
	{
		for (LHOrderedLinkedListIterator<MPFEPlayerDetails> it(MPFEData::Data.Teams[team]); it.MoreToDo(); it++)
		{
			ready.push_back(it.Get()->Ready != false);
		}
	}
	for (std::vector<bool>::reverse_iterator readyIt = ready.rbegin(); readyIt != ready.rend(); readyIt++)
	{
		bits <<= 1;
		if (*readyIt == true)
		{
			bits |= 1;
		}
	}
	Message = NEW(578) wchar_t[20];
	swprintf(Message, L"%c%u", GetMessageCode(SPECIAL_MESSAGE_TYPE_TEAMS_READY_LIST), bits);
}

void MPFETeamsReadyList::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	unsigned long bits;
	swscanf(message, L"%u", &bits);
	if (from->IsHost)
	{
		for (int team = 0; team < MPFEData::MAX_TEAMS; team++)
		{
			for (LHOrderedLinkedListIterator<MPFEPlayerDetails> it(MPFEData::Data.Teams[team]); it.MoreToDo(); it++)
			{
				it.Get()->Ready = bits & 1;
				bits >>= 1;
			}
			MPFEData::Data.ActiveDialog->UpdateTeams();
		}
	}
}

MPFEHasCreature::MPFEHasCreature()
{
	Message = NEW(605) wchar_t[10];
	unsigned long hasCreature = 0;
	if (LHOSFile::Exists(LHSPrintf(".\\Scripts\\CreatureMind\\%s", LHLobby::UserFile)) == LH_FILE_RESULT_OK)
	{
		hasCreature = 1;
	}
	swprintf(Message, L"%c%u", GetMessageCode(SPECIAL_MESSAGE_TYPE_HAS_CREATURE), hasCreature);
}

void MPFEHasCreature::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (MPFEData::Data.IsHost)
	{
		unsigned long hasCreature;
		swscanf(message, L"%u", &hasCreature);
		from->HasCreature = hasCreature == 1;
		MPFEData::Data.TeamsChanged = true;
		MPFEData::Data.ActiveDialog->UpdateAll();
	}
}
#endif
