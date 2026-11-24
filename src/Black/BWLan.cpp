#include <winsock2.h> /* First, as <ddraw.h> in LH3DText.h includes <windows.h> */

#include "BWLan.h"

#include <string.h> /* For strlen */
#include <wchar.h>  /* For wcslen */

#include <chlasm/HelpTextEnums.h>                              /* For HELP_TEXT_DIALOG_ROOMPASSWORD */
#include <Lionhead/LH3DLib/development/LH3DText.h>             /* For WCHAR2CHAR, CHAR2WCHAR */
#include <Lionhead/LHLib/ver5.0/LHLinkedListIterator.h>        /* For LHLinkedListIterator */
#include <Lionhead/LHLog/ver4.0/LHVersion.h>                   /* For LHVersion::GetModuleChecksum */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>                   /* For LHSPrintf, LHSPrintfW */
#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h>             /* For LHLobby */
#include <Lionhead/LHMultiplayer/ver4.0/LHMPServerStartInfo.h> /* For LHMPServerStartInfo */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetErrors.h>         /* For LH_NET_LOG_ERROR_ALREADY_CONNECTED */
#include <Lionhead/LHMultiplayer/ver4.0/LHPlayer.h>            /* For LHPlayer */
#include <Lionhead/LHMultiplayer/ver4.0/LHSocket.h>            /* For LHSocket */

#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"

#include "alexmfc.h"               /* For SetupBox */
#include "ChannelBox.h"            /* For ChannelBox */
#include "DialogBoxBase.h"         /* For DialogBoxBase */
#include "FrontEnd.h"              /* For FrontEnd::ChannelDialog */
#include "GSFunctions.h"           /* For GSFunctions */
#include "HelpText.h"              /* For HelpTextDataBase */
#include "IpSpecialDialog.h"       /* For IPSpecialDialog */
#include "LHNetBase.h"             /* For class LHNetBase */
#include "MPFEChannelDetails.h"    /* For MPFEChannelDetails */
#include "MPFEChannelSelector.h"   /* For MPFEChannelSelector */
#include "MPFEConditionMessages.h" /* For GetInfoFileChecksum */
#include "MPFEData.h"              /* For MPFEData */
#include "MPFEMessageObject.h"     /* For MPFEMessageObject */
#include "MPFELogin.h"             /* For LOBBY_MESSAGE_BOX_NONE */
#include "MPFEPlayerDetails.h"     /* For MPFEPlayerDetails */
#include "TextConversion.h"        /* For TextConversion */

BWLan BWLan::Instance;

static bool EnteringRoom = false;

void BWLan::Process()
{
	Think();
}

void BWLan::SendMessageA(wchar_t* message, bool private_message, MPFEPlayerDetails* player)
{
	char* text = LHSPrintf("%s", ENCODE_NAME(message));
	if (private_message)
	{
		if (player != NULL)
		{
			LHNetBase::Instance.Channel->ChatOnChannel(text, strlen(text) + 1, player->DatabaseID, false);
		}
	}
	else
	{
		LHNetBase::Instance.Channel->ChatOnChannel(text, strlen(text) + 1, 0, false);
	}
}

void BWLan::SendMessageA(const char* message, bool private_message, MPFEPlayerDetails* player)
{
	if (private_message)
	{
		if (player != NULL)
		{
			LHNetBase::Instance.Channel->ChatOnChannel((void*)message, strlen(message) + 1, player->DatabaseID, false);
		}
	}
	else
	{
		LHNetBase::Instance.Channel->ChatOnChannel((void*)message, strlen(message) + 1, 0, false);
	}
}

void BWLan::LeaveGameChannel()
{
	MPFEData::Data.Reset();
	if (LHNetBase::Instance.Channel != NULL)
	{
		if (LHNetBase::Instance.RemoteLobby->Open)
		{
			LHLobbyChannel* channel = LHNetBase::Instance.RemoteLobby->FindChannel((char*)LH_CHANNEL_DEFAULT_NAME);
			LHNetBase::Instance.RemoteLobby->LeaveChannel(channel);
			LHNetBase::Instance.Channel = NULL;
			LHNetBase::Instance.RemoteLobby->Close();
		}
		else
		{
			if (!LHNetBase::Instance.Lobby->Open)
			{
				return;
			}
			LHNetBase::Instance.Lobby->BootOtherUsersOffChannel((char*)LH_CHANNEL_DEFAULT_NAME);
			MPFEData::Data.IsHost = false;
			delete MPFEData::Data.CurrentChannel;
			MPFEData::Data.CurrentChannel = NULL;
		}
	}
	if (FrontEnd::ChannelDialog->IsVisible())
	{
		DialogBoxBase::Hide();
	}
}

void BWLan::LeaveMainRoom()
{
	Disconnect();
}

void BWLan::BeginPlayerEnumeration()
{
	LHLinkedList<LHPlayer*>* players = LHNetBase::Instance.Channel->GetPlayerList();
	LHPlayer*                host = players->GetLast();
	int                      count = 0;
	for (LHLinkedListIterator<LHPlayer*> it(*players); it.MoreToDo(); it++)
	{
		MPFEData::Data.D_EnumeratingPlayersAdd(LHSPrintf("%s", ENCODE_NAME(it.Get()->GetName())), it.Get() == host,
		                                       it.Get()->GetUserID());
		count++;
	}
	MPFEData::Data.D_FinishedPlayerEnumeration(count);
}

bool BWLan::Connect()
{
	MPFEData::Data.LocalPlayerID = NO_PLAYER_ID;
	LHSocket::Startup();
	char hostName[0x80];
	gethostname(hostName, sizeof(hostName));
	LHSocket::Startup();
	LHNetBase::Instance.Shutdown();
	if (LHNetBase::Instance.User->Login(hostName, NULL) != LH_OK)
	{
		Connected = false;
		return false;
	}
	LHNetBase::UpdateUserData();
	MPFEData::InfoFileChecksum2 = GetInfoFileChecksum2();
	MPFEData::InfoFileChecksum = GetInfoFileChecksum();
	wcscpy(MPFEData::Data.LocalPlayerName, LHNetBase::Instance.User->GetName());
	MPFEData::Data.LocalPlayerID = LHNetBase::Instance.User->GetID();
	LHMPServerStartInfo info;
	info.ListenerAddress = &LH_LIONHEAD_DEFAULT_LISTNER_ADDRESS;
	info.User = LHNetBase::Instance.User;
	LH_LIONHEAD_DEFAULT_LISTNER_ADDRESS.Set(BW_LAN_LISTENER_PORT);
	if (LHNetBase::Instance.Lobby->OpenLocalLobby(&info) != LH_OK)
	{
		Connected = false;
		return false;
	}
	if (InitialiseLobbyState())
	{
		Connected = true;
	}
	return true;
}

void BWLan::Think()
{
	if (!Connected)
	{
		return;
	}
	static bool thinking = false;
	if (thinking)
	{
		return;
	}
	thinking = true;
	while (true)
	{
		LHNetEvent* event = NULL;
		bool        remote = false;
		if (LHNetBase::Instance.RemoteLobby->Open)
		{
			if (LHNetBase::Instance.RemoteLobby->CheckForEvents())
			{
				event = LHNetBase::Instance.RemoteLobby->Read(0, LH_NETEVENT_TYPE_NONE);
			}
			remote = true;
		}
		else if (LHNetBase::Instance.Lobby->CheckForEvents())
		{
			event = LHNetBase::Instance.Lobby->Read(0, LH_NETEVENT_TYPE_NONE);
		}
		if (event == NULL)
		{
			break;
		}
		switch (event->GetType())
		{
		case LH_NETEVENT_TYPE_INTERNAL_LOBBY_NEW_LOCAL_LOBBY_LIST: {
			wchar_t selected[0x100];
			wcscpy(selected, L"");
			if (MPFEChannelSelector::Instance.ChannelList->SelectedIndex >= 0)
			{
				wcscpy(selected, (wchar_t*)MPFEChannelSelector::Instance.ChannelList->GetItemData(
									 MPFEChannelSelector::Instance.ChannelList->SelectedIndex));
			}
			MPFEChannelSelector::Instance.RemoveAllChannels();
			for (LHLocalLobbyInfo* info = LHLobby::GetNextLocalLobby(NULL); info != NULL;
			     info = LHLobby::GetNextLocalLobby(info))
			{
#if defined(VERSION_BW1W100)
				MPFEChannelSelector::Instance.AddChannel(
					LHSPrintfW(L"%s", DECODE_NAME(info->Name)), LHLobby::GetNumberOfPlayersOnDefaultChannel(info),
					info->GameStarted == true, LHVersion::GetModuleChecksum(), false, NULL, info, NULL);
#else
				MPFEChannelSelector::Instance.AddChannel(LHSPrintfW(L"%s", DECODE_NAME(info->Name)),
				                                         LHLobby::GetNumberOfPlayersOnDefaultChannel(info),
				                                         info->GameStarted == true, LHVersion::GetModuleChecksum(),
				                                         false, NULL, info, NULL, MPFE_MAX_PLAYERS_UNKNOWN);
#endif
			}
			if (wcscmp(selected, L"") != 0)
			{
				for (int i = 0; i < MPFEChannelSelector::Instance.ChannelList->NumItems; i++)
				{
					if (wcscmp(selected, (wchar_t*)MPFEChannelSelector::Instance.ChannelList->GetItemData(i)) == 0)
					{
						MPFEChannelSelector::Instance.ChannelList->SelectedIndex = i;
						break;
					}
				}
			}
			break;
		}
		case LH_NETEVENT_TYPE_LOBBY_CHAT_ON_CHANNEL: {
			if (MPFEData::Data.CurrentChannel == NULL)
			{
				thinking = false;
				return;
			}
			LHLobbyChannel* channel;
			LHPlayer*       player;
			bool32_t        isPrivate;
			void*           data;
			unsigned long   length;
			if (remote)
			{
				LHNetBase::Instance.RemoteLobby->GetChatOnChannelInfo(event, &channel, &player, &data, &isPrivate);
				LHNetBase::Instance.RemoteLobby->GetChatDataLength(event, &length);
			}
			else
			{
				LHNetBase::Instance.Lobby->GetChatOnChannelInfo(event, &channel, &player, &data, &isPrivate);
				LHNetBase::Instance.Lobby->GetChatDataLength(event, &length);
			}
			wchar_t*           message = NULL;
			MPFEPlayerDetails* sender = MPFEData::Data.GetPlayerDetailsFromName(player->GetName());
			if (sender != NULL && sender != MPFEData::Data.GetLocalPlayer())
			{
				message = NEW(243) wchar_t[length + 1];
				wcscpy(message, LHSPrintfW(L"%s", DECODE_NAME((char*)data)));
				MPFEMessageObject::ProcessIncomingMessage(message, sender, NULL);
			}
			if (message != NULL)
			{
				delete message;
			}
			break;
		}
		case LH_NETEVENT_TYPE_LOBBY_PLAYER_LIST: {
			bool alone = false;
			if (!remote)
			{
				alone = LHNetBase::Instance.Lobby->GetChannel(event)->GetSize() == 1;
			}
			if (!remote && alone)
			{
				if (MPFEData::Data.InGameChannel)
				{
					MPFEData::Data.A2D_LeaveGameChannel();
				}
				break;
			}
			if (remote)
			{
				LHNetBase::Instance.Channel = LHNetBase::Instance.RemoteLobby->GetChannel(event);
			}
			else
			{
				LHNetBase::Instance.Channel = LHNetBase::Instance.Lobby->GetChannel(event);
			}
			if (EnteringRoom)
			{
				thinking = false;
				return;
			}
			if (MPFEChannelSelector::Instance.OOSCheckBox->style == BBSTYLE_CHECK_BOX_ON)
			{
				MPFEData::OOSChecksum = MPFEData::Data.GetOOSChecksum();
			}
			else
			{
				MPFEData::OOSChecksum = 0;
			}
			if (MPFEData::Data.CurrentChannel == NULL)
			{
				if (remote)
				{
					break;
				}
				if (alone)
				{
					break;
				}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
				MPFEData::Data.ResetConditions();
#endif
				MPFEData::Data.IsHost = true;
#if defined(VERSION_BW1W100)
				MPFEData::Data.CurrentChannel = NEW(295) MPFEChannelDetails(
					LHSPrintfW(L"%s", DECODE_NAME(LHNetBase::Instance.Lobby->GetInternalLobbyName())), false, 0, false,
					NULL, LHVersion::GetModuleChecksum(), NULL);
#else
				MPFEData::Data.CurrentChannel = NEW(295) MPFEChannelDetails(
					LHSPrintfW(L"%s", DECODE_NAME(LHNetBase::Instance.Lobby->GetInternalLobbyName())), false, 0, false,
					NULL, LHVersion::GetModuleChecksum(), NULL, MPFE_MAX_PLAYERS_UNKNOWN);
#endif
				MPFEData::Data.IsOOSGame = MPFEChannelSelector::Instance.OOSCheckBox->style != BBSTYLE_CHECK_BOX_OFF;
				MPFEData::Data.CurrentChannel->NumTeams = MPFE_NEW_CHANNEL_NUM_TEAMS;
				wcscpy(MPFEData::Data.CurrentChannel->MapName,
				       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_91));
				MPFEData::Data.D_IJoinedRoom(MPFEData::Data.CurrentChannel->Name, true,
				                             LHNetBase::Instance.User->GetID());
			}
			LH_USER_ID      user;
			wchar_t*        name;
			LH_PLAYER_EVENT playerEvent;
			if (remote)
			{
				LHNetBase::Instance.RemoteLobby->GetLastJoinChannelInfo(&name, &playerEvent);
				user = LHNetBase::Instance.RemoteLobby->GetLastJoinUserID();
			}
			else
			{
				LHNetBase::Instance.Lobby->GetLastJoinChannelInfo(&name, &playerEvent);
				user = LHNetBase::Instance.Lobby->GetLastJoinUserID();
			}
			if (playerEvent == LH_PLAYER_EVENT_JOINED)
			{
				MPFEData::Data.D_PlayerJoined(LHSPrintf("%s", ENCODE_NAME(name)), user);
			}
			else if (MPFEData::Data.CurrentChannel != NULL)
			{
				MPFEData::Data.D_PlayerLeft(user, NULL);
			}
			if (!remote && alone)
			{
				LHNetBase::Instance.Channel = NULL;
				MPFEData::Data.A2D_LeaveGameChannel();
			}
			break;
		}
		case LH_NETEVENT_TYPE_LOBBY_GREETING:
			if (!remote)
			{
				LHNetBase::Instance.Lobby->ConnectToChannel((char*)LH_CHANNEL_DEFAULT_NAME, NULL,
				                                            LH_NET_CHANNEL_MODE_GAME);
			}
			break;
		case LH_NETEVENT_TYPE_SERVER_ERROR: {
			long  code;
			char* text;
			if (event->VDecode(LH_NETEVENT_TYPE_SERVER_ERROR, &code, &text) != LH_OK)
			{
				break;
			}
			LHSPrintfW error(CHAR2WCHAR(text));
			if (remote)
			{
				if (MPFEData::Data.CurrentChannel != NULL)
				{
					LHNetBase::Instance.Channel = NULL;
					MPFEData::Data.A2D_LeaveGameChannel();
				}
				LHNetBase::Instance.RemoteLobby->Close();
			}
			if (code == LH_NET_LOG_ERROR_ALREADY_CONNECTED)
			{
				MPFEChannelSelector::Instance.setup_box->MessageBoxA(
					HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_ERROR_ALREADY_IN_ROOM),
					MSGBOXSTYLE_SINGLE_BUTTON, LOBBY_MESSAGE_BOX_NONE);
			}
			else
			{
				MPFEChannelSelector::Instance.setup_box->MessageBoxA(
					HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_41),
					MSGBOXSTYLE_SINGLE_BUTTON, LOBBY_MESSAGE_BOX_NONE);
			}
			break;
		}
		case LH_NETEVENT_TYPE_LOBBY_BROADCAST_CHAT: {
			LH_USER_ID    user;
			wchar_t*      name;
			unsigned long length;
			void*         data;
			if (event->VDecode(LH_NETEVENT_TYPE_LOBBY_BROADCAST_CHAT, &user, &name, &length, &data) != LH_OK)
			{
				break;
			}
			if (MPFEData::Data.CurrentChannel != NULL)
			{
				MPFEData::Data.D2A_IncomingChatString(name, (wchar_t*)data, false, false, true);
			}
			break;
		}
		case LH_NETEVENT_TYPE_REMOVE_CONNECTION:
			if (!remote)
			{
				break;
			}
		case LH_NETEVENT_TYPE_LOBBY_EJECTED_FROM_CHANNEL:
			LHNetBase::Instance.Channel = NULL;
			LHNetBase::Instance.RemoteLobby->Close();
			MPFEData::Data.A2D_LeaveGameChannel();
			break;
		}
	}
	thinking = false;
}

bool BWLan::InitialiseLobbyState()
{
	return true;
}

void BWLan::Disconnect()
{
	LHNetBase::Instance.Shutdown();
	Connected = false;
}

#ifndef VERSION_BW1W100
void BWLan::LockChannel(bool lock) {}

void BWLan::SetInvite(bool invite) {}
#endif

bool BWLan::EnterGameRoom(bool host, wchar_t* name)
{
	LHLocalLobbyInfo* info = MPFEData::Data.CurrentChannel->LobbyInfo;
	if (LHNetBase::Instance.RemoteLobby->OpenRemoteLobby(LHNetBase::Instance.User, &info->ConnectionAcceptor) == LH_OK)
	{
		if (LHNetBase::Instance.RemoteLobby->ConnectToChannel((char*)LH_CHANNEL_DEFAULT_NAME, NULL,
		                                                      LH_NET_CHANNEL_MODE_LOBBY) == LH_OK)
		{
			if (LHNetBase::Instance.RemoteLobby->RawPeek(BW_LAN_ENTER_ROOM_TIMEOUT,
			                                             LH_NETEVENT_TYPE_LOBBY_PLAYER_LIST) != NULL)
			{
				EnteringRoom = true;
				Think();
				MPFEData::Data.D_IJoinedRoom(name, host, LHNetBase::Instance.User->GetID());
				EnteringRoom = false;
				IPSpecialDialog::Instance->JoinedRoom = true;
				return true;
			}
		}
	}
	LHNetBase::Instance.RemoteLobby->Close();
	MPFEData::Data.CurrentChannel = NULL;
	MPFEChannelSelector::Instance.setup_box->MessageBoxA(
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_41), MSGBOXSTYLE_SINGLE_BUTTON,
		LOBBY_MESSAGE_BOX_NONE);
	return false;
}

void BWLan::PopulateChannelPlayers(MPFEChannelDetails* channel)
{
	LHLinkedList<LHPlayer*>* players = &channel->LobbyInfo->Players;
	bool                     first = true;
	LHLobby::GetNextLocalLobby(NULL);
	for (LHLinkedListIterator<LHPlayer*> it(*players); it.MoreToDo(); it++)
	{
		MPFEChannelSelector::Instance.AddPlayerToMiniList(it.Get()->GetName(), first);
		first = false;
	}
}

void BWLan::CreateOrJoinRoom(wchar_t* name, wchar_t* password, MPFEChannelDetails* channel)
{
	TextConversion nameText(name);
	TextConversion passwordText(password);
	if (channel != NULL && !MPFEData::Data.IsHost)
	{
		if (channel->HasPassword && wcslen(password) == 0)
		{
			MPFEChannelSelector::Instance.setup_box->MessageBoxA(
				HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ROOMPASSWORD),
				MSGBOXSTYLE_SINGLE_BUTTON, LOBBY_MESSAGE_BOX_NONE);
			MPFEData::Data.CurrentChannel = NULL;
			MPFEData::Data.IsHost = false;
		}
		else if (!EnterGameRoom(false, name))
		{
			MPFEData::Data.IsHost = false;
		}
	}
}

void BWLan::StartGame() {}

void BWLan::KickPlayerFromChannel(MPFEPlayerDetails* player) {}

void BWLan::BanPlayerInChannel(MPFEPlayerDetails* player) {}
