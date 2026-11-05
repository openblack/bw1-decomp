#include "CellSize.h" /* For CellSize, ahead of PI in .rdata */
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>

#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */

#include "MPFEMessageObject.h"

#include <stdio.h> /* For swprintf, swscanf */

#include <Lionhead/LHLib/ver5.0/LHWin.h>     /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h> /* For LHSPrintf */

#include "BWGameSpy.h"                         /* For BWGameSpy::Locked */
#include "ChannelBox.h"                        /* For ChannelBox::Requesters */
#include "FrontEnd.h"                          /* For FrontEnd, WCHAR2CHAR */
#include "GSFunctions.h"                       /* For ENCODE_NAME */
#include "Game.h"                              /* For GGame::g_game */
#include "LHNetBase.h"                         /* For LHNetBase::Instance */
#include "LayerCommunication.h"                /* For LayerCommunication */
#include "MPFECancelStartMessage.h"            /* For MPFECancelStartMessage */
#include "MPFEChannelDetails.h"                /* For struct MPFEChannelDetails */
#include "MPFEConnectionStatus.h"              /* For MPFEConnectionStatus::Status */
#include "MPFEData.h"                          /* For MPFEData::Data */
#include "MPFEDisconnectNowMessage.h"          /* For MPFEDisconnectNowMessage */
#include "MPFEKickMessageRequest.h"            /* For MPFEKickMessageRequest */
#include "MPFEPlayerDetails.h"                 /* For struct MPFEPlayerDetails */
#include "MPFEStartGameNowMessage.h"           /* For MPFEStartGameNowMessage */
#include "MPFEStartGameOkayToStartMessage.h"   /* For MPFEStartGameOkayToStartMessage */
#include "MPFEStartGameReadyMessage.h"         /* For MPFEStartGameReadyMessage */
#include "MPFEStartGameTransferFilesMessage.h" /* For MPFEStartGameTransferFilesMessage */
#include "MPFEStopGameStartMessage.h"          /* For MPFEStopGameStartMessage */
#include "alexmfc.h"                           /* For SetupBox::SetOffHold */

#if defined(VERSION_BW1W100)
#define MPFE_GAME_START_MESSAGES_FILE       "C:\\dev\\black\\MPFEGameStartMessages.cpp"
#define MPFE_GAME_START_MESSAGES_LINE(line) ((line) - ((line) < 100 ? 1 : 4))
#elif defined(VERSION_BW1W110)
#define MPFE_GAME_START_MESSAGES_FILE       "C:\\dev\\Black\\MPFEGameStartMessages.cpp"
#define MPFE_GAME_START_MESSAGES_LINE(line) (line)
#elif defined(VERSION_BW1W130)
#define MPFE_GAME_START_MESSAGES_FILE       "D:\\Work\\Games\\dd\\Black\\MPFEGameStartMessages.cpp"
#define MPFE_GAME_START_MESSAGES_LINE(line) (line)
#elif defined(VERSION_BW1WCI)
#define MPFE_GAME_START_MESSAGES_FILE       "C:\\dev\\black\\MPFEGameStartMessages.cpp"
#define MPFE_GAME_START_MESSAGES_LINE(line) (line)
#else
#define MPFE_GAME_START_MESSAGES_FILE       "C:\\dev\\MP\\Black\\MPFEGameStartMessages.cpp"
#define MPFE_GAME_START_MESSAGES_LINE(line) (line)
#endif

#define MPFE_START_GAME_READY_YES L'Y'
#define MPFE_START_GAME_READY_NO  L'N'

MPFEStartGameOkayToStartMessage::MPFEStartGameOkayToStartMessage()
{
	Message = new (MPFE_GAME_START_MESSAGES_FILE, MPFE_GAME_START_MESSAGES_LINE(11)) wchar_t[10];
	swprintf(Message, L"%c", GetMessageCode(SPECIAL_MESSAGE_TYPE_START_GAME_OKAY_TO_START));
}

void MPFEStartGameOkayToStartMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (from->IsHost)
	{
		if (MPFEData::Data.D_GotSelectedMapFile() && MPFEData::Data.CurrentChannel->MapID != 0)
		{
			MPFEStartGameReadyMessage ready(MPFE_START_GAME_READY_YES);
			MPFEData::Data.D2A_ClientWaitStart();
			ready.Send(from);
		}
		else
		{
			MPFEStartGameReadyMessage ready(MPFE_START_GAME_READY_NO);
			ready.Send(from);
			MPFEData::Data.D2A_CouldNotStartBecauseIAmDownloading();
		}
	}
}

MPFEStartGameReadyMessage::MPFEStartGameReadyMessage(wchar_t answer)
{
	Message = new (MPFE_GAME_START_MESSAGES_FILE, MPFE_GAME_START_MESSAGES_LINE(41)) wchar_t[60];
	uint64_t checksum;
	if (answer == MPFE_START_GAME_READY_YES)
	{
		checksum = MPFEData::Data.GetMapChecksum(MPFEData::Data.CurrentChannel->MapID);
	}
	swprintf(Message, L"%c%c%I64u", GetMessageCode(SPECIAL_MESSAGE_TYPE_START_GAME_READY), answer, checksum);
}

void MPFEStartGameReadyMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (!MPFEData::Data.StartGameRequested && !MPFEData::Data.GetLocalPlayer()->IsHost)
	{
		return;
	}
	if (!MPFEData::Data.GetLocalPlayer()->IsHost)
	{
		return;
	}
	if (!MPFEData::Data.PlayersAwaitingStartReply.Contains(from))
	{
		return;
	}
	MPFEData::Data.PlayersAwaitingStartReply.Remove(from);

	uint64_t checksum;
	swscanf(message + 1, L"%I64u", &checksum);
	if (message[0] == MPFE_START_GAME_READY_YES)
	{
		if (checksum != MPFEData::Data.MapChecksum && MPFEData::Data.StartGameRequested)
		{
			MPFEKickMessageRequest kick(from);
			MPFEKickMessageRequest::ProcessIncoming(kick.Message + 1, MPFEData::Data.GetLocalPlayer());
			MPFEKickMessageRequest kickAgain(from);
			MPFEKickMessageRequest::ProcessIncoming(kickAgain.Message + 1, MPFEData::Data.GetLocalPlayer());
			MPFEData::Data.Layer->KickPlayerFromChannel(from);
			MPFEData::Data.StartGameRequested = false;
			MPFEData::Data.PlayersAwaitingStartReply.RemoveAll();
			MPFECancelStartMessage cancel;
#ifndef VERSION_BW1W100
			MPFEData::Data.Layer->SetInvite(false);
#endif
			cancel.Send(NULL);
		}
		else if (MPFEData::Data.PlayersAwaitingStartReply.count == 0)
		{
#ifndef VERSION_BW1W100
			MPFEData::Data.Layer->LockChannel(true);
#endif
			MPFEStartGameTransferFilesMessage transfer;
			transfer.Send(NULL);
			MPFEStartGameTransferFilesMessage::ProcessIncoming(NULL, MPFEData::Data.GetLocalPlayer());
		}
	}
	else if (message[0] == MPFE_START_GAME_READY_NO)
	{
		if (MPFEData::Data.StartGameRequested)
		{
			MPFEData::Data.StartGameRequested = false;
			MPFEData::Data.PlayersAwaitingStartReply.RemoveAll();
			MPFEData::Data.D2A_CouldNotStartBecauseOtherPeopleDownloading();
			MPFECancelStartMessage cancel;
#ifndef VERSION_BW1W100
			MPFEData::Data.GetLayer()->SetInvite(false);
#endif
			cancel.Send(NULL);
		}
	}
}

MPFEStartGameTransferFilesMessage::MPFEStartGameTransferFilesMessage()
{
	Message = new (MPFE_GAME_START_MESSAGES_FILE, MPFE_GAME_START_MESSAGES_LINE(106)) wchar_t[10];
	swprintf(Message, L"%c", GetMessageCode(SPECIAL_MESSAGE_TYPE_START_GAME_TRANSFER_FILES));
}

void MPFEStartGameTransferFilesMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	MPFEData::Data.TransferringFiles = true;
	if (MPFEData::Data.GetLocalPlayer()->IsTeamLeader && MPFEData::Data.GetLocalPlayer()->Team != 0)
	{
		MPFEData::Data.D_SendOutPlayerProfile();
	}
	for (int team = 1; team < MPFEData::MAX_TEAMS; team++)
	{
		if (MPFEData::Data.Teams[team].GetSize() != 0)
		{
			MPFEPlayerDetails* leader = MPFEData::Data.Teams[team].GetHead()->GetData();
			if (leader != NULL)
			{
				MPFEData::Data.PlayersTransferringFiles.Add(leader);
			}
		}
	}
	MPFEData::Data.D2A_TransferringFiles();
}

MPFEStartGameNowMessage::MPFEStartGameNowMessage(wchar_t* name)
{
	Message = new (MPFE_GAME_START_MESSAGES_FILE, MPFE_GAME_START_MESSAGES_LINE(135)) wchar_t[100];
	swprintf(Message, L"%c%s", GetMessageCode(SPECIAL_MESSAGE_TYPE_START_GAME_NOW), name);
}

void MPFEStartGameNowMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	wchar_t name[100];
	MPFEData::Data.GameStarting = true;
	swscanf(message, L"%s", name);
	MPFEData::Data.D_StartGameSession(LHSPrintf("%s", ENCODE_NAME(name)));
	if (LHNetBase::Instance.WaitUntilGameLoopStarted() == -1)
	{
		MPFEData::Data.GameStarting = false;
		GGame::g_game->QuitGameAndGoIntoNetworkLobby();
		return;
	}
	MPFEData::Data.D_DecodeFilesAndSetupPlayersForSession();
	FrontEnd::InMultiplayerScreens = false;
	FrontEnd::MultiplayerGameRunning = true;
	MPFEData::Data.GameStarting = true;
	MPFEConnectionStatus::Status.StartGame();
}

MPFEDisconnectNowMessage::MPFEDisconnectNowMessage()
{
	Message = new (MPFE_GAME_START_MESSAGES_FILE, MPFE_GAME_START_MESSAGES_LINE(165)) wchar_t[10];
	swprintf(Message, L"%c", GetMessageCode(SPECIAL_MESSAGE_TYPE_DISCONNECT_NOW));
}

#ifndef VERSION_BW1W100
void MPFEDisconnectNowMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	MPFEData::Data.Layer->LeaveGameChannel();
}
#endif

MPFEStopGameStartMessage::MPFEStopGameStartMessage()
{
	Message = new (MPFE_GAME_START_MESSAGES_FILE, MPFE_GAME_START_MESSAGES_LINE(178)) wchar_t[10];
	swprintf(Message, L"%c", GetMessageCode(SPECIAL_MESSAGE_TYPE_STOP_GAME_START));
}

void MPFEStopGameStartMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (from->IsHost)
	{
		MPFEData::Data.ActiveDialog->Requesters.DeleteAll();
		MPFEData::Data.ActiveDialog->setup_box->SetOffHold();
		MPFEData::Data.PlayersTransferringFiles.DeleteAll();
		MPFEData::Data.StartGameRequested = false;
#ifndef VERSION_BW1W100
		MPFEData::Data.TransferringFiles = false;
		if (!BWGameSpy::Locked)
		{
			MPFEData::Data.Layer->LockChannel(false);
		}
#endif
		for (uint32_t team = 1; team < MPFEData::MAX_TEAMS; team++)
		{
			MPFEData::Data.FileTransfers[team].Reset();
		}
	}
}
