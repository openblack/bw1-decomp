#define LH_MULTIPLAYER_EXPORTS
#include "LHLobby.h"

#include "LHSocket.h" /* Before <windows.h>: it includes <winsock2.h> */

#include <stdio.h>
#include <string.h>
#include <wchar.h>
#include <windows.h>

#include <Lionhead/LHLog/ver4.0/LHLogger.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include <Lionhead/LHLog/ver4.0/LHVersion.h>

#include "LHLobbyServer.h"
#include "LHMPServerStartInfo.h"
#include "LHSession.h" /* TODO: before LHMessageServer.h, see OOSInfo in LHSession.h */
#include "LHMessageServer.h"
#include "LHNetErrors.h"
#include "LHPlayer.h"
#include "LHServerListener.h"

// TODO: the TU also dynamically initialises a 4-byte .bss global (10068d90) from the last word of
// LHTransportInfo.cpp's LHVersionBlock (10062c90, a pointer to that TU's LHVersion object). Its
// declaration is unknown, and the source global would need an extern.

// Only its first two bytes are used as the UDP port (Mac, being big-endian, reads 0 from them).
// TODO: name and type fabricated; a 4-byte .data word at 10061660.
static unsigned long LobbyListenerPort = LH_TRANSPORT_DEFAULT_PORT;

LHTransportInfo LH_LIONHEAD_DEFAULT_LISTNER_ADDRESS(LH_TRANSPORT_TYPE_UDP, sizeof(unsigned short), &LobbyListenerPort);

bool          LHLobby::GameRunning;
void*         LHLobby::UserData;
unsigned long LHLobby::UserDataLen;
void*         LHLobby::MGJCallbackParam;
LH_MGJ_CALLBACK_RETURN (*LHLobby::MGJCallback)(void* param);
LH_OPERATING_MODE               LHLobby::MessageServerMode;
int                             LHLobby::SendFullChecksum;
int                             LHLobby::RunMessageServerOnThisHost;
char                            LHLobby::GameFile[0x104];
char                            LHLobby::UserFile[0x104];
char                            LHLobby::ConnectedLobbyName[0x41];
LHLinkedList<LHLocalLobbyInfo*> LHLobby::LocalLobbyList;
LHTransportInfo                 LHLobby::MSAcceptorInfo;
LHLinkedList<LHPlayer*>         LHLobby::LANPlayerList;
LHLobby*                        LHLobby::InternalLobbyServerConnection;
LHLobbyServer*                  LHLobby::InternalLobbyServer;
int                             LHLobby::InternalLobbyServerRunning;
unsigned long                   LHLobby::OpenLobbyCount;

void LHLobby::ClearAllData()
{
	LHConnection::ClearAllData();
	GlobalLobby = NULL;
	ServerProtocolVersion = 0;
	memset(LastJoinChannelPlayerName, 0, sizeof(LastJoinChannelPlayerName));
	memset(ConnectedLobbyName, 0, sizeof(ConnectedLobbyName));
}

void LHLobby::InitLibrary()
{
	LHSocket::Startup();
}

void LHLobby::CloseLibrary()
{
	ShutdownInternalLobbyServer();
	LHSocket::Shutdown();
}

void LHLobby::RequestOnlineStatus(unsigned long count, long* user_ids, LHTransportInfo* transport_info)
{
	if (InternalLobbyServerConnection != NULL && !InternalLobbyServerConnection->IsDisconnected())
	{
		LHNetEvent* net_event =
			LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_LOBBY_BROADCAST_REQUEST_ONLINE_STATUS,
		                             InternalLobbyServerConnection->GetUserID(), count * sizeof(long), user_ids);
		BroadcastEvent(net_event, transport_info);
	}
}

void LHLobby::Chat(LH_USER_ID user_id, LHTransportInfo* transport_info, void* data, unsigned long length)
{
	if (InternalLobbyServerConnection != NULL && !InternalLobbyServerConnection->IsDisconnected())
	{
		LHNetEvent* net_event =
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_BROADCAST_CHAT, InternalLobbyServerConnection->GetUserID(),
		                        user_id, InternalLobbyServerConnection->GetNetUser()->GetName(), length, data);
		BroadcastEvent(net_event, transport_info);
	}
}

void LHLobby::Ping(LHTransportInfo* transport_info)
{
	if (InternalLobbyServerConnection != NULL && !InternalLobbyServerConnection->IsDisconnected())
	{
		LHNetEvent* net_event = LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_LOBBY_BROADCAST_PING,
		                                                 InternalLobbyServerConnection->GetUserID(), 0, NULL);
		BroadcastEvent(net_event, transport_info);
	}
}

void LHLobby::BroadcastEvent(LHNetEvent* net_event, LHTransportInfo* transport_info)
{
	if (InternalLobbyServerConnection != NULL && !InternalLobbyServerConnection->IsDisconnected())
	{
		LHNetEvent* broadcast =
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_EVENT_BROADCAST,
		                        InternalLobbyServerConnection->GetUserID(), net_event, transport_info);
		delete net_event;
		InternalLobbyServerConnection->Write(broadcast);
	}
}

LHLobby::LHLobby()
{
	ClearAllData();
}

LHLobby* LHLobby::GetGlobalLobby()
{
	return GlobalLobby;
}

LH_RETURN LHLobby::ConnectToChannel(char* name, char* password, LH_NET_CHANNEL_MODE mode)
{
	// The `(a && b) == FALSE` checks in this file reproduce the target's layout, which evaluates the
	// condition as a value and keeps the error return next to the test; `!a || !b` moves it to the end.
	// Mac (`if (!name || !*name)`) cannot tell the spellings apart.
	// TODO: the original spelling is unknown (an inline bool helper or a bool local also match).
	if ((name != NULL && name[0] != '\0') == FALSE)
		return LH_ERROR;
	return Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_JOIN_CHANNEL, GetUserID(), name,
	                                 (unsigned char)RunMessageServerOnThisHost, GetUserName(), password, mode,
	                                 GetUserFile()));
}

LH_RETURN LHLobby::BootOtherUsersOffChannel(char* channel_name)
{
	if ((channel_name != NULL && channel_name[0] != '\0') == FALSE)
		return LH_ERROR;
	return Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_BOOT_OTHER_USERS, GetUserID(), channel_name));
}

LH_RETURN LHLobby::OpenLANLobby(LHNetUser* user, char* lobby_name)
{
	LHLocalLobbyInfo* lobby = FindLocalLobby(lobby_name);
	if (lobby == NULL)
		return LH_ERROR;
	return OpenRemoteLobby(user, &lobby->ConnectionAcceptor);
}

LH_RETURN LHLobby::OpenRemoteLobby(LHNetUser* user, LHTransportInfo* transport_info)
{
	if ((user != NULL && user->id.IsValid()) == FALSE)
		return LH_ERROR;
	SetRegisteredName(NULL);
	OpenLobbyCount++;
	if (transport_info == NULL)
		return LH_FAIL;
	if (OpenClientConnection(user, transport_info) != LH_OK)
		return LH_FAIL;
	return Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_CLIENT_REQUEST_PROTOCOL, GetUserID(),
	                                 LHLobbyServer::GetLobbyProtocolVersion()));
}

const char* LHLobby::GetUserFile()
{
	return UserFile;
}

LH_RETURN LHLobby::OpenLocalLobby(LHMPServerStartInfo* info)
{
	LHTransportInfo transportInfo;

	RunMessageServerOnThisHost = info->RunMessageServer;
	MessageServerMode = info->OperatingMode;
	if (info->AcceptorInfo != NULL)
	{
		MSAcceptorInfo = *info->AcceptorInfo;
	}
	else
	{
		MSAcceptorInfo = *info->ListenerAddress;
		MSAcceptorInfo.Set((unsigned short)0);
	}
	if (info->UserFile != NULL)
		strncpy(UserFile, info->UserFile, MAX_PATH);
	if (info->GameFile != NULL)
		strncpy(GameFile, info->GameFile, MAX_PATH);
	info->RegisteredName = SetRegisteredName(info->RegisteredName);

	if (info->ListenerAddress == (LHTransportInfo*)-1)
	{
		transportInfo.type = LH_TRANSPORT_TYPE_SYNC;
		if (OpenClientConnection(info->user, &transportInfo) != LH_OK)
			return LH_FAIL;
	}
	else
	{
		transportInfo.type = LH_TRANSPORT_TYPE_ASYNC;
		if (OpenClientConnection(info->user, &transportInfo) != LH_OK)
		{
			transportInfo.type = LH_TRANSPORT_TYPE_SYNC;
			if (OpenClientConnection(info->user, &transportInfo) != LH_OK)
				return LH_FAIL;
		}
	}

	if (!InternalLobbyServerRunning)
	{
		if (StartInternalLobbyServer(info) != LH_OK)
			return LH_FAIL;
		InternalLobbyServerConnection = this;
	}
	OpenLobbyCount++;
	return Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_CLIENT_REQUEST_PROTOCOL, GetUserID(),
	                                 LHLobbyServer::GetLobbyProtocolVersion()));
}

void LHLobby::TakeServerOffLan()
{
	if (InternalLobbyServer != NULL && InternalLobbyServerRunning)
		InternalLobbyServer->TakeServerOffLan();
}

void LHLobby::StopLobbyServerListeningForConnections()
{
	if (InternalLobbyServer != NULL && InternalLobbyServerRunning)
		InternalLobbyServer->StopListeningForConnections();
}

void LHLobby::PutServerOnLan()
{
	if (InternalLobbyServer != NULL && InternalLobbyServerRunning)
		InternalLobbyServer->PutServerOnLan();
}

char* LHLobby::SetRegisteredName(const char* name)
{
	if (RegisteredGame[0] == '\0' || (name != NULL && name[0] != '\0'))
	{
		if (name != NULL)
			strncpy(RegisteredGame, name, 0x30);
		else
			strncpy(RegisteredGame, LHLogger::GetFileName(NULL), 0x30);
		for (char* c = RegisteredGame; *c != '\0'; c++)
			*c = *c >= 'A' && *c <= 'Z' ? *c + ('a' - 'A') : *c;
		char* extension = strstr(RegisteredGame, ".exe");
		if (extension != NULL)
			*extension = '\0';
	}
	return RegisteredGame;
}

LH_RETURN LHLobby::StartInternalLobbyServer(LHMPServerStartInfo* info)
{
	if (InternalLobbyServerRunning)
		return LH_ERROR;

	InternalLobbyServer = new LHLobbyServer();
	if (InternalLobbyServer->Start(info, GetMode(), this) != LH_OK)
	{
		delete InternalLobbyServer;
		InternalLobbyServer = NULL;
		return LH_FAIL;
	}
	InternalLobbyServerRunning = TRUE;
	return LH_OK;
}

// TODO: matches, but dtk's labels at 1000d132..1000d1c8 split the target function (see requests.md).
LH_RETURN LHLobby::ProcessEvent(LHNetEvent* net_event)
{
	long type = net_event->GetType();
	switch (type)
	{
	case LH_NETEVENT_TYPE_REMOVE_CONNECTION:
		return ProcessConnectionClosed();
	case LH_NETEVENT_TYPE_LOBBY_GREETING:
		return ProcessLobbyGreeting(net_event);
	case LH_NETEVENT_TYPE_LOBBY_CHANNEL_LIST_INFO:
		return ProcessLobbyChannelListInfo(net_event);
	case LH_NETEVENT_TYPE_LOBBY_PLAYER_LIST:
		return ProcessLobbyPlayerList(net_event);
	case LH_NETEVENT_TYPE_LOBBY_START_MSERVE:
		return ProcessLobbyStartMServe(net_event);
	case LH_NETEVENT_TYPE_LOBBY_USER_FILE:
		return ProcessLobbyUserFile(net_event);
	case LH_NETEVENT_TYPE_LOBBY_USER_FILES_TRANSFER_COMPLETE:
		return ProcessLobbyUserFilesTransferComplete(net_event);
	case LH_NETEVENT_TYPE_LOBBY_CONNECT_TO_MSERVE:
		return ProcessLobbyConnectToMServe(net_event);
	case LH_NETEVENT_TYPE_LOBBY_EJECTED_FROM_CHANNEL:
		return ProcessLobbyEjectedFromChannel(net_event);
	case LH_NETEVENT_TYPE_INTERNAL_LOBBY_NEW_LOCAL_LOBBY_LIST:
		return ProcessInternalLobbyNewLocalLobbyList(net_event);
	case LH_NETEVENT_TYPE_SERVER_ERROR:
	case LH_NETEVENT_TYPE_SERVER_SHUTDOWN:
	case LH_NETEVENT_TYPE_LOBBY_CHANNEL_USERS:
	case LH_NETEVENT_TYPE_LOBBY_CHAT_ON_CHANNEL:
	case LH_NETEVENT_TYPE_LOBBY_MGJ_REQUEST:
	case LH_NETEVENT_TYPE_LOBBY_MGJ_REQUEST_REFUSED:
	case LH_NETEVENT_TYPE_LOBBY_MGJ_STATUS:
	case LH_NETEVENT_TYPE_LOBBY_VERIFY_CODE_CHECKSUMS:
	case LH_NETEVENT_TYPE_LOBBY_BROADCAST_CHAT:
	case LH_NETEVENT_TYPE_LOBBY_BROADCAST_PING_REPLY:
	case LH_NETEVENT_TYPE_LOBBY_SESSION_READY:
		return LH_OK;
	default:
		return LH_FAIL;
	}
}

void LHLobby::WriteChatFile(char* text, char* name, char* file_name)
{
	static bool firstCall = true;
	DWORD       written;
	char        buffer[0x400];

	if (firstCall)
	{
		firstCall = false;
		CreateDirectoryA(".\\Chat", NULL);
	}
	HANDLE file = CreateFileA(LHSPrintf(".\\Chat\\%s.txt", file_name != NULL ? file_name : "chat").Text, GENERIC_WRITE,
	                          FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
	if (file != INVALID_HANDLE_VALUE)
	{
		sprintf(buffer, "%s: %s\n", name, text);
		WriteFile(file, buffer, strlen(buffer), &written, NULL);
		CloseHandle(file);
	}
}

LH_RETURN LHLobby::ProcessLobbyGreeting(LHNetEvent* net_event)
{
	char*         lobbyName;
	unsigned long numberOfChannels;
	unsigned long param_3;
	unsigned long protocolVersion;

	if (net_event->VDecode(LH_NETEVENT_TYPE_LOBBY_GREETING, &lobbyName, &numberOfChannels, &param_3,
	                       &protocolVersion) != LH_OK)
		return LH_ERROR;

	strncpy(ConnectedLobbyName, lobbyName, 0x40);
	ServerProtocolVersion = protocolVersion;
	if (protocolVersion != LHLobbyServer::GetLobbyProtocolVersion())
	{
		Close();
		return LH_FAIL;
	}
	if (InternalLobbyServer != NULL && !IsInternal())
		InternalLobbyServer->TakeServerOffLan();
	return Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_SEND_CODE_CHECKSUM, GetUserID(),
	                                 LHVersion::GetModuleChecksum(), LHVersion::GetModuleChecksumString()));
}

LH_RETURN LHLobby::ProcessLobbyEjectedFromChannel(LHNetEvent* net_event)
{
	LHLobbyChannel* channel = GetChannel(net_event);
	if (channel != NULL)
	{
		Channels.Remove(channel);
		delete channel;
		Disconnect();
		if (!IsInternal() && InternalLobbyServer != NULL)
			InternalLobbyServer->PutServerOnLan();
	}
	return LH_OK;
}

LH_RETURN LHLobby::ProcessLobbyChannelListInfo(LHNetEvent* net_event)
{
	return net_event->VDecode(LH_NETEVENT_TYPE_LOBBY_CHANNEL_LIST_INFO, LHLobbyServerChannel::Create, &ServerChannels);
}

LH_RETURN LHLobby::ProcessLobbyPlayerList(LHNetEvent* net_event)
{
	char*                   channelName;
	LH_USER_ID              userID;
	LH_PLAYER_EVENT         event;
	LHLinkedList<LHPlayer*> players;
	unsigned char           param_6;

	LHLobbyChannel* channel = FindOrCreateChannel(net_event->GetChannelName(), this);
	net_event->VDecode(LH_NETEVENT_TYPE_LOBBY_PLAYER_LIST, &channelName, &userID, &event, LHPlayer::Create, &players,
	                   &param_6);
	LastJoinUserID = userID;

	LHPlayer* player;
	if (event == LH_PLAYER_EVENT_JOINED)
		player = LHPlayer::GetPlayer(userID, &players);
	else
		player = LHPlayer::GetPlayer(userID, &channel->Players);
	if (player != NULL)
		wcscpy(LastJoinChannelPlayerName, player->GetName());
	else
		LastJoinChannelPlayerName[0] = 0;
	LastJoinEvent = event;

	LHPlayer::CopyPlayerList(&channel->Players, &players);
	channel->field_0x88 = param_6;
	players.DeleteAll();
	return LH_OK;
}

LH_RETURN LHLobby::ProcessLobbyStartMServe(LHNetEvent* net_event)
{
	char*             channelName;
	unsigned long     param_2;
	LH_OPERATING_MODE mode;

	if (net_event->VDecode(LH_NETEVENT_TYPE_LOBBY_START_MSERVE, &channelName, &param_2, &mode) != LH_OK)
		return LH_ERROR;

	LHLobbyChannel* channel = FindChannel(channelName);
	if (channel != NULL && channel->GetPlayer(GetUserID()) != NULL)
	{
		if (mode != LH_OPERATING_MODE_SYNCHRONOUS && channel->GetSize() == 1)
			mode = LH_OPERATING_MODE_SYNCHRONOUS;
		return StartInternalMessageServer(channel, param_2, mode, 0, NULL, NULL);
	}
	SendStartMServeResult(channelName, FALSE, NULL, LH_OPERATING_MODE_NONE);
	return LH_FAIL;
}

LH_RETURN LHLobby::StartInternalMessageServer(LHLobbyChannel* channel, unsigned long param_2, LH_OPERATING_MODE mode,
                                              unsigned long game_turn, unsigned short player_names[][0x30],
                                              LH_USER_ID player_ids[])
{
	LHMessageServer* server = StartInternalMessageServer(GetNetUser(), channel->GetName(), channel->GetSize(), param_2,
	                                                     mode, game_turn, player_names, player_ids);
	LHTransportInfo  syncTransportInfo(LH_TRANSPORT_TYPE_SYNC);

	if (server != NULL)
	{
		if (InternalLobbyServer != NULL)
			InternalLobbyServer->TakeServerOffLan();

		LHTransportInfo* transportInfo;
		if (server->Mode == LH_OPERATING_MODE_SYNCHRONOUS)
			transportInfo = &syncTransportInfo;
		else
			transportInfo = server->GetConnectionAcceptorInfo();
		channel->InternalMessageServer = server;
		// TODO: the target keeps the mode in ESI (ours uses ECX); reading it into a local first matches,
		// but nothing else suggests the original had one. Mac reloads it through the channel, as here.
		return SendStartMServeResult(channel->GetName(), TRUE, transportInfo, channel->InternalMessageServer->Mode);
	}
	SendStartMServeResult(channel->GetName(), FALSE, NULL, LH_OPERATING_MODE_NONE);
	return LH_FAIL;
}

LHMessageServer* LHLobby::StartInternalMessageServer(LHNetUser* user, char* name, unsigned long param_3,
                                                     unsigned long param_4, LH_OPERATING_MODE mode,
                                                     unsigned long game_turn, unsigned short player_names[][0x30],
                                                     LH_USER_ID player_ids[])
{
	LHMPServerStartInfo info;
	memset(&info, 0, sizeof(info));
	info.ListenerAddress = &LH_LIONHEAD_DEFAULT_LISTNER_ADDRESS;

	LHMessageServer* server = new LHMessageServer();
	LHTransportInfo  broadcastInfo;
	broadcastInfo.Set((unsigned short)(LH_TRANSPORT_DEFAULT_PORT + 1));

	info.BroadcastInfo = &broadcastInfo;
	info.AcceptorInfo = &MSAcceptorInfo;
	info.user = user;
	info.RegisteredName = RegisteredGame;
	info.GameTurn = game_turn;
	if (player_names != NULL)
		memcpy(info.PlayerNames, player_names, sizeof(info.PlayerNames));
	if (player_ids != NULL)
		memcpy(info.PlayerIDs, player_ids, sizeof(info.PlayerIDs));
	if (mode == LH_OPERATING_MODE_SYNCHRONOUS && MessageServerMode == LH_OPERATING_MODE_ASYNCHRONOUS)
		info.OperatingMode = LH_OPERATING_MODE_ASYNCHRONOUS;
	else
		info.OperatingMode = mode;

	if (server->Start(&info, name, param_3, param_4) != LH_OK)
	{
		delete server;
		return NULL;
	}
	return server;
}

LH_RETURN LHLobby::ProcessLobbyUserFile(LHNetEvent* net_event)
{
	char*         channelName;
	unsigned long param_2;
	LH_USER_ID    userID;
	unsigned long length;
	void*         data;

	net_event->VDecode(LH_NETEVENT_TYPE_LOBBY_USER_FILE, &channelName, &param_2, &userID, &length, &data);
	LHLobbyChannel* channel = FindChannel(channelName);
	if (channel == NULL)
		return LH_FAIL;
	LHPlayer* player = channel->GetPlayer(userID);
	player->SetUserData(data, length);
	return LH_OK;
}

LH_RETURN LHLobby::SendStartMServeResult(char* channel_name, int success, LHTransportInfo* transport_info,
                                         LH_OPERATING_MODE mode)
{
	return Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_START_MSERVE_RESULT, GetUserID(), channel_name,
	                                 success, transport_info, GetInternalLobbyName(), mode));
}

LH_RETURN LHLobby::ProcessLobbyConnectToMServe(LHNetEvent* net_event)
{
	LHSession*      session = NULL;
	char*           channelName;
	unsigned long   mserveUserNumber;
	LHTransportInfo transportInfo;
	unsigned char   param_4[4];
	int             mgj;
	unsigned long   gameDataLength;
	void*           gameData;

	if (net_event->VDecode(LH_NETEVENT_TYPE_LOBBY_CONNECT_TO_MSERVE, &channelName, &mserveUserNumber, &transportInfo,
	                       param_4, &mgj, &gameDataLength, &gameData) != LH_OK)
		return LH_FAIL;

	LHLobbyChannel* channel = FindChannel(channelName);
	if (channel == NULL)
		return LH_FAIL;
	if (channel->GetSize() == 0)
		return LH_FAIL;
	channel->SetGameData(gameDataLength, gameData);

	session = new LHSession();
	channel->Session = session;
	if (channel->GetSize() > 1 || MessageServerMode == LH_OPERATING_MODE_ASYNCHRONOUS)
		SendUserFileToServer(channel->GetName());

	if (transportInfo.type == LH_TRANSPORT_TYPE_SYNC)
	{
		if (channel->GetSize() != 1)
			return LH_ERROR;
		if (session->Open(NetUser, channel, &transportInfo, mgj, channel->InternalMessageServer) != LH_OK)
		{
			delete session;
			channel->Session = NULL;
			return LH_ERROR;
		}
	}
	else if (channel->InternalMessageServer != NULL)
	{
		if (mgj)
			return LH_ERROR;
		if (mserveUserNumber != GetUserID().Number)
			return LH_ERROR;
		if (transportInfo.Compare(channel->InternalMessageServer->GetConnectionAcceptorInfo()) != 0)
			return LH_ERROR;
		transportInfo.type = LH_TRANSPORT_TYPE_ASYNC;
		session->Open(NetUser, channel, &transportInfo, mgj, channel->InternalMessageServer);
		channel->InternalMessageServer->ForceEventProcess();
	}
	else
	{
		session->Open(NetUser, channel, &transportInfo, mgj, NULL);
	}

	if (!session->IsOpen())
	{
		if (channel->InternalMessageServer != NULL)
			channel->ClearInternalMessageServer();
		channel->Session = NULL;
		delete session;
		return LH_FAIL;
	}
	AddToIncomingEventQ(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_SESSION_READY, GetUserID(), channel->GetName()));
	return LH_OK;
}

LH_RETURN LHLobby::ProcessConnectionClosed()
{
	if (!IsInternal() && InternalLobbyServer != NULL)
		InternalLobbyServer->PutServerOnLan();
	return LH_OK;
}

LH_RETURN LHLobby::ProcessLobbyUserFilesTransferComplete(LHNetEvent* net_event)
{
	LHLobbyChannel* channel = GetChannel(net_event);
	if (channel == NULL)
		return LH_ERROR;
	channel->FileTransferComplete = TRUE;
	return LH_OK;
}

LH_RETURN LHLobby::CheckSessionReady(LHLobbyChannel* channel)
{
	if (channel->Session == NULL)
		return LH_ERROR;
	if (channel->FileTransferComplete &&
	    ((channel->MGJInProgress() && channel->Session->GameFileReceived) || !channel->MGJInProgress()))
	{
		AddToIncomingEventQ(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_SESSION_READY, GetUserID(), channel->GetName()));
		if (channel->MGJInProgress())
		{
			channel->Session->ClearMGJInProgress();
			Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_COMPLETE, GetUserID(), channel->GetName()));
		}
	}
	return LH_OK;
}

// TODO: nonmatching. The target calls the LHLinkedList<LHPlayer*> constructor (in the local
// LHLocalLobbyInfo) and LHTransportInfo::operator= out of line where we inline them, so its inline
// budget is smaller; with the constant 0 no longer cached in a register its early returns also keep
// their own epilogues. Mac walks the lists with LHLinkedListIterator<T>, which this repo lacks; the
// loops below follow the Mac control flow.
LH_RETURN LHLobby::ProcessInternalLobbyNewLocalLobbyList(LHNetEvent* net_event)
{
	if (GameRunning)
		return LH_OK;
	if ((InternalLobbyServer != NULL && InternalLobbyServerRunning) == FALSE)
		return LH_ERROR;

	unsigned char    event;
	LHLocalLobbyInfo lobbyInfo;
	if (net_event->VDecode(LH_NETEVENT_TYPE_INTERNAL_LOBBY_NEW_LOCAL_LOBBY_LIST, &event, &lobbyInfo) != LH_OK)
		return LH_FAIL;

	switch (event)
	{
	case LH_LOBBYSERVER_EVENT_UPDATED: {
		LHLocalLobbyInfo* lobby = LHNetFindLocalLobby(&LocalLobbyList, &lobbyInfo.ConnectionAcceptor);
		if (lobby != NULL)
			lobby->UpdateLocalLobbyInfoDetails(&lobbyInfo);
		break;
	}
	case LH_LOBBYSERVER_EVENT_REMOVED: {
		LHLocalLobbyInfo* lobby = LHNetFindLocalLobby(&LocalLobbyList, &lobbyInfo.ConnectionAcceptor);
		if (lobby != NULL)
		{
			LocalLobbyList.Remove(lobby);
			delete lobby;
		}
		break;
	}
	case LH_LOBBYSERVER_EVENT_ADDED:
		LocalLobbyList.Add(new LHLocalLobbyInfo(&lobbyInfo));
		break;
	}

	// Add the players of every LAN lobby that LANPlayerList does not have yet, restarting the scan
	// after each addition.
	LHLinkedNode<LHLocalLobbyInfo*>* lobbyNode;
	LHLinkedNode<LHPlayer*>*         playerNode;
	LHLinkedNode<LHPlayer*>*         lanNode;
restartAdd:
	for (lobbyNode = LocalLobbyList.GetStart(); lobbyNode != NULL; lobbyNode = lobbyNode->next.Get())
	{
		for (playerNode = lobbyNode->payload->Players.GetStart(); playerNode != NULL;
		     playerNode = playerNode->next.Get())
		{
			LHPlayer* player = playerNode->payload;
			int       found = FALSE;
			for (lanNode = LANPlayerList.GetStart(); lanNode != NULL; lanNode = lanNode->next.Get())
			{
				if (lanNode->payload->UserId == player->UserId)
				{
					found = TRUE;
					break;
				}
			}
			if (!found)
			{
				LHPlayer* lanPlayer = new LHPlayer(player);
				lanPlayer->transport_info = *FindPlayerBroadcastInfo(lanPlayer->GetUserID());
				LANPlayerList.Add(lanPlayer);
				goto restartAdd;
			}
		}
	}

	// Remove LAN players no LAN lobby lists any more, restarting the scan after each removal.
restartRemove:
	for (lanNode = LANPlayerList.GetStart(); lanNode != NULL; lanNode = lanNode->next.Get())
	{
		LHPlayer* player = lanNode->payload;
		int       found = FALSE;
		for (lobbyNode = LocalLobbyList.GetStart(); lobbyNode != NULL; lobbyNode = lobbyNode->next.Get())
		{
			for (playerNode = lobbyNode->payload->Players.GetStart(); playerNode != NULL;
			     playerNode = playerNode->next.Get())
			{
				if (playerNode->payload->UserId == player->UserId)
				{
					found = TRUE;
					break;
				}
			}
			if (found)
				break;
		}
		if (!found)
		{
			LANPlayerList.Remove(player);
			delete player;
			goto restartRemove;
		}
	}
	return LH_OK;
}

LH_RETURN LHLobby::ConnectToPlayer(LHPlayer* player, LHP2P* p2p)
{
	return LH_ERROR;
}

LHLobby::~LHLobby()
{
	if (this == InternalLobbyServerConnection)
		ClearInternalLobbyServer();
	Close();
}

void LHLobby::Close()
{
	if (IsOpen())
	{
		if (!IsInternal() && InternalLobbyServer != NULL)
			InternalLobbyServer->PutServerOnLan();
		OpenLobbyCount--;
		Channels.DeleteAll();
		ServerChannels.DeleteAll();
		LHConnection::Close();
		ClearAllData();
	}
}

void LHLobby::ClearInternalLobbyServer()
{
	if (InternalLobbyServer != NULL)
	{
		if (InternalLobbyServerConnection != NULL)
		{
			if (InternalLobbyServer->Mode != LH_OPERATING_MODE_NONE)
			{
				InternalLobbyServerConnection->Write(LHNetEvent::CreateSimple(
					LH_NETEVENT_TYPE_CLIENT_SHUTDOWN_SERVER, InternalLobbyServerConnection->GetUserID(), 0, NULL));
				InternalLobbyServer->WaitUntilShutdown();
			}
			if (InternalLobbyServer->Mode == LH_OPERATING_MODE_NONE)
				delete InternalLobbyServer;
			InternalLobbyServer = NULL;
			InternalLobbyServerConnection = NULL;
		}
		LANPlayerList.DeleteAll();
	}
}

void LHLobbyChannel::ClearAllData()
{
	LHChannel::ClearAllData();
	Lobby = NULL;
	InternalMessageServer = NULL;
	Session = NULL;
	PacketSource = LH_PACKET_SOURCE_NETWORK;
	field_0x88 = 0;
	FileTransferComplete = FALSE;
}

LHLobbyChannel::~LHLobbyChannel()
{
	ClearInternalMessageServer();
}

void LHLobbyChannel::ClearInternalMessageServer()
{
	if (InternalMessageServer != NULL)
	{
		if (InternalMessageServer->Mode == LH_OPERATING_MODE_SYNCHRONOUS)
		{
			delete InternalMessageServer;
			InternalMessageServer = NULL;
		}
		else
		{
			if (InternalMessageServer->Mode != LH_OPERATING_MODE_NONE)
			{
				Session->Write(
					LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_CLIENT_SHUTDOWN_SERVER, LH_ALL_USERS, 0, NULL));
				InternalMessageServer->WaitUntilShutdown();
			}
			if (InternalMessageServer->Mode != LH_OPERATING_MODE_NONE)
				delete InternalMessageServer;
			InternalMessageServer = NULL;
		}
	}
}

// TODO: the inlined LHMPPacketSave constructor stores Info's first word through a register-held
// address in ours ([edi+0x18] directly in the target); everything else matches.
LHLobbyChannel* LHLobbyChannel::FindOrCreateChannel(char* name, LHLobby* lobby, LHLinkedList<LHLobbyChannel*>* list)
{
	LHLobbyChannel* channel = FindChannel(name, list);
	if (channel == NULL)
	{
		channel = new LHLobbyChannel(name, lobby);
		list->Add(channel);
	}
	return channel;
}

LH_RETURN LHLobbyChannel::StartGame(unsigned long param_1, unsigned long length, void* data)
{
	return Lobby->Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_START_GAME, GetUserID(), Name, GetUserID(),
	                                        param_1, length, data));
}

void LHLobbyChannel::RequestMGJ(int param_1)
{
	Lobby->Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_REQUEST, GetUserID(), Name, param_1));
}

int LHLobbyChannel::MGJInProgress()
{
	if (Session == NULL)
		return FALSE;
	return Session->MGJInProgress();
}

LH_RETURN LHLobbyChannel::SendMGJResponse(int accept, LH_USER_ID user_id, char* reason)
{
	return Lobby->Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_RESPONSE, GetUserID(), Name, user_id,
	                                        (unsigned char)accept, reason));
}

LH_RETURN LHLobbyChannel::ChatOnChannel(void* data, unsigned long length, LH_USER_ID user_id, bool param_4)
{
	return Lobby->Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_CHAT_ON_CHANNEL, GetUserID(), Name,
	                                        GetUserID(), length, data, user_id, param_4));
}

LH_RETURN LHLobby::LeaveChannel(LHLobbyChannel* channel)
{
	if (channel == NULL)
		return LH_ERROR;
	Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_LEAVE_CHANNEL, GetUserID(), channel->GetName()));
	Channels.Remove(channel);
	delete channel;
	return LH_OK;
}

LHTransportInfo* LHLobby::GetBroadcastListenerInfo()
{
	return InternalLobbyServer != NULL ? InternalLobbyServer->GetBroadcastListenerInfo() : NULL;
}

LHTransportInfo* LHLobby::GetConnectionAcceptorInfo()
{
	return InternalLobbyServer != NULL ? InternalLobbyServer->GetConnectionAcceptorInfo() : NULL;
}

char* LHLobby::GetInternalLobbyName()
{
	if (InternalLobbyServer != NULL)
		return InternalLobbyServer->ServerName;
	return NULL;
}

LHLocalLobbyInfo* LHLobby::GetNextLocalLobby(LHLocalLobbyInfo* lobby)
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

LHLocalLobbyInfo* LHLobby::FindLocalLobby(char* name)
{
	LHLocalLobbyInfo* lobby;
	for (lobby = GetNextLocalLobby(NULL); lobby != NULL; lobby = GetNextLocalLobby(lobby))
	{
		if (strcmp(name, lobby->Name) == 0)
			break;
	}
	return lobby;
}

// TODO: the decoded locals sit at different stack offsets in the target (which reuses net_event's
// slot for targetUserID); declaration order does not change ours. Same in GetChatDataLength.
// The 4004 fields are: channel name, sender, data length, data, private flag (byte), target user.
LH_RETURN LHLobby::GetChatOnChannelInfo(LHNetEvent* net_event, LHLobbyChannel** channel, LHPlayer** player, void** data,
                                        int* is_private)
{
	if (net_event->GetType() != LH_NETEVENT_TYPE_LOBBY_CHAT_ON_CHANNEL)
		return LH_FAIL;

	char*         channelName;
	LH_USER_ID    userID;
	unsigned long length;
	unsigned char isPrivate;
	unsigned long targetUserID;
	if (net_event->VDecode(LH_NETEVENT_TYPE_LOBBY_CHAT_ON_CHANNEL, &channelName, &userID, &length, data, &isPrivate,
	                       &targetUserID) != LH_OK)
		return LH_FAIL;
	*channel = FindChannel(channelName);
	*player = (*channel)->GetPlayer(userID);
	*is_private = isPrivate;
	return LH_OK;
}

LH_RETURN LHLobby::GetChatDataLength(LHNetEvent* net_event, unsigned long* length)
{
	if (net_event->GetType() != LH_NETEVENT_TYPE_LOBBY_CHAT_ON_CHANNEL)
		return LH_FAIL;

	char*         channelName;
	LH_USER_ID    userID;
	unsigned long dataLength;
	void*         data;
	unsigned char isPrivate;
	unsigned long targetUserID;
	if (net_event->VDecode(LH_NETEVENT_TYPE_LOBBY_CHAT_ON_CHANNEL, &channelName, &userID, &dataLength, &data,
	                       &isPrivate, &targetUserID) != LH_OK)
		return LH_FAIL;
	*length = dataLength;
	return LH_OK;
}

LHLinkedList<LHPlayer*>* LHLobby::GetLANPlayers(LHLocalLobbyInfo* lobby)
{
	if (lobby != NULL)
		return &lobby->Players;
	return &LANPlayerList;
}

unsigned long LHLobby::GetNumberOfPlayersOnDefaultChannel(LHLocalLobbyInfo* lobby)
{
	LHLinkedList<LHPlayer*>* players = GetLANPlayers(lobby);
	if (players != NULL)
		return players->count;
	return 0;
}

void LHLobby::ShutdownInternalLobbyServer()
{
	ClearInternalLobbyServer();
	LocalLobbyList.DeleteAll();
	LANPlayerList.DeleteAll();
	InternalLobbyServerRunning = FALSE;
	InternalLobbyServer = NULL;
	InternalLobbyServerConnection = NULL;
	// TODO: the target calls LHLocalLobbyInfo's scalar deleting destructor here instead of inlining
	// it, so its inline budget ran out sooner than ours; the extra consumer is unknown (Mac has three
	// explicit while/Remove/delete loops, which budget the same as DeleteAll here).
	LocalLobbyList.DeleteAll();
	RunMessageServerOnThisHost = FALSE;
	memset(ConnectedLobbyName, 0, sizeof(ConnectedLobbyName));
	SendFullChecksum = FALSE;
	MessageServerMode = LH_OPERATING_MODE_NONE;
}

LH_USER_ID::CATEGORY LHLobby::GetInternalLobbyType()
{
	if (InternalLobbyServer != NULL)
		return (LH_USER_ID::CATEGORY)InternalLobbyServer->GetUserID().Category;
	return LH_USER_ID::CATEGORY_NONE;
}

LH_RETURN LHLobby::SendUserFileToServer(char* channel_name)
{
	return Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_USER_FILE, GetUserID(), channel_name, UserFile,
	                                 GetUserID(), UserDataLen, UserData));
}

void LHLobby::FeedbackLastError(char* text)
{
	Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_ERROR, GetUserID(), text, LHLogger::GetCode(),
	                          LHLogger::GetText()));
}

LHTransportInfo* LHLobby::FindPlayerBroadcastInfo(LH_USER_ID user_id)
{
	for (LHLinkedNode<LHLocalLobbyInfo*>* lobbyNode = LocalLobbyList.GetStart(); lobbyNode != NULL;
	     lobbyNode = lobbyNode->next.Get())
	{
		LHLocalLobbyInfo* lobby = lobbyNode->payload;
		for (LHLinkedNode<LHPlayer*>* playerNode = lobby->Players.GetStart(); playerNode != NULL;
		     playerNode = playerNode->next.Get())
		{
			if (playerNode->payload->GetUserID() == user_id)
				return &lobby->BroadcastListener;
		}
	}
	return NULL;
}
