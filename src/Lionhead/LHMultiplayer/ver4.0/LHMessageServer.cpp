#define LH_MULTIPLAYER_EXPORTS
#include "LHSession.h"
#include "LHMessageServer.h"

#include <stdlib.h>
#include <string.h>

#include <Lionhead/LHLog/ver4.0/LHLogger.h>
#include <Lionhead/LHLog/ver4.0/LHVersion.h>
#include "LHConnection.h"
#include "LHLobby.h"
#include "LHMPServerStartInfo.h"
#include "LHNetErrors.h"
#include "LHNetEvent.h"
#include "LHPacket.h"
#include "LHPlayer.h"
#include "LHTransportInfo.h"

struct LHMessageServerAuthContext
{
	LHMessageServer* Server;
	LHConnection*    Connection;
};
static LHMessageServerAuthContext AuthContext;

// BW1W120 10014d70 BW1M119 null
void MessageServerAuthCallback(int local_id, int authenticated, char* error_message, void* instance);

void LHMessageServer::ClearAllData()
{
	LHConnectionServer::ClearAllData();
	GameIdleTime = 0xffffffff;
	GameFileTurn = LH_INVALID_GAME_TURN;
	GameTurn = 0;
	NextPlayerID = 0;
	NumPlayers = 0;
	GameStarted = false;
	GameFilePlayer = NULL;
	memset(Name, 0, sizeof(Name));
	memset(PlayerNames, 0, sizeof(PlayerNames));
	memset(PlayerIDs, 0, sizeof(PlayerIDs));
	NumExpectedPlayers = 0;
	ChecksumsEnabled = true;
	FullChecksumsEnabled = true;
	StartTime = GetTickCount();
}

LH_RETURN LHMessageServer::Start(LHMPServerStartInfo* start_info, char* name, unsigned long num_players,
                                 unsigned long idle_time)
{
	if (LHConnectionServer::Start(start_info, start_info->AcceptorInfo, start_info->BroadcastInfo,
	                              LH_USER_ID::CATEGORY_LOBBY_SERVER, start_info->OperatingMode, NULL, idle_time,
	                              THREAD_PRIORITY_TIME_CRITICAL) != LH_OK)
		return LH_FAIL;

	strncpy(Name, name, sizeof(Name) - 1);
	NumExpectedPlayers = num_players;
	GameTurn = start_info->GameTurn;
	memcpy(PlayerNames, start_info->PlayerNames, sizeof(PlayerNames));
	memcpy(PlayerIDs, start_info->PlayerIDs, sizeof(PlayerIDs));
	GameIdleTime = idle_time;

	if (WaitUntilStarted() != LH_OK)
		return LH_FAIL;

	Timer.Start();
	UnsolicitedProcessing = true;
	return LH_OK;
}

void LHMessageServer::Shutdown()
{
	if (Mode != LH_OPERATING_MODE_NONE)
	{
		LHDynamicQueueNode<LHNetEvent*>* next;
		for (LHDynamicQueueNode<LHNetEvent*>* entry = EventQueue.Head; entry != NULL; entry = next)
		{
			next = entry->Next;
			delete entry->Payload;
			delete entry;
		}
		EventQueue.Count = 0;
		EventQueue.Tail = NULL;
		EventQueue.Head = NULL;

		Checksums.DeleteAll();
		FullChecksums.DeleteAll();
	}
}

LH_RETURN LHMessageServer::SendGreeting(LHConnection* connection)
{
	LHServerPlayer* player = GetConnectedPlayer(connection);
	return connection->Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_GREETING, GetUserID(), Name,
	                                             GetProtocolVersion(), player->ProtocolVersion,
	                                             LHLobby::SendFullChecksum));
}

LH_RETURN LHMessageServer::ProcessEvent(LHConnection* connection, LHNetEvent* event)
{
	if (connection != NULL && connection->GetTransportType() == LH_TRANSPORT_TYPE_UDP)
		return LH_OK;

	long type = event->GetType();
	switch (type)
	{
	case LH_NETEVENT_TYPE_INTERNAL_SERVER_START:
		return ProcessInternalServerStart();
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_RESTART_GAME_LOOP:
		return ProcessMServeClientRestartGameLoop(true);
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_GAME_PACKET: {
		LHNetEvent* copy = LHNetEvent::CreateFromEvent(event);
		EventQueue.Add(copy);
		return LH_OK;
	}
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_STOP_GAME_LOOP:
		return ProcessMServeClientStopGameLoop();
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_TERMINATE_GAME_LOOP:
		return ProcessMServeClientTerminateGameLoop();
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM:
		return ProcessMServeClientChecksum(connection, event, false);
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_GAME_FILE_SAVED:
		return ProcessMServeClientGameFileSaved(connection, event);
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_SYNC_PACKET:
		return ProcessMServeClientSyncPacket(connection, event, false);
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_DATA_PACKET:
		SendEventCopyToAllPlayersOnServer(event);
		FlushAllConnections(LH_MSERVE_DATA_PACKET_FLUSH_TIMEOUT);
		return LH_OK;
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_FULL_CHECKSUM:
		return ProcessMServeClientChecksum(connection, event, true);
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM_DATA:
		return ProcessMServeClientChecksumData(connection, event);
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_CHALLENGE_RESPONSE:
		return ProcessMServeClientChallengeResponse(connection, event);
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_MIGRATE_HOST:
		return ProcessMServeClientMigrateHost();
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_LAST_SUPER_PACKET:
		return ProcessMServeClientLastSuperPacket(connection, event);
	}
	return LH_ERROR;
}

void LHMessageServer::DoUnsolicitedProcessing()
{
	if (!GameStarted)
	{
		CheckReadyToGo();
		return;
	}

	LHNetEvent* event;
	if (Mode == LH_OPERATING_MODE_SYNCHRONOUS)
	{
		event =
			LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET, GetUserID(), sizeof(GameTurn), &GameTurn);
	}
	else
	{
		event = LHNetEvent::CreateMServeSuperPacket(GetUserID(), GameTurn, &EventQueue, true);
		event->SetTickCount(GetTickCount());
	}
	SendEventCopyToAllPlayersOnServer(event);
	delete event;
	GameTurn++;
}

LH_RETURN LHMessageServer::RemoveConnection(LHConnection* connection)
{
	LHServerPlayer* player = GetConnectedPlayer(connection);
	RemovePlayerChecksums(player->GetUserID());

	LHNetEvent* event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_PLAYER_LIST, GetUserID(), Name, player->GetName(),
	                                        player->GetUserID(), true, &Players);
	SendEventCopyToAllPlayersOnServerExceptOne(event, player);
	delete event;

	if (player->GetUserID().IsType(LH_USER_ID::CATEGORY_PLAYER))
		NumPlayers--;

	LHDynamicQueueNode<LHNetEvent*>* next;
	for (LHDynamicQueueNode<LHNetEvent*>* entry = EventQueue.Head; entry != NULL; entry = next)
	{
		next = entry->Next;
		delete entry->Payload;
		delete entry;
	}
	EventQueue.Count = 0;
	EventQueue.Tail = NULL;
	EventQueue.Head = NULL;

	ProcessMServeClientSyncPacket(connection, NULL, true);
	return LH_OK;
}

LH_RETURN LHMessageServer::AddConnection(LHServerPlayer* player)
{
	if (!player->GetUserID().IsType(LH_USER_ID::CATEGORY_PLAYER))
		return LH_ERROR;

	unsigned long id = NextPlayerID++;
	player->PlayerId = id;
	NumPlayers++;

	if (player->Connection->GetTransportType() == LH_TRANSPORT_TYPE_TCP)
	{
		LHNetEvent* event =
			player->Connection->RawRead(LH_MSERVE_LOCAL_ADDRESS_TIMEOUT, LH_NETEVENT_TYPE_MSERVE_CLIENT_LOCAL_ADDRESS);
		if (event != NULL)
		{
			char* ip = NULL;
			if (event->VDecode(LH_NETEVENT_TYPE_MSERVE_CLIENT_LOCAL_ADDRESS, &ip) == LH_OK && ip != NULL)
				player->transport_info = LHTransportInfo(ip, player->GetTransportInfo()->GetPort());
		}
	}

	LHNetEvent* event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_PLAYER_LIST, GetUserID(), Name, player->GetName(),
	                                        player->GetUserID(), false, &Players);
	SendEventCopyToAllPlayersOnServer(event);
	delete event;

	if (GameStarted)
	{
		GameFilePlayer = player;
		GameFileTurn = GameTurn;
		player->Connection->Write(
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_GAME_LOOP_STARTED, GetUserID(), IdleTime));
		event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_MGJ, GetUserID(), player->GetUserID());
		SendEventCopyToAllPlayersOnServerExceptOne(event, player);
		FullChecksumsEnabled = false;
		ChecksumsEnabled = false;
		delete event;
	}
	else
	{
		CheckReadyToGo();
	}
	return LH_OK;
}

bool LHMessageServer::WeHaveNoBananas(unsigned long& min_turn, unsigned long& max_turn)
{
	if (GameTurn == 0)
		return true;

	void*         lastData = NULL;
	void*         catchupData = NULL;
	unsigned long catchupSize = 0;
	LHConnection* latest = NULL;
	unsigned long lastSize = 0;
	LHNetEvent*   events[LH_MSERVE_MAX_CATCHUP_TURNS];

	LHLinkedNode<LHServerPlayer*>* node;
	for (node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHServerPlayer* player = node->payload;
		if (player->LastSuperPacketTurn == LH_INVALID_GAME_TURN)
			return false;
		if (max_turn == LH_INVALID_GAME_TURN)
		{
			min_turn = max_turn = player->LastSuperPacketTurn;
			latest = player->Connection;
		}
		if (player->LastSuperPacketTurn > max_turn)
		{
			max_turn = player->LastSuperPacketTurn;
			latest = player->Connection;
		}
		if (player->LastSuperPacketTurn < min_turn)
			min_turn = player->LastSuperPacketTurn;
	}

	if (min_turn == max_turn)
		return true;

	if (InternalPlayer->LastSuperPacketTurn < max_turn)
	{
		latest->Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_REQUEST_LAST_SUPERPACKET_DATA, GetUserID(),
		                                  InternalPlayer->LastSuperPacketTurn + 1));
		LHPacket* packet =
			latest
				->RawRead(LH_MSERVE_LAST_SUPERPACKET_DATA_TIMEOUT, LH_NETEVENT_TYPE_MSERVE_CLIENT_LAST_SUPERPACKET_DATA)
				->GetPacket();
		lastData = packet->GetDataPtr() + LH_NETEVENT_HEADER_SIZE;
		lastSize = packet->GetDataLen();
		if (lastSize == 0)
			return false;
	}

	if (InternalPlayer->LastSuperPacketTurn > min_turn)
	{
		catchupData = LHSession::BuildSuperpacketDatablock(min_turn + 1, &catchupSize);
		if (catchupSize == 0)
			return false;
	}

	void* data;
	if (catchupData != NULL && lastData != NULL)
	{
		data = malloc(catchupSize + lastSize);
		if (data == NULL)
			return false;
		memcpy(data, catchupData, catchupSize);
		memcpy((char*)data + catchupSize, lastData, lastSize);
	}
	else if (catchupData != NULL)
	{
		data = catchupData;
	}
	else
	{
		if (lastData == NULL)
			return false;
		data = lastData;
	}

	ParseCatchupData(events, data, max_turn - min_turn);
	for (node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHServerPlayer* player = node->payload;
		for (long i = player->LastSuperPacketTurn - min_turn; i < (long)(max_turn - min_turn); i++)
			SendEventCopyToPlayer(player, events[i]);
	}

	if (catchupData != NULL)
		free(catchupData);
	GameTurn = max_turn + 1;
	return true;
}

void LHMessageServer::IgnoreChecksums(unsigned long min_turn, unsigned long max_turn)
{
	LHTimer timer;
	timer.Reset(0);
	timer.Start();

	for (LHLinkedNode<LHServerPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHServerPlayer* player = node->payload;
		for (long i = player->LastSuperPacketTurn - min_turn; i < (long)(max_turn - min_turn); i++)
		{
			unsigned long checksum;
			unsigned long gameTurn;
			LH_USER_ID    userId;
			unsigned long dataSize;
			void*         data;

			long remaining = LH_MSERVE_CATCHUP_CHECKSUM_TIMEOUT - timer.MSeconds();
			if (remaining < 0)
				remaining = 0;
			LHNetEvent* event = player->Connection->RawRead(remaining, LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM);
			if (event != NULL)
				event->VDecode(LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM, &checksum, &gameTurn, &userId, &dataSize,
				               &data);
			else
				ChecksumsEnabled = false;
		}
	}
}

void LHMessageServer::InitialiseChecksumLNGT()
{
	for (LHLinkedNode<LHServerPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHServerPlayer* player = node->payload;
		player->NextChecksumTurn = LH_INVALID_GAME_TURN;
		player->NextFullChecksumTurn = LH_INVALID_GAME_TURN;
	}
}

void LHMessageServer::ParseCatchupData(LHNetEvent** events, void* data, unsigned long count)
{
	LHPacket* packet = (LHPacket*)data;
	for (unsigned long i = 0; i < count; i++)
	{
		*events++ = LHNetEvent::CreateFromPacket(packet);
		packet = (LHPacket*)((char*)packet + (unsigned short)(packet->GetDataLen() + sizeof(packet->header.length)));
	}
}

LH_RETURN LHMessageServer::CheckReadyToGo()
{
	if ((!GameStarted && NumPlayers == NumExpectedPlayers) ||
	    (unsigned long)Timer.MSeconds() > LH_MSERVE_WAIT_FOR_PLAYERS_TIMEOUT)
	{
		StopListeningForConnections();

		unsigned long minTurn = LH_INVALID_GAME_TURN;
		unsigned long maxTurn = LH_INVALID_GAME_TURN;
		if (!WeHaveNoBananas(minTurn, maxTurn))
			return LH_OK;

		Timer.Stop();
		UnsolicitedProcessing = false;
		ChecksumsEnabled = true;
		FullChecksumsEnabled = true;
		Checksums.DeleteAll();
		FullChecksums.DeleteAll();

		LHNetEvent* event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_GAME_LOOP_STARTED, GetUserID(), IdleTime);
		Timer.Stop();
		UnsolicitedProcessing = false;
		SendEventCopyToAllPlayersOnServer(event);
		delete event;

		if (NumPlayers < NumExpectedPlayers)
			GeneratePlayerLeftEvents(NumExpectedPlayers - NumPlayers);
		GameStarted = true;
		InitialiseChecksumLNGT();
		if (minTurn != maxTurn)
			IgnoreChecksums(minTurn, maxTurn);
	}
	return LH_OK;
}

void LHMessageServer::GeneratePlayerLeftEvents(unsigned long count)
{
	for (unsigned long i = 0; i < ARRAY_SIZE(PlayerIDs); i++)
	{
		LH_USER_ID userId = PlayerIDs[i];
		if (userId != 0 && FindServerPlayer(userId) == NULL)
		{
			LHNetEvent* event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_PLAYER_LIST, GetUserID(), Name,
			                                        PlayerNames[i], userId, true, &Players);
			SendEventCopyToAllPlayersOnServer(event);
			delete event;
			count--;
		}
	}

	while (count != 0)
	{
		LHNetEvent* event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_PLAYER_LIST, GetUserID(), Name, L"??",
		                                        LH_ALL_USERS_ID, true, &Players);
		SendEventCopyToAllPlayersOnServer(event);
		delete event;
		count--;
	}
}

LH_RETURN LHMessageServer::ProcessInternalServerStart()
{
	return FinishStartup();
}

LH_RETURN LHMessageServer::ProcessMServeClientRestartGameLoop(bool32_t notify)
{
	if (!UnsolicitedProcessing)
	{
		Timer.Start();
		UnsolicitedProcessing = true;
		if (notify)
		{
			LHNetEvent* event =
				LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_RESTART_GAME_LOOP, GetUserID(), 0, NULL);
			SendEventCopyToAllPlayersOnServer(event);
			delete event;
		}
		return LH_OK;
	}
	return LH_OK;
}

void MessageServerAuthCallback(int local_id, int authenticated, char* error_message, void* instance)
{
	LHMessageServer* server = ((LHMessageServerAuthContext*)instance)->Server;
	LHConnection*    connection = ((LHMessageServerAuthContext*)instance)->Connection;
	if (!authenticated)
	{
		connection->IsInternal();
		server->SendEventToAllPlayersOnServer(LHNetEvent::VCreate(
			LH_NETEVENT_TYPE_SERVER_ERROR, connection->GetUserID(), LHLogger::GetCode(), LHLogger::GetText()));
		Sleep(LH_MSERVE_AUTH_FAILED_DISCONNECT_DELAY);
		connection->Disconnect();
	}
}

LH_RETURN LHMessageServer::ProcessMServeClientChallengeResponse(LHConnection* connection, LHNetEvent* event)
{
	LHTransportInfo transportInfo;
	char            response[LH_MSERVE_CHALLENGE_RESPONSE_SIZE];

	strncpy(response, (char*)event->GetPacket()->GetDataPtr() + LH_NETEVENT_HEADER_SIZE, sizeof(response) - 1);
	connection->GetTransportInfo(&transportInfo, false);
	AuthContext.Server = this;
	AuthContext.Connection = connection;
	return LH_OK;
}

LH_RETURN LHMessageServer::ProcessMServeClientGameFileSaved(LHConnection* connection, LHNetEvent* event)
{
	if (!connection->IsInternal())
		return LH_ERROR;
	if (GameFilePlayer == NULL)
		return LH_ERROR;

	SendEventToPlayer(GameFilePlayer, LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_GAME_FILE, GetUserID(),
	                                                      LHLobby::GameFile, GetUserID(), GameFileTurn));
	GameFilePlayer = NULL;
	GameFileTurn = LH_INVALID_GAME_TURN;
	return LH_OK;
}

LH_RETURN LHMessageServer::ProcessMServeClientStopGameLoop()
{
	if (!UnsolicitedProcessing)
		return LH_OK;

	LHNetEvent* event = LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_STOP_GAME_LOOP, GetUserID(), 0, NULL);
	SendEventCopyToAllPlayersOnServer(event);
	Timer.Stop();
	UnsolicitedProcessing = false;
	delete event;
	return LH_OK;
}

LH_RETURN LHMessageServer::ProcessMServeClientTerminateGameLoop()
{
	LHNetEvent* event =
		LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_CLIENT_TERMINATE_GAME_LOOP, GetUserID(), 0, NULL);
	SendEventCopyToAllPlayersOnServer(event);
	delete event;
	Shutdown();
	return LH_OK;
}

LH_RETURN LHMessageServer::ProcessMServeClientSyncPacket(LHConnection* connection, LHNetEvent* event, bool removed)
{
	LHServerPlayer* player = GetConnectedPlayer(connection);
	if (!removed)
		player->SyncPacketReceived = true;

	if (event != NULL && event->GetPacket()->GetDataLen() - LH_NETEVENT_HEADER_SIZE != 0)
	{
		player->SyncData = malloc(event->GetPacket()->GetDataLen() - LH_NETEVENT_HEADER_SIZE);
		memcpy(player->SyncData, event->GetPacket()->GetDataPtr() + LH_NETEVENT_HEADER_SIZE,
		       event->GetPacket()->GetDataLen() - LH_NETEVENT_HEADER_SIZE);
		player->SyncDataSize = event->GetPacket()->GetDataLen() - LH_NETEVENT_HEADER_SIZE;
	}

	LHLinkedNode<LHServerPlayer*>* node;
	for (node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHServerPlayer* other = node->payload;
		if (other->GetUserID().IsType(LH_USER_ID::CATEGORY_PLAYER) && !other->SyncPacketReceived &&
		    (!removed || other->Connection != connection))
			return LH_OK;
	}

	LHServerPlayer* first = Players.GetAtPosition(0);
	void*           data = NULL;
	unsigned long   size = 0;
	if (first->SyncData != NULL)
	{
		size = first->SyncDataSize;
		data = malloc(size);
		memcpy(data, first->SyncData, size);
	}

	for (node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHServerPlayer* other = node->payload;
		if (size != 0 && (size != other->SyncDataSize || memcmp(data, other->SyncData, size) != 0))
		{
			LHNetEvent* failed =
				LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_SYNC_DATA_FAILED, GetUserID(), 0, NULL);
			SendEventCopyToAllPlayersOnServer(failed);
			delete failed;
			size = 0;
		}
		if (other->GetUserID().IsType(LH_USER_ID::CATEGORY_PLAYER))
			other->SyncPacketReceived = false;
		if (other->SyncData != NULL)
		{
			free(other->SyncData);
			other->SyncData = NULL;
			other->SyncDataSize = 0;
		}
	}

	LHNetEvent* complete = LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_SYNC_COMPLETE, GetUserID(), 0, NULL);
	SendEventCopyToAllPlayersOnServer(complete);
	delete complete;

	if (data == NULL)
		ProcessMServeClientRestartGameLoop(false);
	else
		free(data);
	return LH_OK;
}

void LHMessageServer::RemovePlayerChecksums(LH_USER_ID user_id)
{
restart:
	for (OrderedNode<LHChecksumInfo>* node = Checksums.GetHead(); node != NULL; node = node->next)
	{
		LHChecksumInfo* info = node->GetData();
		if (info->Player->GetUserID() == user_id)
		{
			Checksums.Remove(info);
			delete info;
			goto restart;
		}
	}
}

LH_RETURN LHMessageServer::ProcessMServeClientChecksumData(LHConnection* connection, LHNetEvent* event)
{
	static unsigned long received;
	static OOSInfo       oosInfo[LH_MAX_GAME_PLAYERS];

	unsigned long size;
	void*         data;
	event->VDecode(LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM_DATA, &size, &data);
	received++;

	long            index = GetConnectedPlayer(connection)->GetPlayerID();
	LHServerPlayer* player = GetConnectedPlayer(connection);
	oosInfo[index].Data = malloc(size);
	memcpy(oosInfo[index].Data, data, size);
	oosInfo[index].Size = size;
	oosInfo[index].Player = player;

	if (received == NumPlayers)
	{
		for (long i = 0; i < LH_MAX_GAME_PLAYERS; i++)
		{
			if (oosInfo[i].Data != NULL)
			{
				LHNetEvent* checksumData =
					LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_CHECKSUM_DATA, GetUserID(),
				                        oosInfo[i].Player->GetUserID(), oosInfo[i].Size, oosInfo[i].Data);
				SendEventCopyToAllPlayersOnServer(checksumData);
				delete checksumData;
			}
		}
	}
	return LH_OK;
}

LH_RETURN LHMessageServer::ProcessMServeClientMigrateHost()
{
	LHNetEvent* event = LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_HOST_MIGRATION, GetUserID(), 0, NULL);
	SendEventCopyToAllPlayersOnServerExceptOne(event, InternalPlayer);
	delete event;
	FlushAllConnections(15000);
	return LH_OK;
}

LH_RETURN LHMessageServer::ProcessMServeClientLastSuperPacket(LHConnection* connection, LHNetEvent* event)
{
	LHServerPlayer* player = GetConnectedPlayer(connection);
	unsigned long   gameTurn;
	event->VDecode(LH_NETEVENT_TYPE_MSERVE_CLIENT_LAST_SUPER_PACKET, &gameTurn);
	player->LastSuperPacketTurn = gameTurn;
	CheckReadyToGo();
	return LH_OK;
}

LH_RETURN LHMessageServer::ProcessMServeClientChecksum(LHConnection* connection, LHNetEvent* event, bool32_t full)
{
	if (!FullChecksumsEnabled && full)
		return LH_OK;
	if (!ChecksumsEnabled && !full)
		return LH_OK;

	LHOrderedLinkedList<LHChecksumInfo>* list;
	if (full)
		list = &FullChecksums;
	else
		list = &Checksums;

	LHChecksumInfo* info = new LHChecksumInfo();
	LH_USER_ID      userId;
	void*           data;
	LHServerPlayer* player = GetConnectedPlayer(connection);
	if (full)
	{
		if (event->VDecode(LH_NETEVENT_TYPE_MSERVE_CLIENT_FULL_CHECKSUM, &info->Checksum, &info->GameTurn, &userId,
		                   &info->DataSize) != LH_OK)
			return LH_FAIL;
		info->DataSize = 0;
		data = NULL;
		if (player->NextFullChecksumTurn == LH_INVALID_GAME_TURN)
			player->NextFullChecksumTurn = info->GameTurn;
		player->NextFullChecksumTurn++;
	}
	else
	{
		if (event->VDecode(LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM, &info->Checksum, &info->GameTurn, &userId,
		                   &info->DataSize, &data) != LH_OK)
			return LH_FAIL;
		if (player->NextChecksumTurn == LH_INVALID_GAME_TURN)
			player->NextChecksumTurn = info->GameTurn;
		player->NextChecksumTurn++;
	}

	info->Player = LHPlayer::GetPlayer(userId, (LHLinkedList<LHPlayer*>*)&Players);
	if (info->DataSize != 0)
	{
		info->Data = malloc(info->DataSize);
		memcpy(info->Data, data, info->DataSize);
	}
	list->Insert(info);

	LHChecksumInfo*              first = list->GetHead()->GetData();
	unsigned long                count = 0;
	OrderedNode<LHChecksumInfo>* node;
	for (node = list->GetHead(); node != NULL && node->GetData()->GameTurn == first->GameTurn; node = node->next)
		count++;
	if (count != NumPlayers)
		return LH_OK;

	bool32_t      mismatch = false;
	unsigned long i;
	node = list->GetHead();
	for (i = 0; i < NumPlayers; i++)
	{
		LHChecksumInfo* current = node->GetData();
		node = node->next;
		if (current->Checksum != first->Checksum)
		{
			mismatch = true;
			break;
		}
	}

	if (mismatch)
	{
		if (full)
			FullChecksumsEnabled = false;
		else
			ChecksumsEnabled = false;

		node = list->GetHead();
		for (i = 0; i < NumPlayers; i++)
		{
			LHChecksumInfo* current = node->GetData();
			node = node->next;
			LHNetEvent* failure;
			if (full)
				failure = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_CHECKSUM_SYNC, GetUserID(), current->Checksum,
				                              current->GameTurn, current->Player->GetUserID());
			else
				failure = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_CHECKSUM_FAILURE, GetUserID(), 0,
				                              current->Checksum, current->GameTurn, current->Player->GetUserID(),
				                              current->DataSize, current->Data);
			SendEventCopyToAllPlayersOnServer(failure);
			delete failure;
			list->Remove(current);
			delete current;
		}
	}
	else
	{
		node = list->GetHead();
		for (i = 0; i < NumPlayers; i++)
		{
			LHChecksumInfo* current = node->GetData();
			node = node->next;
			list->Remove(current);
			delete current;
		}
	}
	return LH_OK;
}

bool32_t LHMessageServer::LHChecksumInfo::operator<(const LHChecksumInfo& other)
{
	if (GameTurn == other.GameTurn)
		return Player->GetPlayerID() < other.Player->GetPlayerID();
	return GameTurn < other.GameTurn;
}

unsigned long LHMessageServer::GetProtocolVersion()
{
	return GetMServeProtocolVersion();
}

unsigned long LHMessageServer::GetMServeProtocolVersion()
{
	unsigned long version;
	return LHVersion::GetMajorMinorULONG("LHMessageServerProtocol", &version) == LH_OK ? version : 0;
}

LH_VERSION_INFO("LHMessageServerProtocol", "1", "0", "$Author: Ddeptford $", "$Date: 01/02/15 20:23 $", LH_VERSION_NONE,
                "The first stab at a message server protocol");
