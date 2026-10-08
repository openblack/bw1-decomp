#define LH_MULTIPLAYER_EXPORTS
// TODO: LHSession.h (OOSInfo) comes first only because it currently hides its OOSInfo when
// LHMessageServer.h was included earlier; move it back once that guard is gone.
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

// The server and connection of the last challenge response, the context a CD-key
// authentication callback (see MessageServerAuthCallback) receives. Mac keeps the same
// 8-byte static.
// TODO: name fabricated, as is the struct's.
struct LHMessageServerAuthContext
{
	LHMessageServer* Server;
	LHConnection*    Connection;
};
static LHMessageServerAuthContext AuthContext;

void LHMessageServer::ClearAllData()
{
	LHConnectionServer::ClearAllData();
	GameIdleTime = 0xffffffff;
	GameFileTurn = 0xffffffff;
	GameTurn = 0;
	NextPlayerID = 0;
	NumPlayers = 0;
	GameStarted = FALSE;
	GameFilePlayer = NULL;
	memset(Name, 0, sizeof(Name));
	memset(PlayerNames, 0, sizeof(PlayerNames));
	memset(PlayerIDs, 0, sizeof(PlayerIDs));
	NumExpectedPlayers = 0;
	ChecksumsEnabled = TRUE;
	FullChecksumsEnabled = TRUE;
	StartTime = GetTickCount();
}

LH_RETURN LHMessageServer::Start(LHMPServerStartInfo* start_info, char* name, unsigned long num_players,
                                 unsigned long idle_time)
{
	if (LHConnectionServer::Start(start_info, start_info->AcceptorInfo, start_info->BroadcastInfo,
	                              LH_USER_ID::CATEGORY_LOBBY_SERVER, start_info->OperatingMode, NULL, idle_time,
	                              15) != LH_OK)
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
	UnsolicitedProcessing = TRUE;
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
		return ProcessMServeClientRestartGameLoop(TRUE);
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
		return ProcessMServeClientChecksum(connection, event, FALSE);
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_GAME_FILE_SAVED:
		return ProcessMServeClientGameFileSaved(connection, event);
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_SYNC_PACKET:
		return ProcessMServeClientSyncPacket(connection, event, false);
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_DATA_PACKET:
		SendEventCopyToAllPlayersOnServer(event);
		FlushAllConnections(60000);
		return LH_OK;
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_FULL_CHECKSUM:
		return ProcessMServeClientChecksum(connection, event, TRUE);
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
		event = LHNetEvent::CreateMServeSuperPacket(GetUserID(), GameTurn, &EventQueue, TRUE);
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
	                                        player->GetUserID(), TRUE, &Players);
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

// TODO: 81%. The target calls the exported LHTransportInfo::operator= (100018f0) for the
// transport_info assignment and builds the temporary above its LHIAddress on the stack; cl
// inlines the assignment here (it is <= 40 IL units, so never budget-limited), while
// LHConnectionServer::BaseAddConnection's identical assignment is inlined in the target too.
// The original form of this assignment is unknown.
LH_RETURN LHMessageServer::AddConnection(LHServerPlayer* player)
{
	if (!player->GetUserID().IsType(LH_USER_ID::CATEGORY_PLAYER))
		return LH_ERROR;

	unsigned long id = NextPlayerID++;
	player->PlayerId = id;
	NumPlayers++;

	if (player->Connection->GetTransportType() == LH_TRANSPORT_TYPE_TCP)
	{
		LHNetEvent* event = player->Connection->RawRead(1000, LH_NETEVENT_TYPE_MSERVE_CLIENT_LOCAL_ADDRESS);
		if (event != NULL)
		{
			char* ip = NULL;
			if (event->VDecode(LH_NETEVENT_TYPE_MSERVE_CLIENT_LOCAL_ADDRESS, &ip) == LH_OK && ip != NULL)
				player->transport_info = LHTransportInfo(ip, player->GetTransportInfo()->GetPort());
		}
	}

	LHNetEvent* event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_PLAYER_LIST, GetUserID(), Name, player->GetName(),
	                                        player->GetUserID(), FALSE, &Players);
	SendEventCopyToAllPlayersOnServer(event);
	delete event;

	if (GameStarted)
	{
		// A late joiner: it gets the game file once a client has saved it.
		GameFilePlayer = player;
		GameFileTurn = GameTurn;
		player->Connection->Write(
			LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_GAME_LOOP_STARTED, GetUserID(), IdleTime));
		event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_MGJ, GetUserID(), player->GetUserID());
		SendEventCopyToAllPlayersOnServerExceptOne(event, player);
		FullChecksumsEnabled = FALSE;
		ChecksumsEnabled = FALSE;
		delete event;
	}
	else
	{
		CheckReadyToGo();
	}
	return LH_OK;
}

// TODO: one `lea edi, [edx+eax]` has its operands swapped (data + catchupSize); every spelling
// of the addition tried compiles the same.
bool LHMessageServer::WeHaveNoBananas(unsigned long& min_turn, unsigned long& max_turn)
{
	if (!GameTurn)
		return true;

	void*         lastData = NULL;
	void*         catchupData = NULL;
	unsigned long catchupSize = 0;
	LHConnection* latest = NULL;
	unsigned long lastSize = 0;
	LHNetEvent*   events[10];

	LHLinkedNode<LHServerPlayer*>* node;
	for (node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHServerPlayer* player = node->payload;
		if (player->field_0x220 == 0xffffffff)
			return false;
		if (max_turn == 0xffffffff)
		{
			min_turn = max_turn = player->field_0x220;
			latest = player->Connection;
		}
		if (player->field_0x220 > max_turn)
		{
			max_turn = player->field_0x220;
			latest = player->Connection;
		}
		if (player->field_0x220 < min_turn)
			min_turn = player->field_0x220;
	}

	if (min_turn == max_turn)
		return true;

	if (InternalPlayer->field_0x220 < max_turn)
	{
		latest->Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_REQUEST_LAST_SUPERPACKET_DATA, GetUserID(),
		                                  InternalPlayer->field_0x220 + 1));
		LHPacket* packet = latest->RawRead(60000, LH_NETEVENT_TYPE_MSERVE_CLIENT_LAST_SUPERPACKET_DATA)->GetPacket();
		lastData = packet->GetDataPtr() + 6;
		lastSize = packet->GetDataLen();
		if (lastSize == 0)
			return false;
	}

	if (InternalPlayer->field_0x220 > min_turn)
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
		for (long i = player->field_0x220 - min_turn; i < (long)(max_turn - min_turn); i++)
			SendEventCopyToPlayer(player, events[i]);
	}

	if (catchupData != NULL)
		free(catchupData);
	GameTurn = max_turn + 1;
	return true;
}

// TODO: 72%. Inline budget, the same symptom as LHConnectionServer::FlushAllConnections: the
// target keeps Stop() inside Reset(0) and MSeconds() inside Start()'s SetSpeedUpFactor() as calls
// (the latter is why MSeconds is emitted out of line at 100148c0), ours inlines both.
// tools/inline-budget.py sim reproduces our object with the current LHTimer sizes (Reset 45, Stop 55,
// SetSpeedUpFactor 78, MSeconds 44, ctor 60); the target needs roughly twice as many top-level
// inline call sites after the constructor (e.g. an iterator-based player loop, as on Mac).
// With LHTimer.inl's MSeconds as `unsigned long ticks = GetTickCount() - TickCount; ...` this
// reaches 81%.
void LHMessageServer::IgnoreChecksums(unsigned long min_turn, unsigned long max_turn)
{
	LHTimer timer;
	timer.Reset(0);
	timer.Start();

	for (LHLinkedNode<LHServerPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHServerPlayer* player = node->payload;
		for (long i = player->field_0x220 - min_turn; i < (long)(max_turn - min_turn); i++)
		{
			unsigned long checksum;
			unsigned long gameTurn;
			LH_USER_ID    userId;
			unsigned long dataSize;
			void*         data;

			long remaining = 10000 - timer.MSeconds();
			if (remaining < 0)
				remaining = 0;
			LHNetEvent* event = player->Connection->RawRead(remaining, LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM);
			if (event != NULL)
				event->VDecode(LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM, &checksum, &gameTurn, &userId, &dataSize,
				               &data);
			else
				ChecksumsEnabled = FALSE;
		}
	}
}

void LHMessageServer::InitialiseChecksumLNGT()
{
	for (LHLinkedNode<LHServerPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHServerPlayer* player = node->payload;
		player->field_0x224 = 0xffffffff;
		player->field_0x228 = 0xffffffff;
	}
}

void LHMessageServer::ParseCatchupData(LHNetEvent** events, void* data, unsigned long count)
{
	LHPacket* packet = (LHPacket*)data;
	for (unsigned long i = 0; i < count; i++)
	{
		*events++ = LHNetEvent::CreateFromPacket(packet);
		packet = (LHPacket*)((char*)packet + (unsigned short)(packet->GetDataLen() + 2));
	}
}

// TODO: 70%. Inline budget: the target keeps the first Stop()'s SetSpeedUpFactor() and the
// second Stop()'s nested MSeconds() as calls; ours inlines them. The two DeleteAll() helpers
// already reproduce the target's out-of-line Remove calls (a top-level Remove would always be
// inlined). The target also keeps &Timer in ebp for both Stop() calls.
LH_RETURN LHMessageServer::CheckReadyToGo()
{
	if ((!GameStarted && NumPlayers == NumExpectedPlayers) || (unsigned long)Timer.MSeconds() > 20000)
	{
		StopListeningForConnections();

		unsigned long minTurn = 0xffffffff;
		unsigned long maxTurn = 0xffffffff;
		if (!WeHaveNoBananas(minTurn, maxTurn))
			return LH_OK;

		Timer.Stop();
		UnsolicitedProcessing = FALSE;
		ChecksumsEnabled = TRUE;
		FullChecksumsEnabled = TRUE;
		Checksums.DeleteAll();
		FullChecksums.DeleteAll();

		LHNetEvent* event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_GAME_LOOP_STARTED, GetUserID(), IdleTime);
		Timer.Stop();
		UnsolicitedProcessing = FALSE;
		SendEventCopyToAllPlayersOnServer(event);
		delete event;

		if (NumPlayers < NumExpectedPlayers)
			GeneratePlayerLeftEvents(NumExpectedPlayers - NumPlayers);
		GameStarted = TRUE;
		InitialiseChecksumLNGT();
		if (minTurn != maxTurn)
			IgnoreChecksums(minTurn, maxTurn);
	}
	return LH_OK;
}

void LHMessageServer::GeneratePlayerLeftEvents(unsigned long count)
{
	for (unsigned long i = 0; i < 32; i++)
	{
		LH_USER_ID userId = PlayerIDs[i];
		if (userId != 0 && FindServerPlayer(userId) == NULL)
		{
			LHNetEvent* event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_PLAYER_LIST, GetUserID(), Name,
			                                        PlayerNames[i], userId, TRUE, &Players);
			SendEventCopyToAllPlayersOnServer(event);
			delete event;
			count--;
		}
	}

	// Players who never got as far as the server.
	while (count != 0)
	{
		LHNetEvent* event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_PLAYER_LIST, GetUserID(), Name, L"??",
		                                        0xffffffff, TRUE, &Players);
		SendEventCopyToAllPlayersOnServer(event);
		delete event;
		count--;
	}
}

LH_RETURN LHMessageServer::ProcessInternalServerStart()
{
	return FinishStartup();
}

LH_RETURN LHMessageServer::ProcessMServeClientRestartGameLoop(int notify)
{
	if (!UnsolicitedProcessing)
	{
		Timer.Start();
		UnsolicitedProcessing = TRUE;
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

// An unreferenced callback with the signature of a GameSpy CD-key authentication callback
// (localid, authenticated, errmsg, instance); its instance is the AuthContext that
// ProcessMServeClientChallengeResponse fills in. No Mac counterpart.
// TODO: name fabricated.
// BW1W120 10014d70 BW1M119 null
void MessageServerAuthCallback(int local_id, int authenticated, char* error_message, void* instance)
{
	LHMessageServer* server = ((LHMessageServerAuthContext*)instance)->Server;
	LHConnection*    connection = ((LHMessageServerAuthContext*)instance)->Connection;
	if (!authenticated)
	{
		// TODO: the result is unused; probably a release-stripped log statement.
		connection->IsInternal();
		server->SendEventToAllPlayersOnServer(LHNetEvent::VCreate(
			LH_NETEVENT_TYPE_SERVER_ERROR, connection->GetUserID(), LHLogger::GetCode(), LHLogger::GetText()));
		Sleep(5000);
		connection->Disconnect();
	}
}

LH_RETURN LHMessageServer::ProcessMServeClientChallengeResponse(LHConnection* connection, LHNetEvent* event)
{
	LHTransportInfo transportInfo;
	char            response[100];

	strncpy(response, (char*)event->GetPacket()->GetDataPtr() + 6, sizeof(response) - 1);
	connection->GetTransportInfo(&transportInfo, FALSE);
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
	GameFileTurn = 0xffffffff;
	return LH_OK;
}

LH_RETURN LHMessageServer::ProcessMServeClientStopGameLoop()
{
	if (!UnsolicitedProcessing)
		return LH_OK;

	LHNetEvent* event = LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_STOP_GAME_LOOP, GetUserID(), 0, NULL);
	SendEventCopyToAllPlayersOnServer(event);
	Timer.Stop();
	UnsolicitedProcessing = FALSE;
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

// TODO: 91%. Inline budget: the target calls LHLinkedList::GetNodeAtPosition (emitted out of
// line at 10015a60) inside the inlined GetAtPosition; ours inlines it. The register differences
// follow from that (the target keeps &Players in ebp for the call).
LH_RETURN LHMessageServer::ProcessMServeClientSyncPacket(LHConnection* connection, LHNetEvent* event, bool removed)
{
	LHServerPlayer* player = GetConnectedPlayer(connection);
	if (!removed)
		player->field_0x21c = TRUE;

	// Written as a subtraction: `!= 6` compiles to a 16-bit compare.
	if (event != NULL && event->GetPacket()->GetDataLen() - 6 != 0)
	{
		player->field_0x230 = (uint32_t)malloc(event->GetPacket()->GetDataLen() - 6);
		memcpy((void*)player->field_0x230, event->GetPacket()->GetDataPtr() + 6, event->GetPacket()->GetDataLen() - 6);
		player->field_0x22c = event->GetPacket()->GetDataLen() - 6;
	}

	LHLinkedNode<LHServerPlayer*>* node;
	for (node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHServerPlayer* other = node->payload;
		if (other->GetUserID().IsType(LH_USER_ID::CATEGORY_PLAYER) && !other->field_0x21c &&
		    (!removed || other->Connection != connection))
			return LH_OK;
	}

	LHServerPlayer* first = Players.GetAtPosition(0);
	void*           data = NULL;
	unsigned long   size = 0;
	if (first->field_0x230 != 0)
	{
		size = first->field_0x22c;
		data = malloc(size);
		memcpy(data, (void*)first->field_0x230, size);
	}

	for (node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHServerPlayer* other = node->payload;
		if (size != 0 && (size != other->field_0x22c || memcmp(data, (void*)other->field_0x230, size) != 0))
		{
			LHNetEvent* failed =
				LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_SYNC_DATA_FAILED, GetUserID(), 0, NULL);
			SendEventCopyToAllPlayersOnServer(failed);
			delete failed;
			size = 0;
		}
		if (other->GetUserID().IsType(LH_USER_ID::CATEGORY_PLAYER))
			other->field_0x21c = FALSE;
		if (other->field_0x230 != 0)
		{
			free((void*)other->field_0x230);
			other->field_0x230 = 0;
			other->field_0x22c = 0;
		}
	}

	LHNetEvent* complete = LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_SYNC_COMPLETE, GetUserID(), 0, NULL);
	SendEventCopyToAllPlayersOnServer(complete);
	delete complete;

	if (data == NULL)
		ProcessMServeClientRestartGameLoop(FALSE);
	else
		free(data);
	return LH_OK;
}

void LHMessageServer::RemovePlayerChecksums(LH_USER_ID user_id)
{
	// Removing an entry invalidates the walk, so it starts again from the head.
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

// TODO: 88%. The target computes &oosInfo[index] once and keeps the decoded size in a register
// copy across malloc; `OOSInfo* info = &oosInfo[index]` gets 88.7%. Also the .bss layout: the target
// puts the two statics (and the init guard) before AuthContext and LH_ALL_USERS, which cl6's bucket
// order only gives if the guard's compiler-numbered name ($S<n>) hashes below them.
// The 8-byte slot of the counter in the target (100692c0) is unexplained.
LH_RETURN LHMessageServer::ProcessMServeClientChecksumData(LHConnection* connection, LHNetEvent* event)
{
	static unsigned long received;
	static OOSInfo       oosInfo[32];

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
		for (long i = 0; i < 32; i++)
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
	player->field_0x220 = gameTurn;
	CheckReadyToGo();
	return LH_OK;
}

// TODO: 99.4%. After the inlined Insert the target loads the list head before storing the
// incremented count; scheduling only.
LH_RETURN LHMessageServer::ProcessMServeClientChecksum(LHConnection* connection, LHNetEvent* event, int full)
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
		if (player->field_0x228 == 0xffffffff)
			player->field_0x228 = info->GameTurn;
		player->field_0x228++;
	}
	else
	{
		if (event->VDecode(LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM, &info->Checksum, &info->GameTurn, &userId,
		                   &info->DataSize, &data) != LH_OK)
			return LH_FAIL;
		if (player->field_0x224 == 0xffffffff)
			player->field_0x224 = info->GameTurn;
		player->field_0x224++;
	}

	info->Player = LHPlayer::GetPlayer(userId, (LHLinkedList<LHPlayer*>*)&Players);
	if (info->DataSize != 0)
	{
		info->Data = malloc(info->DataSize);
		memcpy(info->Data, data, info->DataSize);
	}
	list->Insert(info);

	// Wait until every player has sent its checksum for the oldest turn.
	LHChecksumInfo*              first = list->GetHead()->GetData();
	unsigned long                count = 0;
	OrderedNode<LHChecksumInfo>* node;
	for (node = list->GetHead(); node != NULL && node->GetData()->GameTurn == first->GameTurn; node = node->next)
		count++;
	if (count != NumPlayers)
		return LH_OK;

	int           mismatch = FALSE;
	unsigned long i;
	node = list->GetHead();
	for (i = 0; i < NumPlayers; i++)
	{
		LHChecksumInfo* current = node->GetData();
		node = node->next;
		if (current->Checksum != first->Checksum)
		{
			mismatch = TRUE;
			break;
		}
	}

	if (mismatch == TRUE)
	{
		if (full)
			FullChecksumsEnabled = FALSE;
		else
			ChecksumsEnabled = FALSE;

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

int LHMessageServer::LHChecksumInfo::operator<(const LHChecksumInfo& other)
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

// Registers the message server protocol version ("LHMessageServerProtocol" 1.0) with LHLogR.dll;
// GetMServeProtocolVersion() reads it back. Same pattern as LHConnection.cpp.
// TODO: names fabricated; Windows only (the Mac build has no version blocks). Nothing reads VersionPointer.
static LHVersionBlock VersionBlock = {
	"YyHhTtMm",
	"RELEASE",
	"LHMessageServerProtocol",
	"1",
	"0",
	"$Author: Ddeptford $",
	"$Date: 01/02/15 20:23 $",
	"NULL",
	"The first stab at a message server protocol",
	"NULL",
	"NULL",
	"",
	"YyHhTtMM",
};
static LHVersion  VersionInformation(&VersionBlock);
static LHVersion* VersionPointer = &VersionInformation;
