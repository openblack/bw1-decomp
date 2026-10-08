#define LH_MULTIPLAYER_EXPORTS
#include "LHLobbyServer.h"

#include <stdlib.h>
#include <string.h>
#include <windows.h>

#include <Lionhead/LHLog/ver4.0/LHLogger.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include <Lionhead/LHLog/ver4.0/LHVersion.h>

#include "LHConnection.h"
#include "LHLobby.h"
#include "LHMPServerStartInfo.h"
#include "LHNetErrors.h"
#include "LHNetEvent.h"
#include "LHNetTypes.h"
#include "LHNetUtils.h"
#include "LHPlayer.h"
#include "LHServerListener.h"
#include "LHTransportInfo.h"

void LHLobbyServer::ClearAllData()
{
	LocalLobbyList.DeleteAll();
	ChannelList.RemoveAll();
	ServerName[0] = '\0';
	field_0x450 = 0;
	field_0x454 = 0;
	OffLan = false;
}

LH_RETURN LHLobbyServer::Start(LHMPServerStartInfo* start_info, LH_OPERATING_MODE mode, LHConnection* parent_connection)
{
	field_0x454 = start_info->field_0x10;
	// TODO: LHMPServerStartInfo.h calls +0x14 BroadcastInfo, but it is passed as the acceptor here and
	// ListenerAddress (+0x4) as the broadcast listener; one of the two names is wrong.
	LH_USER_ID::CATEGORY category =
		start_info->IsGlobalServer ? LH_USER_ID::CATEGORY_GLOBAL_SERVER : LH_USER_ID::CATEGORY_SESSION_SERVER;
	if (LHConnectionServer::Start(start_info, start_info->BroadcastInfo, start_info->ListenerAddress, category, mode,
	                              parent_connection, 15000, 0xffffffff) != LH_OK)
	{
		Shutdown();
		return LH_FAIL;
	}

	if (start_info->ServerName != NULL)
		strncpy(ServerName, start_info->ServerName, sizeof(ServerName));
	Timer.Start();
	UnsolicitedProcessing = TRUE;
	return WaitUntilStarted();
}

void LHLobbyServer::Shutdown()
{
	if (Mode != LH_OPERATING_MODE_NONE)
	{
		if (Mode == LH_OPERATING_MODE_ASYNCHRONOUS && Listener != NULL)
			BroadcastShutdown(false);
		LocalLobbyList.DeleteAll();
		ClearAllData();
	}
}

void LHLobbyServer::TakeServerOffLan()
{
	OffLan = true;
	BroadcastShutdown(true);
}

void LHLobbyServer::PutServerOnLan()
{
	OffLan = false;
	BroadcastAddressInformation(NULL, true);
}

// TODO: 88.7%. The target reloads Listener for the outer BroadcastEvent and fetches its vtable
// separately from the inner GetConnectionAcceptorInfo call's; cl here shares one vtable load. Same
// residual as ProcessInternalServerStart; locals, casts and the inline LHConnectionServer helpers
// do not reproduce it.
void LHLobbyServer::BroadcastShutdown(bool force)
{
	if (Listener != NULL && (force || !OffLan))
	{
		Listener->BroadcastEvent(LHNetEvent::VCreate(LH_NETEVENT_TYPE_BROADCAST_LOBBY_SHUTDOWN, GetUserID(),
		                                             Listener->GetConnectionAcceptorInfo()),
		                         NULL);
	}
}

LH_RETURN LHLobbyServer::SendEventCopyToAllPlayersOnChannel(LHLobbyServerChannel* channel, LHNetEvent* event)
{
	if (event == NULL)
		return LH_ERROR;
	if (channel == NULL)
		return LH_ERROR;
	for (LHLinkedNode<LHPlayer*>* node = channel->Players.GetStart(); node != NULL; node = node->next.Get())
		SendEventCopyToPlayer((LHServerPlayer*)node->payload, event);
	return LH_OK;
}

LH_RETURN LHLobbyServer::SendEventCopyToAllPlayersOnChannelExceptOne(LHLobbyServerChannel* channel, LHNetEvent* event,
                                                                     LHServerPlayer* except_player)
{
	if (event == NULL)
		return LH_ERROR;
	if (channel == NULL)
		return LH_ERROR;
	for (LHLinkedNode<LHPlayer*>* node = channel->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload != except_player)
			SendEventCopyToPlayer((LHServerPlayer*)node->payload, event);
	}
	return LH_OK;
}

LH_RETURN LHLobbyServer::SendEventCopyToAllRunningPlayersOnChannel(LHLobbyServerChannel* channel, LHNetEvent* event)
{
	if (event == NULL)
		return LH_ERROR;
	if (channel == NULL)
		return LH_ERROR;
	for (LHLinkedNode<LHPlayer*>* node = channel->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		if (channel->GetSysInfo(node->payload)->GameRunning)
			SendEventCopyToPlayer((LHServerPlayer*)node->payload, event);
	}
	return LH_OK;
}

LH_RETURN LHLobbyServer::SendGreeting(LHConnection* connection)
{
	LHServerPlayer* player = GetConnectedPlayer(connection);
	return connection->Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_GREETING, GetUserID(), ServerName,
	                                             ChannelList.count, GetProtocolVersion(), player->ProtocolVersion));
}

// Byte-identical to the target (checked against the DLL), but dtk splits the target symbol at the
// jump-table labels lbl_1000F657..lbl_1000F85C, so objdiff cannot pair it yet (requests.md).
LH_RETURN LHLobbyServer::ProcessEvent(LHConnection* connection, LHNetEvent* event)
{
	if (event == NULL)
		return LH_ERROR;

	if (connection == NULL || connection->ConnectionOriented())
	{
		long type = event->GetType();
		switch (type)
		{
		case LH_NETEVENT_TYPE_INTERNAL_SERVER_START:
			return ProcessInternalServerStart();
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_SEND_CODE_CHECKSUM:
			return ProcessLobbyClientSendCodeChecksum(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_REQUEST_CHANNEL_LIST:
			return ProcessLobbyClientRequestChannelList(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_JOIN_CHANNEL:
			return ProcessLobbyClientJoinChannel(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_LEAVE_CHANNEL:
			return ProcessLobbyClientLeaveChannel(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_REQUEST_CHANNEL_USERS:
			return ProcessLobbyClientRequestChannelUsers(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_CHAT_ON_CHANNEL:
			return ProcessLobbyClientChatOnChannel(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_START_GAME:
			return ProcessLobbyClientStartGame(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_REQUEST:
			return ProcessLobbyClientMGJRequest(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_RESPONSE:
			return ProcessLobbyClientMGJResponse(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_USER_FILE:
			return ProcessLobbyClientUserFile(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_ERROR:
			return ProcessLobbyClientError(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_COMPLETE:
			return ProcessLobbyClientMGJComplete(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_START_MSERVE_RESULT:
			return ProcessLobbyClientStartMServeResult(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_EVENT_BROADCAST:
			return ProcessLobbyClientEventBroadcast(event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_BOOT_OTHER_USERS:
			return ProcessLobbyClientBootOtherUsers(connection, event);
		default:
			return LH_FAIL;
		}
	}

	// Connectionless broadcasts from other lobbies on the LAN.
	long type = event->GetType();
	switch (type)
	{
	case LH_NETEVENT_TYPE_LOBBY_BROADCAST_CHAT:
	case LH_NETEVENT_TYPE_LOBBY_BROADCAST_PING_REPLY:
		return SendBroadcastMessageToInternalLobby(event);
	case LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS_REQUEST:
		if (LHLobby::GameRunning)
			return LH_OK;
		return ProcessBroadcastLobbyAddressRequest(event);
	case LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS:
		if (LHLobby::GameRunning)
			return LH_OK;
		return ProcessBroadcastLobbyAddress(event);
	case LH_NETEVENT_TYPE_BROADCAST_LOBBY_SHUTDOWN:
		if (LHLobby::GameRunning)
			return LH_OK;
		return ProcessBroadcastLobbyShutdown(event);
	default:
		return LH_OK;
	}
}

// TODO: 97.3%; see BroadcastShutdown (the outer BroadcastEvent's vtable comes from a copy of the
// Listener register in the target).
LH_RETURN LHLobbyServer::ProcessInternalServerStart()
{
	if (Mode == LH_OPERATING_MODE_ASYNCHRONOUS && Listener != NULL)
	{
		Listener->BroadcastEvent(LHNetEvent::VCreate(LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS_REQUEST, GetUserID(),
		                                             Listener->GetBroadcastListenerInfo()),
		                         NULL);
		Sleep(600);
		Listener->DoProcessing(-3);
	}

	if (ServerName[0] == '\0')
	{
		DWORD size = sizeof(ServerName) - 1;
		if (!GetComputerNameA(ServerName, &size))
			return LH_FAIL;

		// Make the name unique among the lobbies already seen on the LAN.
		unsigned long suffix = 1;
		unsigned long length = strlen(ServerName);
		while (FindLocalLobby(ServerName) != NULL && suffix < 10)
		{
			ServerName[length] = '1' + suffix;
			ServerName[length + 1] = '\0';
			suffix++;
		}
	}

	FinishStartup();
	return LH_OK;
}

LH_RETURN LHLobbyServer::RemoveConnection(LHConnection* connection)
{
	LHServerPlayer* player = GetConnectedPlayer(connection);

restart:
	for (LHLinkedNode<LHLobbyServerChannel*>* node = ChannelList.GetStart(); node != NULL; node = node->next.Get())
	{
		LHLobbyServerChannel* channel = node->payload;
		// A removed player can delete the channel, so the walk starts over.
		if (channel->GetPlayerList()->IsThisInList(player) && RemovePlayerFromChannel(player, channel))
			goto restart;
	}
	return LH_OK;
}

int LHLobbyServer::RemovePlayerFromChannel(LHServerPlayer* player, LHLobbyServerChannel* channel)
{
	char name[sizeof(channel->Name)];
	int  deleted = FALSE;

	strcpy(name, channel->Name);
	channel->RemovePlayer(player);
	if (channel->Players.count == 0)
	{
		ChannelList.Remove(channel);
		delete channel;
		deleted = TRUE;
	}
	else
	{
		LHNetEvent* event =
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_PLAYER_LIST, GetUserID(), name, player->GetUserID(), 1,
		                        &channel->Players, (unsigned char)channel->MServeStarted);
		SendEventCopyToAllPlayersOnChannel(channel, event);
		delete event;
		CheckMGJStatus(channel, NULL);
	}

	if (strcmp(name, LH_CHANNEL_DEFAULT_NAME) == 0)
		BroadcastAddressInformation(NULL, false);
	return deleted;
}

void LHLobbyServer::CheckMGJStatus(LHLobbyServerChannel* channel, LHNetEvent* event)
{
	char*           message;
	LH_MGJ_RESPONSE response;

	if (channel->MGJInProgress())
	{
		LH_USER_ID user_id;
		LHPlayer*  mgjPlayer = channel->GetPlayer(channel->MGJUser);
		if (mgjPlayer != NULL && channel->GetSysInfo(mgjPlayer) != NULL)
		{
			LHConnection* connection = channel->GetSysInfo(mgjPlayer)->Connection;

			if (event != NULL)
				channel->ProcessMGJResponse(event, &message);
			// The target tests the response against NONE twice (je, then jle).
			if (channel->CheckMGJResponseComplete(&response, &user_id) == LH_OK && response != LH_MGJ_RESPONSE_NONE &&
			    response > LH_MGJ_RESPONSE_NONE && response <= LH_MGJ_RESPONSE_ACCEPTED)
			{
				connection->Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_MGJ_STATUS, GetUserID(), channel->Name,
				                                      user_id, response, message));
				if (response == LH_MGJ_RESPONSE_ACCEPTED)
					SendMGJConnect(channel);
			}
		}
	}
}

void LHLobbyServer::SendMGJConnect(LHLobbyServerChannel* channel)
{
	LHNetEvent* event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CONNECT_TO_MSERVE, GetUserID(), channel->Name,
	                                        LH_ALL_USERS.Number, &channel->TransportInfo, channel->MServeName, 1,
	                                        channel->GetGameDataLength(), channel->GetGameData());
	channel->SendEventCopyToMGJUser(event);
	delete event;
}

LH_RETURN LHLobbyServer::ProcessBroadcastLobbyAddressRequest(LHNetEvent* event)
{
	LHTransportInfo transportInfo;

	if (event->VDecode(LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS_REQUEST, &transportInfo) != LH_OK)
		return LH_FAIL;

	// Spread the replies of every lobby on the LAN.
	srand(GetTickCount());
	Sleep(rand() % 200);
	BroadcastAddressInformation(event->GetUDPinfo(), false);
	return LH_OK;
}

// TODO: 91.1%, inline budget: the target keeps both LHTransportInfo::ClearAllData calls of the inlined
// LHLocalLobbyInfo() constructor as calls; cl inlines the first one here. The rest matches.
// The new-lobby/updated-lobby flow follows the Mac body.
LH_RETURN LHLobbyServer::ProcessBroadcastLobbyAddress(LHNetEvent* event)
{
	LHLocalLobbyInfo     info;
	LH_LOBBYSERVER_EVENT lobbyEvent = LH_LOBBYSERVER_EVENT_UPDATED;

	if (event->VDecode(LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS, &info) != LH_OK)
		return LH_FAIL;

	// Ignore our own broadcast.
	if (info.ConnectionAcceptor.Compare(GetConnectionAcceptorInfo()) != 0)
	{
		LHLocalLobbyInfo* newLobby;
		LHLocalLobbyInfo* lobby = LHNetFindLocalLobby(&LocalLobbyList, &info.ConnectionAcceptor);
		if (lobby == NULL)
		{
			newLobby = new LHLocalLobbyInfo(&info);
			LocalLobbyList.Add(newLobby);
			lobbyEvent = LH_LOBBYSERVER_EVENT_ADDED;
		}
		if (lobby == NULL || lobby->UpdateLocalLobbyInfoDetails(&info))
		{
			if (lobby == NULL)
				lobby = newLobby;
			SendInternalLocalLobbyMessage(lobby, lobbyEvent);
		}
	}
	return LH_OK;
}

void LHLobbyServer::SendToInternalConnectedPlayerIfPresent(LHNetEvent* event)
{
	if (event != NULL)
	{
		if (ParentConnection->GetNetUser()->GetID().Number == GetUserID().Number)
		{
			if (ParentConnection != NULL)
				ParentConnection->AddToIncomingEventQ(event);
		}
	}
}

LHLocalLobbyInfo* LHLobbyServer::FindLocalLobby(char* name)
{
	for (LHLinkedNode<LHLocalLobbyInfo*>* node = LocalLobbyList.GetStart(); node != NULL; node = node->next.Get())
	{
		LHLocalLobbyInfo* lobby = node->payload;
		if (strcmp(name, lobby->Name) == 0)
			return lobby;
	}
	return NULL;
}

LH_RETURN LHLobbyServer::ProcessLobbyClientEventBroadcast(LHNetEvent* event)
{
	LHNetEvent*     broadcast;
	LHTransportInfo transportInfo;

	if (event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_EVENT_BROADCAST, &broadcast, &transportInfo) != LH_OK)
		return LH_FAIL;
	if (Listener != NULL)
		return Listener->BroadcastEvent(broadcast, &transportInfo);
	return LH_OK;
}

LH_RETURN LHLobbyServer::SendBroadcastMessageToInternalLobby(LHNetEvent* event)
{
	LHNetEvent* copy = LHNetEvent::CreateFromEvent(event);
	copy->SetUDPinfo(event->GetUDPinfo());
	SendToInternalConnectedPlayerIfPresent(copy);
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessBroadcastLobbyShutdown(LHNetEvent* event)
{
	LHTransportInfo transportInfo;

	if (event->VDecode(LH_NETEVENT_TYPE_BROADCAST_LOBBY_SHUTDOWN, &transportInfo) != LH_OK)
		return LH_FAIL;

	LHLocalLobbyInfo* lobby = LHNetFindLocalLobby(&LocalLobbyList, &transportInfo);
	if (lobby != NULL)
	{
		LockSharedDataStructures();
		LocalLobbyList.Remove(lobby);
		UnlockSharedDataStructures();
		SendInternalLocalLobbyMessage(lobby, LH_LOBBYSERVER_EVENT_REMOVED);
	}
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessLobbyClientJoinChannel(LHConnection* connection, LHNetEvent* event)
{
	char*         name;
	unsigned char runsMessageServer;
	unsigned long field_3; // TODO: unknown decoded value
	char*         password;
	unsigned long field_5; // TODO: unknown decoded value
	char*         userFile;

	if (event->GetUserID() != connection->GetConnectedUserID())
		return LH_ERROR;

	event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_JOIN_CHANNEL, &name, &runsMessageServer, &field_3, &password, &field_5,
	               &userFile);

	// A global server only hosts named channels.
	if (strcmp(name, LH_CHANNEL_DEFAULT_NAME) == 0 && GetUserID().IsType(LH_USER_ID::CATEGORY_GLOBAL_SERVER))
	{
		return connection->Write(
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_ERROR, GetUserID(), LHLogger::GetCode(), LHLogger::GetText()));
	}

	GetConnectedPlayer(connection)->RunsMessageServer = runsMessageServer;
	LHLobbyServerChannel* channel = LHLobbyServerChannel::FindOrCreateChannel(name, &ChannelList, password);
	if (channel == NULL)
		return LH_FAIL;

	LHServerPlayer* player = GetConnectedPlayer(connection);
	player->SetUserFile(userFile);
	LHLobbyServerSysInfo* info = (LHLobbyServerSysInfo*)player->AllocSystemData(sizeof(LHLobbyServerSysInfo));
	LHLobbyServerSysInfo* sysInfo = channel->GetSysInfo(player);
	sysInfo->MGJResponse = LH_MGJ_RESPONSE_NONE;
	sysInfo->Connection = NULL;
	sysInfo->GameRunning = FALSE;
	sysInfo->FileTransferComplete = FALSE;
	info->Connection = connection;

	if (!GetUserID().IsType(LH_USER_ID::CATEGORY_GLOBAL_SERVER) && LHLobby::OpenLobbyCount > 1)
	{
		return connection->Write(
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_ERROR, GetUserID(), LHLogger::GetCode(), LHLogger::GetText()));
	}
	if (channel->AddPlayer(GetConnectedPlayer(connection), password) != LH_OK)
	{
		return connection->Write(
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_ERROR, GetUserID(), LHLogger::GetCode(), LHLogger::GetText()));
	}

	LHNetEvent* playerList = LHNetEvent::VCreate(
		LH_NETEVENT_TYPE_LOBBY_PLAYER_LIST, GetUserID(), name, connection->GetConnectedUserID(), 0,
		LHLobbyServerChannel::FindChannel(name, &ChannelList)->GetPlayerList(), channel->MServeStarted);
	SendEventCopyToAllPlayersOnChannel(channel, playerList);
	delete playerList;
	if (strcmp(name, LH_CHANNEL_DEFAULT_NAME) == 0)
		BroadcastAddressInformation(NULL, false);
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessLobbyClientBootOtherUsers(LHConnection* connection, LHNetEvent* event)
{
	LHLobbyServerChannel* channel = FindChannel(event->GetChannelName());
	LHServerPlayer*       booter = GetConnectedPlayer(connection);

	if (channel == NULL)
		return LH_OK;

restart:
	for (LHLinkedNode<LHPlayer*>* node = channel->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHServerPlayer* player = (LHServerPlayer*)node->payload;
		if (player->GetUserID() != booter->GetUserID())
		{
			LHConnection* playerConnection = GetPlayerConnection(player);
			if (playerConnection != NULL)
			{
				playerConnection->Write(
					LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_EJECTED_FROM_CHANNEL, GetUserID(), channel->Name));
			}
			RemovePlayerFromChannel(player, channel);
			goto restart;
		}
	}
	return LH_OK;
}

LHConnection* LHLobbyServer::GetPlayerConnection(LHServerPlayer* player)
{
	LHLobbyServerSysInfo* info = (LHLobbyServerSysInfo*)player->SystemData;
	if (info != NULL && info->Connection != NULL)
		return info->Connection;
	return NULL;
}

LH_RETURN LHLobbyServer::BroadcastAddressInformation(LHTransportInfo* destination, bool force)
{
	if (Listener == NULL)
		return LH_OK;
	if (!force && OffLan)
		return LH_OK;

	// TODO: the default channel's player list is fetched and dropped; Mac does the same.
	LHLinkedList<LHPlayer*>* players = NULL;
	if (FindDefaultChannel() != NULL)
		players = FindDefaultChannel()->GetPlayerList();

	LHLobbyServerChannel* channel = FindChannel((char*)LH_CHANNEL_DEFAULT_NAME);
	int                   mserveStarted = channel != NULL ? channel->MServeStarted : 0;
	LHLocalLobbyInfo      info(ServerName, GetConnectionAcceptorInfo(), GetBroadcastListenerInfo(),
	                           FindDefaultChannelPlayers(), (LH_USER_ID::CATEGORY)GetUserID().Category, mserveStarted);

	LHNetEvent* event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS, GetUserID(), &info);
	PurgeLocalLobbyList();
	return Listener->BroadcastEvent(event, destination);
}

// Matches; only the Timer relocations are named lbl_10069568.. instead of LHLocalLobbyInfo::Timer+0x100..
LH_RETURN LHLobbyServer::PurgeLocalLobbyList()
{
restart:
	for (LHLinkedNode<LHLocalLobbyInfo*>* node = LocalLobbyList.GetStart(); node != NULL; node = node->next.Get())
	{
		LHLocalLobbyInfo* lobby = node->payload;
		// Lobbies that have not broadcast for 30 seconds are gone.
		if ((unsigned long)(LHLocalLobbyInfo::Timer.MSeconds() - lobby->LastHeardTime) > 30000)
		{
			LocalLobbyList.Remove(lobby);
			SendInternalLocalLobbyMessage(lobby, LH_LOBBYSERVER_EVENT_REMOVED);
			delete lobby;
			goto restart;
		}
	}
	return LH_OK;
}

LH_RETURN LHLobbyServer::SendInternalLocalLobbyMessage(LHLocalLobbyInfo* lobby, LH_LOBBYSERVER_EVENT lobby_event)
{
	SendToInternalConnectedPlayerIfPresent(LHNetEvent::VCreate(LH_NETEVENT_TYPE_INTERNAL_LOBBY_NEW_LOCAL_LOBBY_LIST,
	                                                           GetUserID(), (unsigned char)lobby_event, lobby));
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessLobbyClientLeaveChannel(LHConnection* connection, LHNetEvent* event)
{
	if (event->GetChannelName() == NULL)
		return LH_FAIL;
	if (event->GetUserID() != connection->GetConnectedUserID())
		return LH_ERROR;

	LHLobbyServerChannel* channel = FindChannel(event->GetChannelName());
	if (channel == NULL)
		return LH_FAIL;

	if (channel->GetSysInfo(GetConnectedPlayer(connection))->GameRunning)
	{
		connection->Write(
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_ERROR, GetUserID(), LHLogger::GetCode(), LHLogger::GetText()));
	}
	RemovePlayerFromChannel(GetConnectedPlayer(connection), channel);
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessLobbyClientSendCodeChecksum(LHConnection* connection, LHNetEvent* event)
{
	LHServerPlayer* player = GetConnectedPlayer(connection);
	char*           checksum;

	if (event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_SEND_CODE_CHECKSUM, &player->field_0x200, &checksum) != LH_OK)
		return LH_FAIL;
	player->SetCodeChecksumString(checksum);
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessLobbyClientChatOnChannel(LHConnection* connection, LHNetEvent* event)
{
	char*         name;
	void*         data;
	unsigned long length;
	unsigned char flags; // TODO: meaning unknown

	LHLobbyServerChannel* channel = FindChannel(event->GetChannelName());
	if (channel == NULL)
		return LH_FAIL;

	LH_USER_ID from;
	LH_USER_ID to;

	if (event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_CHAT_ON_CHANNEL, &name, &from, &data, &length, &to, &flags) !=
	    LH_OK)
		return LH_FAIL;
	if (from != connection->GetConnectedUserID())
		return LH_FAIL;
	if (strcmp(name, event->GetChannelName()) != 0)
		return LH_FAIL;

	LHNetEvent* chat = LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CHAT_ON_CHANNEL, event->GetUserID(), name, from, data,
	                                       length, to != 0, flags);
	LHPlayer*   player = channel->GetPlayer(to);
	if (to.IsValid() && player != NULL)
		SendEventCopyToPlayer((LHServerPlayer*)player, chat);
	else
		SendEventCopyToAllPlayersOnChannel(channel, chat);
	delete chat;
	return LH_OK;
}

// TODO: 85.2%. The target keeps the two `return LH_FAIL` exits as separate epilogues; cl merges
// them into one tail (the known residual from LHConnectionServer.cpp).
LH_RETURN LHLobbyServer::ProcessLobbyClientStartMServeResult(LHConnection* connection, LHNetEvent* event)
{
	char*           channelName;
	int             started;
	LHTransportInfo transportInfo;
	char*           mserveName;
	int             field_5; // TODO: unknown decoded value

	if (event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_START_MSERVE_RESULT, &channelName, &started, &transportInfo,
	                   &mserveName, &field_5) != LH_OK)
		return LH_FAIL;

	LHLobbyServerChannel* channel = FindChannel(channelName);
	if (channel == NULL || channel->Players.count <= 0)
		return LH_FAIL;

	if (mserveName != NULL)
		strncpy(channel->MServeName, mserveName, sizeof(channel->MServeName));

	if (started)
	{
		channel->StartGameHouseKeeping(&transportInfo, &NetUser);
		LHNetEvent* connect =
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CONNECT_TO_MSERVE, GetUserID(), event->GetChannelName(),
		                        GetConnectedPlayer(connection)->GetUserID().Number, &transportInfo, channel->MServeName,
		                        0, channel->GetGameDataLength(), channel->GetGameData());
		SendEventCopyToAllPlayersOnChannel(channel, connect);
		delete connect;
		if (channel->Players.count == 1 && field_5 == 1)
		{
			connection->Write(
				LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_USER_FILES_TRANSFER_COMPLETE, GetUserID(), channel->Name));
		}
		return LH_OK;
	}

	GetConnectedPlayer(connection)->field_0x214 = 1;
	return StartMServe(channelName, channel->MServeID, NULL);
}

LH_RETURN LHLobbyServer::ProcessLobbyClientStartGame(LHConnection* connection, LHNetEvent* event)
{
	char*         channelName;
	LH_USER_ID    user_id;
	unsigned long mserveID;
	unsigned long length;
	void*         data;

	event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_START_GAME, &channelName, &user_id, &mserveID, &length, &data);
	LHLobbyServerChannel* channel = FindChannel(channelName);
	if (length != 0)
		channel->SetGameData(length, data);
	if (channel == NULL)
		return LH_FAIL;

	VerifyCodeChecksums(channel);
	return StartMServe(channelName, mserveID, connection);
}

LH_RETURN LHLobbyServer::ProcessLobbyClientMGJRequest(LHConnection* connection, LHNetEvent* event)
{
	unsigned long field_1; // TODO: unknown decoded value
	int           askPlayers;

	LHLobbyServerChannel* channel = FindChannel(event->GetChannelName());
	if (event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_REQUEST, &field_1, &askPlayers) != LH_OK)
		return LH_ERROR;

	if (channel == NULL || !channel->MServeStarted || channel->TransportInfo.type == LH_TRANSPORT_TYPE_BASE ||
	    channel->TransportInfo.type == LH_TRANSPORT_TYPE_SYNC)
	{
		connection->Write(
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_ERROR, GetUserID(), LHLogger::GetCode(), LHLogger::GetText()));
		return LH_OK;
	}

	if (channel->MGJInProgress())
	{
		connection->Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_MGJ_REQUEST_REFUSED, GetUserID(), channel->Name));
		return LH_OK;
	}

	channel->SetMGJInProgress(event->GetUserID());
	if (askPlayers)
	{
		// Ask the players already in the game before letting the new one in.
		LHServerPlayer* player = GetConnectedPlayer(connection);
		LHNetEvent*     request = LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_MGJ_REQUEST, GetUserID(),
		                                              event->GetChannelName(), player->GetUserID(), player->GetName());
		SendEventCopyToAllRunningPlayersOnChannel(channel, request);
		delete request;
		return LH_OK;
	}

	SendMGJConnect(channel);
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessLobbyClientMGJComplete(LHConnection* connection, LHNetEvent* event)
{
	LHLobbyServerChannel* channel = FindChannel(event->GetChannelName());
	if (channel == NULL)
		return LH_FAIL;
	channel->ClearMGJInProgress();
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessLobbyClientMGJResponse(LHConnection* connection, LHNetEvent* event)
{
	LHLobbyServerChannel* channel = FindChannel(event->GetChannelName());
	if (channel == NULL)
	{
		connection->Write(
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_ERROR, GetUserID(), LHLogger::GetCode(), LHLogger::GetText()));
		return LH_OK;
	}
	if (!channel->MServeStarted)
	{
		connection->Write(
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_ERROR, GetUserID(), LHLogger::GetCode(), LHLogger::GetText()));
		return LH_OK;
	}
	if (!channel->MGJInProgress())
	{
		connection->Write(
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_ERROR, GetUserID(), LHLogger::GetCode(), LHLogger::GetText()));
		return LH_OK;
	}

	CheckMGJStatus(channel, event);
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessLobbyClientError(LHConnection* connection, LHNetEvent* event)
{
	unsigned long field_1; // TODO: unknown decoded value
	unsigned long error;
	unsigned long field_3; // TODO: unknown decoded value

	LHLobbyServerChannel* channel = FindChannel(event->GetChannelName());
	if (event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_ERROR, &field_1, &error, &field_3) != LH_OK)
		return LH_FAIL;

	// TODO: 14 is an unnamed client error code.
	if (channel->MGJInProgress() && error == 14)
	{
		channel->ClearMGJInProgress();
		LHNetEvent* failed =
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_ERROR, GetUserID(), LHLogger::GetCode(), LHLogger::GetText());
		channel->SendEventCopyToMGJUser(failed);
		delete failed;
	}
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessLobbyClientUserFile(LHConnection* connection, LHNetEvent* event)
{
	LHNetEvent*           copy = LHNetEvent::CreateFromEvent(event);
	LHLobbyServerChannel* channel = FindChannel(event->GetChannelName());
	copy->SetPacketHeader(LH_NETEVENT_TYPE_LOBBY_USER_FILE, GetUserID());

	LHLobbyServerSysInfo* info = channel->GetSysInfo(GetConnectedPlayer(connection));
	if (info == NULL)
		return LH_ERROR;
	info->FileTransferComplete = TRUE;

	if (channel->MGJInProgress())
	{
		if (connection->GetConnectedUserID() == channel->MGJUser)
			SendEventCopyToAllRunningPlayersOnChannel(channel, copy);
		else
			channel->SendEventCopyToMGJUser(copy);
	}
	else
	{
		SendEventCopyToAllPlayersOnChannelExceptOne(channel, copy, GetConnectedPlayer(connection));
	}
	delete copy;

	if (channel->CheckGameFileTransferComplete())
		SendFileTransferComplete(channel);
	return LH_OK;
}

// The channel loops walk the players with LHChannel::GetNextPlayer (inline, exported copy at
// 10002350); Mac calls LHLinkedList<LHPlayer*>::FindNext directly, but only the extra inline level
// reproduces the target's unfolded NULL test in each loop step.
// TODO: 97.2%. One register choice differs (the inlined GetNextPlayer result lands in edx and is
// copied to esi). Mac returns 0 from inside the loop; the break form is closer to the target's
// block layout.
int LHLobbyServerChannel::CheckGameFileTransferComplete()
{
	int complete = TRUE;
	for (LHPlayer* player = GetNextPlayer(NULL); player != NULL; player = GetNextPlayer(player))
	{
		if (player->GetUserID().IsType(LH_USER_ID::CATEGORY_PLAYER) && !GetSysInfo(player)->FileTransferComplete)
		{
			complete = FALSE;
			break;
		}
	}
	return complete;
}

LH_RETURN LHLobbyServer::SendFileTransferComplete(LHLobbyServerChannel* channel)
{
	LHNetEvent* event =
		LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_USER_FILES_TRANSFER_COMPLETE, GetUserID(), channel->Name);
	if (channel->MGJInProgress())
		channel->SendEventCopyToMGJUser(event);
	else
		SendEventCopyToAllPlayersOnChannel(channel, event);
	delete event;
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessLobbyClientRequestChannelList(LHConnection* connection, LHNetEvent* event)
{
	unsigned long options; // TODO: name guessed

	event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_REQUEST_CHANNEL_LIST, &options);
	connection->Write(
		LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CHANNEL_LIST_INFO, GetUserID(), &ChannelList, 0, options));
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessLobbyClientRequestChannelUsers(LHConnection* connection, LHNetEvent* event)
{
	connection->Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CHANNEL_USERS, GetUserID(), event->GetChannelName(),
	                                      GetPlayerList(FindChannel(event->GetChannelName()))));
	return LH_OK;
}

void LHLobbyServer::VerifyCodeChecksums(LHLobbyServerChannel* channel)
{
	LHLinkedList<LHServerPlayer*>* players = (LHLinkedList<LHServerPlayer*>*)channel->GetPlayerList();
	if (players != NULL)
	{
		unsigned long checksum = players->GetHead()->field_0x200;
		int           mismatch = FALSE;
		for (LHLinkedNode<LHServerPlayer*>* node = players->GetStart(); node != NULL; node = node->next.Get())
		{
			if (node->payload->field_0x200 != checksum)
			{
				mismatch = TRUE;
				break;
			}
		}

		if (mismatch)
		{
			LHSPrintf text;
			for (LHLinkedNode<LHServerPlayer*>* node = players->GetStart(); node != NULL; node = node->next.Get())
				text.AppendString("%s %s\n", node->payload->name, node->payload->CodeChecksumString);

			LHNetEvent* event =
				LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_VERIFY_CODE_CHECKSUMS, GetUserID(), channel->Name, &text);
			SendEventCopyToAllPlayersOnChannel(channel, event);
			delete event;
		}
	}
}

LHTransportInfo* LHLobbyServer::GetLocalLobbyTransportInfo(char* name)
{
	LockSharedDataStructures();
	LHLocalLobbyInfo* lobby = FindLocalLobby(name);
	UnlockSharedDataStructures();
	if (lobby != NULL)
		return &lobby->ConnectionAcceptor;
	return NULL;
}

LHLocalLobbyInfo* LHLobbyServer::GetNextLocalLobby(LHLocalLobbyInfo* lobby)
{
	if (LocalLobbyList.count == 0)
		return NULL;
	for (LHLinkedNode<LHLocalLobbyInfo*>* node = LocalLobbyList.GetStart(); node != NULL; node = node->next.Get())
	{
		LHLocalLobbyInfo* current = node->payload;
		if (lobby == NULL)
			return current;
		if (lobby == current)
		{
			node = node->next.Get();
			if (node != NULL)
				return node->payload;
			return NULL;
		}
	}
	return NULL;
}

LH_RETURN LHLobbyServer::StartMServe(char* channel_name, unsigned long mserve_id, LHConnection* connection)
{
	LHLobbyServerChannel* channel = FindChannel(channel_name);
	if (channel == NULL)
		return LH_ERROR;
	if (channel->MServeStarted)
		return LH_FAIL;
	if (channel->Players.count <= 0)
		return LH_FAIL;

	channel->MServeID = mserve_id;
	channel->MServeStarted = TRUE;
	BroadcastAddressInformation(NULL, false);

	if (channel->Players.count == 1)
	{
		// A lone player hosts the MServe itself.
		LHServerPlayer* host = (LHServerPlayer*)channel->GetNextPlayer(NULL);
		if (host->field_0x214)
			return LH_ERROR;
		LHNetEvent* event =
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_START_MSERVE, GetUserID(), channel_name, mserve_id, 1);
		SendEventCopyToPlayer(host, event);
		delete event;
	}
	else
	{
		LHServerPlayer* host = GetConnectedPlayer(connection);
		LHNetEvent*     event =
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_START_MSERVE, GetUserID(), channel_name, mserve_id, 2);
		SendEventCopyToPlayer(host, event);
		delete event;
	}
	return LH_OK;
}

void LHLobbyServer::DoUnsolicitedProcessing()
{
	BroadcastAddressInformation(NULL, false);
}

void LHLobbyServerChannel::ClearAllData()
{
	LHChannel::ClearAllData();
	MServeStarted = FALSE;
	MGJUser = LH_ALL_USERS;
	MServeID = 0xffffffff;
	memset(MServeName, 0, sizeof(MServeName));
}

LH_RETURN LHLobbyServerChannel::SendEventCopyToMGJUser(LHNetEvent* event)
{
	if (!MGJInProgress())
		return LH_FAIL;
	LHPlayer* player = GetPlayer(MGJUser);
	if (player == NULL)
		return LH_ERROR;
	return GetSysInfo(player)->Connection->Write(LHNetEvent::CreateFromEvent(event));
}

LHLobbyServerChannel* LHLobbyServerChannel::FindOrCreateChannel(char* name, LHLinkedList<LHLobbyServerChannel*>* list,
                                                                char* password)
{
	LHLobbyServerChannel* channel = FindChannel(name, list);
	if (channel == NULL)
	{
		channel = new LHLobbyServerChannel();
		channel->SetName(name);
		if (password != NULL && strlen(password) != 0)
			channel->SetPassword(password);
		list->Add(channel);
	}
	return channel;
}

int LHLobbyServerChannel::MGJInProgress()
{
	return MGJUser.IsValid();
}

void LHLobbyServerChannel::StartGameHouseKeeping(LHTransportInfo* transport_info, LHNetUser* user)
{
	for (LHPlayer* player = GetNextPlayer(NULL); player != NULL; player = GetNextPlayer(player))
		GetSysInfo(player)->GameRunning = TRUE;
	TransportInfo = *transport_info;
}

void LHLobbyServerChannel::SetMGJInProgress(LH_USER_ID user_id)
{
	MGJUser = user_id;
	for (LHPlayer* player = GetNextPlayer(NULL); player != NULL; player = GetNextPlayer(player))
	{
		LHLobbyServerSysInfo* info = GetSysInfo(player);
		if (info == NULL)
			return;
		if (info->GameRunning == TRUE)
		{
			info->MGJResponse = LH_MGJ_RESPONSE_NONE;
			info->FileTransferComplete = FALSE;
		}
	}
}

void LHLobbyServerChannel::ClearMGJInProgress()
{
	MGJUser = LH_ALL_USERS;
	for (LHPlayer* player = GetNextPlayer(NULL); player != NULL; player = GetNextPlayer(player))
	{
		LHLobbyServerSysInfo* info = GetSysInfo(player);
		if (info == NULL)
			return;
		info->MGJResponse = LH_MGJ_RESPONSE_NONE;
		info->FileTransferComplete = FALSE;
	}
}

LH_RETURN LHLobbyServerChannel::ProcessMGJResponse(LHNetEvent* event, char** message)
{
	char*         channelName;
	unsigned long field_2; // TODO: unknown decoded value
	unsigned char accepted;

	if (MGJInProgress())
	{
		field_2 = 0;
		if (event->GetType() != LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_RESPONSE)
			return LH_ERROR;
		event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_RESPONSE, &channelName, &field_2, &accepted, message);

		for (LHPlayer* player = GetNextPlayer(NULL); player != NULL; player = GetNextPlayer(player))
		{
			LHLobbyServerSysInfo* info = GetSysInfo(player);
			if (info == NULL)
				return LH_ERROR;
			if (player->GetUserID() == event->GetUserID())
			{
				info->MGJResponse = accepted ? LH_MGJ_RESPONSE_ACCEPTED : LH_MGJ_RESPONSE_REFUSED;
				return LH_OK;
			}
		}
	}
	return LH_OK;
}

// TODO: 79.1%. Same instructions, different block order: the target places the `default` and
// REFUSED exits before the code after the loop. Case order and early-return forms do not move them.
LH_RETURN LHLobbyServerChannel::CheckMGJResponseComplete(LH_MGJ_RESPONSE* response, LH_USER_ID* user_id)
{
	int waiting = FALSE;

	if (!MGJInProgress())
		return LH_OK;

	for (LHPlayer* player = GetNextPlayer(NULL); player != NULL; player = GetNextPlayer(player))
	{
		LHLobbyServerSysInfo* info = GetSysInfo(player);
		if (info->GameRunning)
		{
			switch (info->MGJResponse)
			{
			case LH_MGJ_RESPONSE_NONE:
				*user_id = LH_USER_ID(0xffffffff);
				*response = LH_MGJ_RESPONSE_NONE;
				waiting = TRUE;
				break;
			case LH_MGJ_RESPONSE_REFUSED:
				*user_id = player->GetUserID();
				*response = LH_MGJ_RESPONSE_REFUSED;
				ClearMGJInProgress();
				return LH_OK;
			case LH_MGJ_RESPONSE_ACCEPTED:
				break;
			default:
				return LH_ERROR;
			}
		}
	}

	if (!waiting)
	{
		*user_id = LH_USER_ID(0xffffffff);
		*response = LH_MGJ_RESPONSE_ACCEPTED;
	}
	return LH_OK;
}

LHLobbyServerChannel* LHLobbyServerChannel::Create()
{
	return new LHLobbyServerChannel();
}

unsigned long LHLobbyServerChannel::GetEncodedLength(unsigned long options, void* context)
{
	unsigned long length = LHChannel::GetEncodedLength(options, context);
	if (length == 0)
		return 0;
	return length + 1;
}

unsigned char* LHLobbyServerChannel::EncodeToBuffer(unsigned char* buffer, unsigned long options, void* context)
{
	unsigned char* start = buffer;
	buffer = LHChannel::EncodeToBuffer(buffer, options, context);
	if (buffer > start)
		*buffer++ = (unsigned char)MServeStarted;
	return buffer;
}

unsigned char* LHLobbyServerChannel::DecodeFromBuffer(unsigned char* buffer)
{
	buffer = LHChannel::DecodeFromBuffer(buffer);
	MServeStarted = *buffer++;
	return buffer;
}

void LHLobbyServerChannel::ClearObject()
{
	ClearAllData();
}

unsigned long LHLobbyServer::GetProtocolVersion()
{
	return GetLobbyProtocolVersion();
}

unsigned long LHLobbyServer::GetLobbyProtocolVersion()
{
	unsigned long version;
	return LHVersion::GetMajorMinorULONG("LHLobbyServerProtocol", &version) == LH_OK ? version : 0;
}

// Registers the lobby server protocol version ("LHLobbyServerProtocol" 1.0) with LHLogR.dll;
// GetLobbyProtocolVersion() reads it back through LHVersion::GetMajorMinorULONG. Same
// block/object/pointer triple as LHConnection.cpp.
// TODO: names fabricated; Windows only (the Mac build has no version blocks). Nothing reads VersionPointer.
// The object's name must hash into a lower cl .bss bucket than LH_ALL_USERS so that it is laid out
// first, as in the target ("VersionInformation" is bucket 3).
static LHVersionBlock VersionBlock = {
	"YyHhTtMm",
	"RELEASE",
	"LHLobbyServerProtocol",
	"1",
	"0",
	"$Author: Trance $",
	"$Date: 19/01/01 18:17 $",
	"NULL",
	"The first stab at a Lobby server protocol",
	"NULL",
	"NULL",
	"",
	"YyHhTtMM",
};
static LHVersion  VersionInformation(&VersionBlock);
static LHVersion* VersionPointer = &VersionInformation;
