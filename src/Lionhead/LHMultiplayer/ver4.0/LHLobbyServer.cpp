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
#include "LHNetLog.h"
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
	Reserved = 0;
	UserData = 0;
	OffLan = false;
}

LH_RETURN LHLobbyServer::Start(LHMPServerStartInfo* start_info, LH_OPERATING_MODE mode, LHConnection* parent_connection)
{
	UserData = start_info->UserData;
	LH_USER_ID::CATEGORY category =
		start_info->IsGlobalServer ? LH_USER_ID::CATEGORY_GLOBAL_SERVER : LH_USER_ID::CATEGORY_LOBBY_SERVER;
	if (LHConnectionServer::Start(start_info, start_info->BroadcastInfo, start_info->ListenerAddress, category, mode,
	                              parent_connection, LH_LOBBYSERVER_IDLE_TIME, THREAD_PRIORITY_BELOW_NORMAL) != LH_OK)
	{
		Shutdown();
		return LH_FAIL;
	}

	if (start_info->ServerName != NULL)
		strncpy(ServerName, start_info->ServerName, sizeof(ServerName));
	Timer.Start();
	UnsolicitedProcessing = true;
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

void LHLobbyServer::BroadcastShutdown(bool force)
{
	if (Listener != NULL && (force || !OffLan))
	{
		Listener->BroadcastEvent(
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_BROADCAST_LOBBY_SHUTDOWN, GetUserID(), GetConnectionAcceptorInfo()),
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
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_BOOT_OTHER_USERS:
			return ProcessLobbyClientBootOtherUsers(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_RESPONSE:
			return ProcessLobbyClientMGJResponse(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_USER_FILE:
			return ProcessLobbyClientUserFile(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_START_MSERVE_RESULT:
			return ProcessLobbyClientStartMServeResult(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_COMPLETE:
			return ProcessLobbyClientMGJComplete(connection, event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_EVENT_BROADCAST:
			return ProcessLobbyClientEventBroadcast(event);
		case LH_NETEVENT_TYPE_LOBBY_CLIENT_ERROR:
			return ProcessLobbyClientError(connection, event);
		default:
			return LH_FAIL;
		}
	}

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

LH_RETURN LHLobbyServer::ProcessInternalServerStart()
{
	if (Mode == LH_OPERATING_MODE_ASYNCHRONOUS && Listener != NULL)
	{
		Listener->BroadcastEvent(LHNetEvent::VCreate(LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS_REQUEST, GetUserID(),
		                                             GetBroadcastListenerInfo()),
		                         NULL);
		Sleep(LH_LOBBYSERVER_ADDRESS_REQUEST_WAIT);
		Listener->DoProcessing(LH_SERVER_SIGNAL_BROADCAST);
	}

	if (ServerName[0] == '\0')
	{
		DWORD size = sizeof(ServerName) - 1;
		if (!GetComputerNameA(ServerName, &size))
			return LH_FAIL;

		unsigned long suffix = 1;
		unsigned long length = strlen(ServerName);
		while (FindLocalLobby(ServerName) != NULL && suffix < LH_LOBBYSERVER_MAX_NAME_SUFFIXES)
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
		if (channel->GetPlayerList()->IsThisInList(player) && RemovePlayerFromChannel(player, channel))
			goto restart;
	}
	return LH_OK;
}

bool32_t LHLobbyServer::RemovePlayerFromChannel(LHServerPlayer* player, LHLobbyServerChannel* channel)
{
	char     name[sizeof(channel->Name)];
	bool32_t deleted = false;

	strcpy(name, channel->Name);
	channel->RemovePlayer(player);
	if (channel->Players.count == 0)
	{
		ChannelList.Remove(channel);
		delete channel;
		deleted = true;
	}
	else
	{
		LHNetEvent* event =
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_PLAYER_LIST, GetUserID(), name, player->GetUserID(),
		                        LH_PLAYER_EVENT_LEFT, &channel->Players, (unsigned char)channel->MServeStarted);
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
	                                        LH_ALL_USERS.Number, &channel->TransportInfo, channel->MServeName, true,
	                                        channel->GetGameDataLength(), channel->GetGameData());
	channel->SendEventCopyToMGJUser(event);
	delete event;
}

LH_RETURN LHLobbyServer::ProcessBroadcastLobbyAddressRequest(LHNetEvent* event)
{
	LHTransportInfo transportInfo;

	if (event->VDecode(LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS_REQUEST, &transportInfo) != LH_OK)
		return LH_FAIL;

	srand(GetTickCount());
	Sleep(rand() % LH_LOBBYSERVER_MAX_ADDRESS_REPLY_DELAY);
	BroadcastAddressInformation(event->GetUDPinfo(), false);
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessBroadcastLobbyAddress(LHNetEvent* event)
{
	LHLocalLobbyInfo     info;
	LH_LOBBYSERVER_EVENT lobbyEvent = LH_LOBBYSERVER_EVENT_UPDATED;

	if (event->VDecode(LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS, &info) != LH_OK)
		return LH_FAIL;

	if (info.ConnectionAcceptor.Compare(GetConnectionAcceptorInfo()) != 0)
	{
		LHLocalLobbyInfo* newLobby;
		LHLocalLobbyInfo* lobby = FindLocalLobby(&info.ConnectionAcceptor);
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

	LHLocalLobbyInfo* lobby = FindLocalLobby(&transportInfo);
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
	char*               name;
	unsigned char       runsMessageServer;
	wchar_t*            userName;
	char*               password;
	LH_NET_CHANNEL_MODE mode;
	char*               userFile;

	if (event->GetUserID() != connection->GetConnectedUserID())
		return LH_ERROR;

	event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_JOIN_CHANNEL, &name, &runsMessageServer, &userName, &password, &mode,
	               &userFile);

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
	sysInfo->GameRunning = false;
	sysInfo->FileTransferComplete = false;
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
		LH_NETEVENT_TYPE_LOBBY_PLAYER_LIST, GetUserID(), name, connection->GetConnectedUserID(), LH_PLAYER_EVENT_JOINED,
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

	LHLinkedList<LHPlayer*>* players = NULL;
	if (FindDefaultChannel() != NULL)
		players = FindDefaultChannel()->GetPlayerList();

	LHLobbyServerChannel* channel = FindChannel((char*)LH_CHANNEL_DEFAULT_NAME);
	bool32_t              mserveStarted = channel != NULL ? channel->MServeStarted : false;
	LHLocalLobbyInfo      info(ServerName, GetConnectionAcceptorInfo(), GetBroadcastListenerInfo(),
	                           FindDefaultChannelPlayers(), (LH_USER_ID::CATEGORY)GetUserID().Category, mserveStarted);

	LHNetEvent* event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS, GetUserID(), &info);
	PurgeLocalLobbyList();
	return Listener->BroadcastEvent(event, destination);
}

LH_RETURN LHLobbyServer::PurgeLocalLobbyList()
{
restart:
	for (LHLinkedNode<LHLocalLobbyInfo*>* node = LocalLobbyList.GetStart(); node != NULL; node = node->next.Get())
	{
		LHLocalLobbyInfo* lobby = node->payload;
		if ((unsigned long)(LHLocalLobbyInfo::Timer.MSeconds() - lobby->LastHeardTime) >
		    LH_LOBBYSERVER_LOCAL_LOBBY_TIMEOUT)
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

	if (event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_SEND_CODE_CHECKSUM, &player->CodeChecksum, &checksum) != LH_OK)
		return LH_FAIL;
	player->SetCodeChecksumString(checksum);
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessLobbyClientChatOnChannel(LHConnection* connection, LHNetEvent* event)
{
	char*         name;
	unsigned long length;
	void*         data;
	unsigned char flag;

	LHLobbyServerChannel* channel = FindChannel(event->GetChannelName());
	if (channel == NULL)
		return LH_FAIL;

	LH_USER_ID from;
	LH_USER_ID to;

	if (event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_CHAT_ON_CHANNEL, &name, &from, &length, &data, &to, &flag) !=
	    LH_OK)
		return LH_FAIL;
	if (from != connection->GetConnectedUserID())
		return LH_FAIL;
	if (strcmp(name, event->GetChannelName()) != 0)
		return LH_FAIL;

	LHNetEvent* chat = LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CHAT_ON_CHANNEL, event->GetUserID(), name, from,
	                                       length, data, to != 0, flag);
	LHPlayer*   player = channel->GetPlayer(to);
	if (to.IsValid() && player != NULL)
		SendEventCopyToPlayer((LHServerPlayer*)player, chat);
	else
		SendEventCopyToAllPlayersOnChannel(channel, chat);
	delete chat;
	return LH_OK;
}

LH_RETURN LHLobbyServer::ProcessLobbyClientStartMServeResult(LHConnection* connection, LHNetEvent* event)
{
	char*             channelName;
	bool32_t          started;
	LHTransportInfo   transportInfo;
	char*             mserveName;
	LH_OPERATING_MODE mode;

	if (event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_START_MSERVE_RESULT, &channelName, &started, &transportInfo,
	                   &mserveName, &mode) != LH_OK)
		return LH_FAIL;

	LHLobbyServerChannel* channel = FindChannel(channelName);
	if ((channel != NULL && channel->Players.count > 0) == false)
		return LH_FAIL;

	if (mserveName != NULL)
		strncpy(channel->MServeName, mserveName, sizeof(channel->MServeName));

	if (started)
	{
		channel->StartGameHouseKeeping(&transportInfo, &NetUser);
		LHNetEvent* connect =
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CONNECT_TO_MSERVE, GetUserID(), event->GetChannelName(),
		                        GetConnectedPlayer(connection)->GetUserID().Number, &transportInfo, channel->MServeName,
		                        false, channel->GetGameDataLength(), channel->GetGameData());
		SendEventCopyToAllPlayersOnChannel(channel, connect);
		delete connect;
		if (channel->Players.count == 1 && mode == LH_OPERATING_MODE_SYNCHRONOUS)
		{
			connection->Write(
				LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_USER_FILES_TRANSFER_COMPLETE, GetUserID(), channel->Name));
		}
		return LH_OK;
	}

	GetConnectedPlayer(connection)->MServeStartFailed = true;
	return StartMServe(channelName, channel->MServeIdleTime, NULL);
}

LH_RETURN LHLobbyServer::ProcessLobbyClientStartGame(LHConnection* connection, LHNetEvent* event)
{
	char*         channelName;
	LH_USER_ID    userID;
	unsigned long idleTime;
	unsigned long length;
	void*         data;

	event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_START_GAME, &channelName, &userID, &idleTime, &length, &data);
	LHLobbyServerChannel* channel = FindChannel(channelName);
	if (length != 0)
		channel->SetGameData(length, data);
	if (channel == NULL)
		return LH_FAIL;

	VerifyCodeChecksums(channel);
	return StartMServe(channelName, idleTime, connection);
}

LH_RETURN LHLobbyServer::ProcessLobbyClientMGJRequest(LHConnection* connection, LHNetEvent* event)
{
	char*    channelName;
	bool32_t askPlayers;

	LHLobbyServerChannel* channel = FindChannel(event->GetChannelName());
	if (event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_REQUEST, &channelName, &askPlayers) != LH_OK)
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
	char*         text;
	unsigned long error;
	char*         errorText;

	LHLobbyServerChannel* channel = FindChannel(event->GetChannelName());
	if (event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_ERROR, &text, &error, &errorText) != LH_OK)
		return LH_FAIL;

	if (channel->MGJInProgress() && error == LH_LOBBYSERVER_ERROR_GAME_CALLBACK_FAILED)
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
	info->FileTransferComplete = true;

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

bool32_t LHLobbyServerChannel::CheckGameFileTransferComplete()
{
	bool32_t complete = true;
	for (LHPlayer* player = GetNextPlayer(NULL); player != NULL; player = GetNextPlayer(player))
	{
		if (player->GetUserID().IsType(LH_USER_ID::CATEGORY_PLAYER) && !GetSysInfo(player)->FileTransferComplete)
		{
			complete = false;
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
	char* filter;

	event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_REQUEST_CHANNEL_LIST, &filter);
	connection->Write(
		LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CHANNEL_LIST_INFO, GetUserID(), &ChannelList, 0, filter));
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
		unsigned long checksum = players->GetHead()->CodeChecksum;
		bool32_t      mismatch = false;
		for (LHLinkedNode<LHServerPlayer*>* node = players->GetStart(); node != NULL; node = node->next.Get())
		{
			if (node->payload->CodeChecksum != checksum)
			{
				mismatch = true;
				break;
			}
		}

		if (mismatch)
		{
			LHSPrintf text;
			for (LHLinkedNode<LHServerPlayer*>* node = players->GetStart(); node != NULL; node = node->next.Get())
				text.AppendString("%s %s\n", node->payload->Name, node->payload->CodeChecksumString);

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

LH_RETURN LHLobbyServer::StartMServe(char* channel_name, unsigned long idle_time, LHConnection* connection)
{
	LHLobbyServerChannel* channel = FindChannel(channel_name);
	if (channel == NULL)
		return LH_ERROR;
	if (channel->MServeStarted)
		return LH_FAIL;
	if (channel->Players.count <= 0)
		return LH_FAIL;

	channel->MServeIdleTime = idle_time;
	channel->MServeStarted = true;
	BroadcastAddressInformation(NULL, false);

	if (channel->Players.count == 1)
	{
		LHServerPlayer* host = (LHServerPlayer*)channel->GetNextPlayer(NULL);
		if (host->MServeStartFailed)
			return LH_ERROR;
		LHNetEvent* event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_START_MSERVE, GetUserID(), channel_name,
		                                        idle_time, LH_OPERATING_MODE_SYNCHRONOUS);
		SendEventCopyToPlayer(host, event);
		delete event;
	}
	else
	{
		LHServerPlayer* host = GetConnectedPlayer(connection);
		LHNetEvent*     event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_START_MSERVE, GetUserID(), channel_name,
		                                            idle_time, LH_OPERATING_MODE_ASYNCHRONOUS);
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
	MServeStarted = false;
	MGJUser = LH_ALL_USERS;
	MServeIdleTime = -1;
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

bool32_t LHLobbyServerChannel::MGJInProgress()
{
	return MGJUser.IsValid();
}

void LHLobbyServerChannel::StartGameHouseKeeping(LHTransportInfo* transport_info, LHNetUser* user)
{
	for (LHPlayer* player = GetNextPlayer(NULL); player != NULL; player = GetNextPlayer(player))
		GetSysInfo(player)->GameRunning = true;
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
		if (info->GameRunning == true)
		{
			info->MGJResponse = LH_MGJ_RESPONSE_NONE;
			info->FileTransferComplete = false;
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
		info->FileTransferComplete = false;
	}
}

LH_RETURN LHLobbyServerChannel::ProcessMGJResponse(LHNetEvent* event, char** message)
{
	char*         channelName;
	unsigned long userID;
	unsigned char accepted;

	if (MGJInProgress())
	{
		userID = 0;
		if (event->GetType() != LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_RESPONSE)
			return LH_ERROR;
		event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_RESPONSE, &channelName, &userID, &accepted, message);

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

LH_RETURN LHLobbyServerChannel::CheckMGJResponseComplete(LH_MGJ_RESPONSE* response, LH_USER_ID* user_id)
{
	bool32_t waiting = false;

	if (!MGJInProgress())
		return LH_OK;

	LHPlayer* player = GetNextPlayer(NULL);
	if (player != NULL)
	{
		do
		{
			LHLobbyServerSysInfo* info = GetSysInfo(player);
			if (info->GameRunning)
			{
				switch (info->MGJResponse)
				{
				case LH_MGJ_RESPONSE_NONE:
					*user_id = LH_USER_ID(LH_ALL_USERS_ID);
					*response = LH_MGJ_RESPONSE_NONE;
					waiting = true;
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
			player = GetNextPlayer(player);
		} while (player != NULL);
	}

	if (!waiting)
	{
		*user_id = LH_USER_ID(LH_ALL_USERS_ID);
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

LH_VERSION_INFO("LHLobbyServerProtocol", "1", "0", "$Author: Trance $", "$Date: 19/01/01 18:17 $", LH_VERSION_NONE,
                "The first stab at a Lobby server protocol");
