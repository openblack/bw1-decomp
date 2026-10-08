#define LH_MULTIPLAYER_EXPORTS
#include "LHSession.h"

#include <stdlib.h>
#include <string.h>
#include <wchar.h>

#include <GameSpy/src/GameSpy/gcdkey/gcdkeyc.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include "LHLobby.h"
#include "LHMPPacketSave.h"
#include "LHMessageServer.h"
#include "LHNetErrors.h"
#include "LHNetEvent.h"
#include "LHNetUtils.h"
#include "LHPlayer.h"
#include "LHTransportInfo.h"

// The last ten super packets and their super packet numbers, kept so a new host can hand
// them to the players that missed them (LHSession::BuildSuperpacketDatablock).
// TODO: names fabricated. File statics: the whole LHSession class is exported, but these are not.
static LHDynamicQueue<LHNetEvent*>    SuperPacketQ;
static LHDynamicQueue<unsigned long*> SuperPacketNGTQ;

// TODO: the queue helpers below are inlined on both platforms and have no symbols; they are
// probably LHDynamicQueue methods.
template <class T> static inline void EmptyQueue(LHDynamicQueue<T>* queue)
{
	LHDynamicQueueNode<T>* node = queue->Head;
	while (node != NULL)
	{
		LHDynamicQueueNode<T>* next = node->Next;
		delete node->Payload;
		delete node;
		node = next;
	}
	queue->Count = 0;
	queue->Tail = NULL;
	queue->Head = NULL;
}

template <class T> static inline T RemoveFromQueue(LHDynamicQueue<T>* queue)
{
	LHDynamicQueueNode<T>* node = queue->Head;
	T                      payload = node->Payload;
	queue->Head = node->Next;
	delete node;
	if (--queue->Count == 0)
	{
		queue->Tail = NULL;
		queue->Head = NULL;
	}
	return payload;
}

// TODO: 88.6%. Register allocation only: the target keeps `length` in ebp and spills `event` into the dead
// game_turn argument slot; ours keeps `event` in ebp. Declaration order and a ternary VCreate did not move it.
LH_RETURN LHSession::SendChecksum(unsigned long checksum, unsigned long game_turn, void* data, unsigned long length)
{
	LH_USER_ID    savedUser;
	unsigned long savedChecksum;
	unsigned long savedGameTurn;
	unsigned long savedLength;
	void*         savedData;
	LHNetEvent*   event;
	LHNetEvent*   savedEvent;

	if (IsSinglePlayer() || Players.count < 2 || !SendChecksums)
		return LH_OK;

	ChecksumCount++;
	if (SendChecksumData)
		event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM, GetUserID(), checksum, game_turn,
		                            GetUserID(), length, data);
	else
		event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM, GetUserID(), checksum, game_turn,
		                            GetUserID(), 0, NULL);
	if (event == NULL)
		return LH_ERROR;

	switch (GetPacketSource())
	{
	case LH_PACKET_SOURCE_RECORD:
		GetMPPacketSave()->WriteEventToFile(event);
		break;
	case LH_PACKET_SOURCE_PLAYBACK:
		savedEvent = GetMPPacketSave()->ReadEventFromFile();
		if (savedEvent->GetType() != LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM)
		{
			GetMPPacketSave()->UnReadEvent();
			return Write(event);
		}
		if (savedEvent->VDecode(LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM, &savedChecksum, &savedGameTurn, &savedUser,
		                        &savedLength, &savedData) != LH_OK)
			return LH_FAIL;
		if (savedGameTurn != game_turn)
			return LH_FAIL;
		if (savedChecksum != checksum)
		{
			AddToIncomingEventQ(LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_CHECKSUM_FAILURE, savedUser, 1,
			                                        savedChecksum, savedGameTurn, savedUser, savedLength, savedData));
			AddToIncomingEventQ(LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_CHECKSUM_FAILURE, GetUserID(), 0, checksum,
			                                        game_turn, GetUserID(), length, data));
		}
		break;
	}
	return Write(event);
}

// TODO: waits for LHSPrintf::SetString in LHSPrintf.h (see the // PENDING: line); otherwise matches.
LH_RETURN LHSession::SendOOSChecksumAndWaitForSync(unsigned long checksum, unsigned long game_turn, void* data,
                                                   unsigned long length)
{
	if (IsSinglePlayer() || Players.count < 2 || !SendOOSChecksums)
		return LH_OK;

	OOSChecksumCount++;
	Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_CLIENT_FULL_CHECKSUM, GetUserID(), checksum, game_turn,
	                          GetUserID()));
	SyncAllAndStartSession(0xffffffff);
	if (RawPeek(0, LH_NETEVENT_TYPE_MSERVE_CHECKSUM_SYNC) == NULL)
		return LH_OK;

	SendChecksums = false;
	SendOOSChecksums = false;
	memset(OOSData, 0, sizeof(OOSData));
	Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM_DATA, GetUserID(), length, data));
	SyncAllAndStartSession(0xffffffff);
	if (RawPeek(0, LH_NETEVENT_TYPE_MSERVE_CHECKSUM_DATA) == NULL)
		return LH_FAIL;

	LHSPrintf report;
	report.SetString("***OUT OF SYN IN OOS BUILD***\n");
	for (LHLinkedNode<LHPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHPlayer* player = node->payload;
		if (player != NULL)
		{
			LH_USER_ID    user;
			unsigned long size;
			void*         oosData;
			unsigned long playerChecksum;
			unsigned long playerGameTurn;

			LHNetEvent* event = RawRead(0, LH_NETEVENT_TYPE_MSERVE_CHECKSUM_DATA);
			event->VDecode(LH_NETEVENT_TYPE_MSERVE_CHECKSUM_DATA, &user, &size, &oosData);
			OOSData[player->GetPlayerID()].Set(oosData, size, GetPlayer(user));

			event = RawRead(0, LH_NETEVENT_TYPE_MSERVE_CHECKSUM_SYNC);
			if (event->VDecode(LH_NETEVENT_TYPE_MSERVE_CHECKSUM_SYNC, &playerChecksum, &playerGameTurn, &user) != LH_OK)
				return LH_FAIL;
			report.AppendString("<%s:%d> checksum: %d\n", LIBWCHAR2CHAR(GetPlayer(user)->GetName()), playerGameTurn,
			                    playerChecksum);
		}
	}
	return LH_FAIL;
}

void LHSession::ClearAllData()
{
	LHConnection::ClearAllData();
	SendChecksumData = 0;
	memset(LastJoinChannelName, 0, sizeof(LastJoinChannelName));
	GameTickInterval = 0xffffffff;
	LastGameEventRead = NULL;
	LobbyChannel = NULL;
	GameLoopRunning = 0;
	GameEventQ = NULL;
	OwnsGameEventQ = 0;
	ChecksumFromFileFlag = 0;
	ChecksumErrorPlayer = NULL;
	SuperPacketReceived = 0;
	GameFileReceived = 0;
	LocalPlayer = NULL;
	Fake = false;
	memset(OOSData, 0, sizeof(OOSData));
	MGJInProgressFlag = 0;
	SuperPacketGameTurn = -1;
	SuperPacketNumber = -1;
	OOSChecksumCount = -1;
	ChecksumCount = -1;
	EmptyQueue(&SuperPacketQ);
	EmptyQueue(&SuperPacketNGTQ);
	SendChecksums = true;
	SendOOSChecksums = true;
	LeftPlayer = NULL;
	memset(GamePlayerInfo, 0, sizeof(GamePlayerInfo));
}

char* LHSession::GetChannelName()
{
	return LobbyChannel->GetName();
}

void LHSession::ClearLastGameEventRead()
{
	delete LastGameEventRead;
	LastGameEventRead = NULL;
}

LH_RETURN LHSession::Write(void* packet, unsigned long length)
{
	LHNetEvent* event = LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_CLIENT_GAME_PACKET, LocalPlayer->GetPlayerID(),
	                                             length, packet);
	if (event == NULL)
		return LH_ERROR;
	if (Mode == LH_OPERATING_MODE_SYNCHRONOUS)
	{
		GameEventQ->Add(event);
		return LH_OK;
	}
	return Write(event);
}

void LHSession::SetupGamePlayerInfo()
{
	memset(GamePlayerInfo, 0, sizeof(GamePlayerInfo));
	for (LHLinkedNode<LHPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHPlayer* player = node->payload;
		if (player->TeamNumber >= 1 && player->TeamNumber <= 4 && player->TeamMemberNumber >= 1 &&
		    player->TeamMemberNumber <= 4)
		{
			GamePlayerInfo[player->TeamNumber - 1][player->TeamMemberNumber - 1].UserID = player->GetUserID().Number;
			GamePlayerInfo[player->TeamNumber - 1][player->TeamMemberNumber - 1].ClanID = player->field_0x1fc;
		}
	}
}

void LHSession::SendDataPacketToAllGamePlayers(unsigned long param_1, void* data, int length)
{
	Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_CLIENT_DATA_PACKET, LocalPlayer->GetPlayerID(), param_1, length,
	                          data));
}

// TODO: waits for LHPlayer::GetPlayerFromPlayerNumber in LHPlayer.h (see the // PENDING: line).
LH_RETURN LHSession::GetSuperPacketNextData(void** data, unsigned long* length, LHPlayer** player)
{
	if (!IsSinglePlayer() && GetLastEventRead()->GetType() != LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET)
		return LH_ERROR;
	if (GameEventQ->Count == 0)
		return LH_FAIL;

	ClearLastGameEventRead();
	LastGameEventRead = RemoveFromQueue(GameEventQ);
	*data = LastGameEventRead->GetPacket()->GetDataPtr() + 6;
	*length = LastGameEventRead->GetPacket()->GetDataLen() - 6;
	*player = LHPlayer::GetPlayerFromPlayerNumber(LastGameEventRead->GetUserID(), &Players);
	if (*player != NULL)
		return LH_OK;
	return LH_ERROR;
}

void LHSession::ClearGameEventQ()
{
	if (OwnsGameEventQ)
	{
		OwnsGameEventQ = 0;
		if (GameEventQ != NULL)
			EmptyQueue(GameEventQ);
		delete GameEventQ;
		GameEventQ = NULL;
	}
	ClearLastGameEventRead();
}

// The case order (and the separate REMOVE_CONNECTION / HOST_MIGRATION cases that the compiler merges) is
// what reproduces the target's block layout.
LH_RETURN LHSession::ProcessEvent(LHNetEvent* net_event)
{
	long type = net_event->GetType();
	switch (type)
	{
	case LH_NETEVENT_TYPE_REMOVE_CONNECTION:
		return ProcessMServeHostMigration(net_event);
	case LH_NETEVENT_TYPE_SERVER_NEW_IDLE_TIME:
		return ProcessServerNewIdleTime(net_event);
	case LH_NETEVENT_TYPE_MSERVE_GREETING:
		return ProcessMServeGreeting(net_event);
	case LH_NETEVENT_TYPE_SERVER_SHUTDOWN:
		return ProcessServerShutdown();
	case LH_NETEVENT_TYPE_MSERVE_PLAYER_LIST:
		return ProcessMServePlayerList(net_event);
	case LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET:
		return ProcessMServeSuperPacket(net_event);
	case LH_NETEVENT_TYPE_MSERVE_STOP_GAME_LOOP:
		GameLoopRunning = 0;
		return LH_OK;
	case LH_NETEVENT_TYPE_SERVER_ERROR:
	case LH_NETEVENT_TYPE_MSERVE_CHECKSUM_SYNC:
	case LH_NETEVENT_TYPE_MSERVE_HOST_MIGRATION_COMPLETE:
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_DATA_PACKET:
		return LH_OK;
	case LH_NETEVENT_TYPE_MSERVE_GAME_LOOP_STARTED:
		return ProcessMServeGameLoopStarted(net_event);
	case LH_NETEVENT_TYPE_UNKNOWN_6006:
		Close();
		return LH_OK;
	case LH_NETEVENT_TYPE_MSERVE_RESTART_GAME_LOOP:
	case LH_NETEVENT_TYPE_MSERVE_SYNC_COMPLETE:
		GameLoopRunning = 1;
		return LH_OK;
	case LH_NETEVENT_TYPE_MSERVE_CHECKSUM_FAILURE:
		SendChecksums = false;
		return ProcessMServeCheckSumFailure(net_event);
	case LH_NETEVENT_TYPE_MSERVE_GAME_FILE:
		return ProcessMServeGameFile(net_event);
	case LH_NETEVENT_TYPE_MSERVE_MGJ:
		return ProcessMServeMGJ(net_event);
	case LH_NETEVENT_TYPE_MSERVE_CHALLENGE_KEY:
		return ProcessMServeChallengeKey(net_event);
	case LH_NETEVENT_TYPE_MSERVE_HOST_MIGRATION:
		return ProcessMServeHostMigration(net_event);
	default:
		return LH_FAIL;
	}
}

LH_RETURN LHSession::ProcessServerShutdown()
{
	return LH_OK;
}

LH_RETURN LHSession::ProcessMServeGreeting(LHNetEvent* net_event)
{
	unsigned long param_1;
	unsigned long param_2;
	unsigned long protocolVersion;

	if (net_event->VDecode(LH_NETEVENT_TYPE_MSERVE_GREETING, &param_1, &param_2, &protocolVersion, &SendChecksumData) !=
	    LH_OK)
		return LH_ERROR;
	if (protocolVersion != LHMessageServer::GetMServeProtocolVersion())
	{
		Close();
		return LH_FAIL;
	}
	return LH_OK;
}

LH_RETURN LHSession::ProcessMServeRequestLastSuperpacketData(LHNetEvent* net_event)
{
	unsigned long firstTurn;
	unsigned long length;

	if (net_event->VDecode(LH_NETEVENT_TYPE_MSERVE_REQUEST_LAST_SUPERPACKET_DATA, &firstTurn) != LH_OK)
		return LH_FAIL;
	void*       block = BuildSuperpacketDatablock(firstTurn, &length);
	LHNetEvent* reply =
		LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_CLIENT_LAST_SUPERPACKET_DATA, GetUserID(), length, block);
	free(block);
	Write(reply);
	return LH_OK;
}

void* LHSession::BuildSuperpacketDatablock(unsigned long first_turn, unsigned long* length)
{
	LHNetEvent*                         events[11];
	LHDynamicQueueNode<LHNetEvent*>*    node = SuperPacketQ.Head;
	LHDynamicQueueNode<unsigned long*>* turnNode = SuperPacketNGTQ.Head;

	memset(events, 0, sizeof(events));
	for (; node != NULL; node = node->Next)
	{
		unsigned long turn = *turnNode->Payload;
		if (turn >= first_turn)
			events[turn - first_turn] = node->Payload;
		turnNode = turnNode->Next;
	}

	unsigned long size = 0;
	int           i;
	for (i = 0; events[i] != NULL; i++)
		size += (unsigned short)((events[i])->GetPacket()->GetDataLen() + 2);

	unsigned char* block = (unsigned char*)malloc(size);
	unsigned long  offset = 0;
	for (i = 0; events[i] != NULL; i++)
	{
		LHPacket*      packet = events[i]->GetPacket();
		unsigned char* destination = block + offset;
		unsigned long  packetLength = (unsigned short)(packet->GetDataLen() + 2);
		offset += packetLength;
		memcpy(destination, packet, packetLength);
	}
	*length = offset;
	return block;
}

// TODO: 99.9%; the remaining difference is which stack slots the locals get.
LH_RETURN LHSession::ProcessMServeCheckSumFailure(LHNetEvent* net_event)
{
	unsigned long fromFile;
	unsigned long checksum;
	unsigned long gameTurn;
	unsigned long size;
	void*         data;

	if (net_event->GetDataLen() == 0)
		return LH_OK;

	LH_USER_ID user;
	LH_USER_ID failedUser;
	memset(OOSData, 0, sizeof(OOSData));
	if (net_event->VDecode(LH_NETEVENT_TYPE_MSERVE_CHECKSUM_FAILURE, &fromFile, &checksum, &gameTurn, &user, &size,
	                       &data) != LH_OK)
		return LH_FAIL;

	failedUser = user;
	ChecksumErrorData = data;
	ChecksumErrorLength = size;
	ChecksumFromFileFlag = fromFile;
	LHPlayer* player = GetPlayer(user);
	OOSData[player->GetPlayerID()].Set(data, size, player);

	for (LHLinkedNode<LHPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHPlayer* other = node->payload;
		if (other != NULL && other->GetUserID() != failedUser)
		{
			LHNetEvent* event = RawRead(10000, LH_NETEVENT_TYPE_MSERVE_CHECKSUM_FAILURE);
			if (event != NULL)
			{
				event->VDecode(LH_NETEVENT_TYPE_MSERVE_CHECKSUM_FAILURE, &fromFile, &checksum, &gameTurn, &user, &size,
				               &data);
				player = GetPlayer(user);
				OOSData[player->GetPlayerID()].Set(data, size, player);
			}
		}
	}

	AddToFrontOfIncomingEventQ(
		LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_CHECKSUM_FAILURE, GetUserID(), 0, NULL));
	if (GetPacketSource() != LH_PACKET_SOURCE_PLAYBACK)
		ChecksumErrorPlayer = LHPlayer::GetPlayer(user, &Players);
	if (GetPacketSource() == LH_PACKET_SOURCE_RECORD)
	{
		GetMPPacketSave()->Info.field_0x4 = gameTurn;
		GetMPPacketSave()->UpdateInfoBlock();
	}
	return LH_FAIL;
}

LHPlayer* LHSession::GetPlayerFromNum(unsigned long player_number)
{
	for (LHLinkedNode<LHPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHPlayer* player = node->payload;
		if (player != NULL && player->GetPlayerID() == player_number)
			return player;
	}
	return NULL;
}

// TODO: waits for LHPlayer::SetDetails(LHPlayer*) (see the // PENDING: line). Beyond that the target saves ebp
// only on the list-changing path and gives the ignored-event path its own epilogue; re-check once the call is in.
LH_RETURN LHSession::ProcessMServePlayerList(LHNetEvent* net_event)
{
	unsigned long            param_1;
	unsigned short*          name = NULL;
	LH_USER_ID               user;
	LH_PLAYER_EVENT          playerEvent;
	LHLinkedList<LHPlayer*>  playerList;
	LHPlayer*                player;
	LHLinkedNode<LHPlayer*>* node;

	net_event->VDecode(LH_NETEVENT_TYPE_MSERVE_PLAYER_LIST, &param_1, &name, &user, &playerEvent, LHPlayer::Create,
	                   &playerList);
	if (LHPlayer::GetPlayer(user, &Players) != NULL && playerEvent == LH_PLAYER_EVENT_JOINED)
	{
		SetLastEventReadToBeIgnored();
		playerList.DeleteAll();
		return LH_OK;
	}

	if (playerEvent == LH_PLAYER_EVENT_LEFT)
	{
		player = LHPlayer::GetPlayer(user, &Players);
		if (player != NULL)
		{
			Players.Remove(player);
			delete LeftPlayer;
			LeftPlayer = player;
		}
	}
	else
	{
		player = LHPlayer::GetPlayer(user, &playerList);
		for (node = playerList.GetStart(); node != NULL; node = node->next.Get())
		{
			LHPlayer* listed = node->payload;
			if (GetPlayer(listed->GetUserID()) == NULL)
			{
				LHPlayer* newPlayer = new LHPlayer;
				newPlayer->SetDetails(listed);
				if (newPlayer != NULL)
					Players.Add(newPlayer);
			}
		}
	}

	wcscpy(LastJoinChannelName, name);
	LastJoinChannelEvent = playerEvent;
	LastJoinPlayerID = player != NULL ? player->GetPlayerID() : -1;
	for (node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		if ((unsigned long)node->payload->GetUserID() == (unsigned long)GetUserID())
		{
			LocalPlayer = node->payload;
			break;
		}
	}
	playerList.DeleteAll();

	// Rebuild the list in ascending player ID order.
	LHLinkedList<LHPlayer*> sorted;
	while (Players.count != 0)
	{
		LHPlayer* highest = NULL;
		for (node = Players.GetStart(); node != NULL; node = node->next.Get())
		{
			if (highest == NULL || node->payload->GetPlayerID() > highest->GetPlayerID())
				highest = node->payload;
		}
		Players.Remove(highest);
		sorted.Add(highest);
	}
	Players.head = sorted.head;
	Players.count = sorted.count;
	sorted.count = 0;
	sorted.head = NULL;
	return LH_OK;
}

LHPlayer* LHSession::GetLobbyPlayer(LHPlayer* player)
{
	if (Fake)
		return NULL;
	if (LobbyChannel == NULL)
		return NULL;
	for (LHLinkedNode<LHPlayer*>* node = LobbyChannel->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHPlayer* lobbyPlayer = node->payload;
		if ((unsigned long)lobbyPlayer->GetUserID() == (unsigned long)player->GetUserID())
			return lobbyPlayer;
	}
	return NULL;
}

LHSession::~LHSession()
{
	delete LeftPlayer;
	Close();
}

// TODO: waits for the LHPlayer(LHNetUser*) constructor in LHPlayer.h (see the // PENDING: line).
void LHSession::FakeOpen(LHNetUser* user)
{
	LHTransportInfo transportInfo(LH_TRANSPORT_TYPE_BASE);

	RawOpen(user, &transportInfo);
	LHPlayer* player = new LHPlayer(user);
	player->PlayerId = 0;
	LocalPlayer = player;
	Players.Add(LocalPlayer);
	LobbyChannel = new LHLobbyChannel;
	OwnsGameEventQ = 1;
	GameEventQ = new LHDynamicQueue<LHNetEvent*>;
	GameLoopRunning = 1;
	Fake = true;
}

int LHSession::IsSinglePlayer()
{
	if (!IsOpen())
		return 0;
	if (LobbyChannel == NULL)
		return 1;
	return Mode != LH_OPERATING_MODE_ASYNCHRONOUS;
}

LH_RETURN LHSession::ProcessMServeMGJ(LHNetEvent* net_event)
{
	unsigned long param_1 = 0;
	LHLobby*      lobby = GetLobby();

	if (lobby == NULL || lobby->IsDisconnected())
		return LH_FAIL;
	if (net_event->VDecode(LH_NETEVENT_TYPE_MSERVE_MGJ, &param_1) != LH_OK)
		return LH_ERROR;
	if (LHLobby::MGJCallback != NULL)
	{
		switch (LHLobby::MGJCallback(LHLobby::MGJCallbackParam))
		{
		case LH_MGJ_CALLBACK_RETURN_REFUSE:
			lobby->FeedbackLastError(LobbyChannel->GetName());
			return LH_FAIL;
		case LH_MGJ_CALLBACK_RETURN_ACCEPT:
			break;
		case 2:
			SavesCompleteForMGJ();
			break;
		default:
			return LH_ERROR;
		}
	}
	return LH_OK;
}

void LHSession::SavesCompleteForMGJ()
{
	LHLobby* lobby = GetLobby();
	lobby->SendUserFileToServer(GetChannelName());
	if (MessageServerRunningHere())
	{
		Write(LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_CLIENT_GAME_FILE_SAVED, GetUserID(), 0, NULL));
		MGJInProgressFlag = 0;
	}
}

LH_RETURN LHSession::ProcessMServeGameFile(LHNetEvent* net_event)
{
	unsigned long param_1;
	unsigned long param_2 = 0;
	long          gameTurn;
	LHLobby*      lobby = GetLobby();

	if (net_event->VDecode(LH_NETEVENT_TYPE_MSERVE_GAME_FILE, &param_1, &param_2, &gameTurn) != LH_OK)
		return LH_ERROR;
	SuperPacketGameTurn = gameTurn - 1;
	GameFileReceived = 1;
	lobby->CheckSessionReady(LobbyChannel);
	return LH_OK;
}

// TODO: the target passes the LHSPrintf temporary straight to gcd_compute_response, so LHSPrintf's
// operator char*() must be an inline `return Text;` rather than the current dllimport declaration.
LH_RETURN LHSession::ProcessMServeChallengeKey(LHNetEvent* net_event)
{
	char response[100];

	gcd_compute_response("4087-5c31-7b03-1f32", LHSPrintf("%d", *(unsigned long*)net_event->GetDataPtr()).Text,
	                     response);
	return Write(LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_CLIENT_CHALLENGE_RESPONSE, GetUserID(),
	                                      strlen(response) + 1, response));
}

LHPlayer* LHSession::GetPlayer(LH_USER_ID user_id)
{
	for (LHLinkedNode<LHPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHPlayer* player = node->payload;
		if (player->GetUserID().Number == user_id.Number)
			return player;
	}
	return NULL;
}

LH_RETURN LHSession::ProcessMServeSuperPacket(LHNetEvent* net_event)
{
	long gameTurn;

	SuperPacketReceived = 1;
	if (GetPacketSource() == LH_PACKET_SOURCE_PLAYBACK)
	{
		LHNetEvent* received = net_event;
		net_event = GetMPPacketSave()->ReadEventFromFile();
		if (net_event == NULL)
		{
			SetPacketSource(LH_PACKET_SOURCE_NETWORK);
			net_event = received;
		}
		else if (Mode == LH_OPERATING_MODE_SYNCHRONOUS)
		{
			EmptyQueue(GameEventQ);
		}
	}

	if (Mode != LH_OPERATING_MODE_SYNCHRONOUS || GetPacketSource() == LH_PACKET_SOURCE_PLAYBACK)
	{
		if (net_event->DecodeMServeSuperPacket(GameEventQ, &gameTurn) != LH_OK)
			return LH_ERROR;
		if (GetPacketSource() == LH_PACKET_SOURCE_RECORD)
			GetMPPacketSave()->WriteEventToFile(net_event);
	}
	else
	{
		gameTurn = net_event->GetNetGameTurn();
		if (net_event->GetDataLen() != 4)
			return LH_ERROR;
		if (GetPacketSource() == LH_PACKET_SOURCE_RECORD)
		{
			LHNetEvent* superPacket =
				LHNetEvent::CreateMServeSuperPacket(net_event->GetUserID(), gameTurn, GameEventQ, 0);
			GetMPPacketSave()->WriteEventToFile(superPacket);
			delete superPacket;
		}
	}

	ClearLastGameEventRead();
	SuperPacketGameTurn = gameTurn;
	SuperPacketNumber++;
	SuperPacketQ.Add(LHNetEvent::CreateFromEvent(net_event));
	unsigned long* number = new unsigned long;
	*number = SuperPacketNumber;
	SuperPacketNGTQ.Add(number);
	if (SuperPacketQ.Count > 10)
	{
		delete RemoveFromQueue(&SuperPacketQ);
		number = RemoveFromQueue(&SuperPacketNGTQ);
		delete number;
	}
	return LH_OK;
}

LH_RETURN LHSession::ProcessServerNewIdleTime(LHNetEvent* net_event)
{
	unsigned long idleTime;
	unsigned long param_2;

	net_event->VDecode(LH_NETEVENT_TYPE_SERVER_NEW_IDLE_TIME, &idleTime, &param_2);
	GameTickInterval = idleTime;
	return LH_OK;
}

LH_RETURN LHSession::ProcessMServeGameLoopStarted(LHNetEvent* net_event)
{
	unsigned long tickInterval;

	LHLobby::GameRunning = true;
	if (GetPacketSource() != LH_PACKET_SOURCE_NETWORK)
		GetMPPacketSave()->Open(GetPacketSource(), this);
	SuperPacketReceived = 1;
	if (net_event->VDecode(LH_NETEVENT_TYPE_MSERVE_GAME_LOOP_STARTED, &tickInterval) != LH_OK)
		return LH_FAIL;
	GameTickInterval = tickInterval;
	return LH_OK;
}

bool LHSession::SyncPoint(char* name, int value)
{
	char* data = (char*)malloc(strlen(name) + 5);
	*(int*)data = value;
	strcpy(data + 4, name);
	bool result = SyncData(strlen(name) + 5, data, false);
	free(data);
	return result;
}

bool LHSession::SyncData(unsigned long length, void* data, bool param_3)
{
	if (this == NULL || IsDisconnected() || IsSinglePlayer())
		return true;
	Write(LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_CLIENT_SYNC_PACKET, GetUserID(), length, data));
	while (RawPeek(10, LH_NETEVENT_TYPE_MSERVE_SYNC_COMPLETE) == NULL)
		;
	RawRead(0, LH_NETEVENT_TYPE_MSERVE_SYNC_COMPLETE);
	if (RawPeek(0, LH_NETEVENT_TYPE_MSERVE_SYNC_DATA_FAILED) != NULL)
		return false;
	return true;
}

LH_RETURN LHSession::SyncAllAndStartSession(unsigned long timeout)
{
	Write(LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_CLIENT_SYNC_PACKET, GetUserID(), 0, NULL));
	while (RawPeek(0xffffffff, LH_NETEVENT_TYPE_MSERVE_SYNC_COMPLETE) == NULL)
	{
		if (IsDisconnected())
			return LH_FAIL;
	}
	RawRead(0, LH_NETEVENT_TYPE_MSERVE_SYNC_COMPLETE);
	return LH_OK;
}

void LHSession::Close()
{
	if (IsOpen())
	{
		ClearGameEventQ();
		Players.DeleteAll();
		if (Fake)
		{
			delete LobbyChannel;
			LobbyChannel = NULL;
		}
		LHLobby::GameRunning = false;
		LHConnection::Close();
	}
}

LH_RETURN LHSession::SetIdlePeriod(unsigned long period)
{
	if (GameTickInterval == period)
		return LH_OK;
	return Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_CLIENT_NEW_IDLE_TIME, GetUserID(), period));
}

LH_RETURN LHSession::StopSession()
{
	return Write(LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_CLIENT_STOP_GAME_LOOP, GetUserID(), 0, NULL));
}

LH_RETURN LHSession::StartSession()
{
	return Write(LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_CLIENT_RESTART_GAME_LOOP, GetUserID(), 0, NULL));
}

LH_RETURN LHSession::CloseSession()
{
	return Write(LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_CLIENT_TERMINATE_GAME_LOOP, GetUserID(), 0, NULL));
}

LH_RETURN LHSession::Open(LHNetUser* user, LHLobbyChannel* lobby_channel, LHTransportInfo* transport_info, int mgj,
                          LHMessageServer* message_server)
{
	if (transport_info != NULL && transport_info->type != LH_TRANSPORT_TYPE_TCP && message_server == NULL)
		return LH_ERROR;
	if (transport_info != NULL && transport_info->type == LH_TRANSPORT_TYPE_TCP && message_server != NULL)
		return LH_ERROR;

	LobbyChannel = lobby_channel;
	if (mgj)
		MGJInProgressFlag = 1;
	if (OpenClientConnection(user, transport_info) != LH_OK)
		return LH_FAIL;
	if (transport_info->type != LH_TRANSPORT_TYPE_TCP && message_server->ConnectToConnection(this) != LH_OK)
	{
		Close();
		return LH_ERROR;
	}

	if (Mode == LH_OPERATING_MODE_SYNCHRONOUS)
	{
		OwnsGameEventQ = 0;
		GameEventQ = &message_server->EventQueue;
	}
	else
	{
		OwnsGameEventQ = 1;
		GameEventQ = new LHDynamicQueue<LHNetEvent*>;
	}
	GameLoopRunning = 1;
	if (mgj)
		Read(0xffffffff, LH_NETEVENT_TYPE_MSERVE_GAME_FILE);
	Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_CLIENT_REQUEST_PROTOCOL, GetUserID(),
	                          LHMessageServer::GetMServeProtocolVersion()));

	LHTransportInfo local;
	GetTransportInfo(&local, 1);
	if (local.type == LH_TRANSPORT_TYPE_TCP)
	{
		if (strlen(local.GetIP()) != 0)
			Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_CLIENT_LOCAL_ADDRESS, GetUserID(), local.GetIP()));
	}
	return LH_OK;
}

LH_PACKET_SOURCE LHSession::GetPacketSource()
{
	return LobbyChannel->GetPacketSource();
}

void LHSession::SetPacketSource(LH_PACKET_SOURCE source)
{
	LobbyChannel->SetPacketSource(source);
	if (source == LH_PACKET_SOURCE_NETWORK)
	{
		if (GetMPPacketSave()->IsOpen())
		{
			GetMPPacketSave()->RestoreOriginalPlayerList(this);
			GetMPPacketSave()->Close();
		}
	}
}

LHMPPacketSave* LHSession::GetMPPacketSave()
{
	return &LobbyChannel->PacketSave;
}

LHMessageServer* LHSession::GetMessageServer()
{
	return LobbyChannel->InternalMessageServer;
}

// TODO: returns the message server pointer itself as the flag; the original spelling is unknown.
int LHSession::MessageServerRunningHere()
{
	return (int)LobbyChannel->InternalMessageServer;
}

LHLobby* LHSession::GetLobby()
{
	if (LobbyChannel == NULL)
		return NULL;
	return LobbyChannel->GetLobby();
}

int LHSession::NextPacketIsSuperpacket()
{
	LHNetEvent* event = Peek(0);
	if (event != NULL)
		return event->GetType() == LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET;
	return 0;
}

void LHSession::GetLastJoinChannelInfo(unsigned short** name, LH_PLAYER_EVENT* event, unsigned long* player_id)
{
	*name = LastJoinChannelName;
	*event = LastJoinChannelEvent;
	if (player_id != NULL)
		*player_id = LastJoinPlayerID;
}

void LHSession::GetLastJoinChannelInfo(unsigned short** name, LH_PLAYER_EVENT* event)
{
	GetLastJoinChannelInfo(name, event, NULL);
}

void* LHSession::GetUserData(LHPlayer* player)
{
	if (player == NULL)
		return NULL;
	if ((unsigned long)player->GetUserID() == (unsigned long)GetUserID())
		return LHLobby::UserData;
	return player->user_data;
}

unsigned long LHSession::GetUserDataLen(LHPlayer* player)
{
	if (player == NULL)
		return 0;
	if ((unsigned long)player->GetUserID() == (unsigned long)GetUserID())
		return LHLobby::UserDataLen;
	return player->UserDataLen;
}

void LHSession::EmptyEventQ()
{
	if (IsOpen())
		EmptyQueue(GameEventQ);
}

LHSession* LHSession::Create(bool host, LHNetUser* user, LHTransportInfo* transport_info, char* channel_name,
                             unsigned long param_5, unsigned long idle_time, void* game_data,
                             unsigned long game_data_length, unsigned short player_names[][0x30],
                             LH_USER_ID player_ids[])
{
	LHMessageServer* server = NULL;
	LHTransportInfo  localTransportInfo;
	unsigned short   port = 2612;

	LHLobby::MSAcceptorInfo.Set(LH_TRANSPORT_TYPE_UDP, sizeof(port), &port);
	LHLobby::TakeServerOffLan();
	if (host)
	{
		server = LHLobby::StartInternalMessageServer(user, channel_name, param_5, idle_time,
		                                             LH_OPERATING_MODE_ASYNCHRONOUS, 0, player_names, player_ids);
		if (server == NULL)
			return NULL;
	}

	LHSession* session = new LHSession;
	session->LobbyChannel = new LHLobbyChannel;
	session->LobbyChannel->InternalMessageServer = server;
	session->LobbyChannel->SetName(channel_name);
	session->LobbyChannel->SetGameData(game_data_length, game_data);
	session->LobbyChannel->Session = session;
	if (host)
	{
		localTransportInfo.type = LH_TRANSPORT_TYPE_ASYNC;
		session->Open(user, session->LobbyChannel, &localTransportInfo, 0, server);
		server->ForceEventProcess();
	}
	else
	{
		session->Open(user, session->LobbyChannel, transport_info, 0, NULL);
	}
	session->Fake = true;
	if (!session->IsOpen())
	{
		delete session;
		return NULL;
	}
	return session;
}

LH_RETURN LHSession::SetUserData(LH_USER_ID user_id, char* user_file, unsigned long length, void* data)
{
	for (LHLinkedNode<LHPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHPlayer* player = node->payload;
		if (player != NULL && (unsigned long)player->GetUserID() == (unsigned long)user_id)
		{
			player->SetUserFile(user_file);
			player->SetUserData(data, length);
			return LH_OK;
		}
	}
	return LH_ERROR;
}

void LHSession::MigrateHost()
{
	if (IsOpen() && !IsDisconnected() && MessageServerRunningHere() && !IsDisconnected() && IsInternal() &&
	    !IsSinglePlayer())
	{
		Write(LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_CLIENT_MIGRATE_HOST, GetUserID(), 0, NULL));
		Flush(1000);
	}
}

LH_RETURN LHSession::ProcessMServeHostMigration(LHNetEvent* net_event)
{
	LH_USER_ID                  myID = GetUserID();
	LHDynamicQueue<LHNetEvent*> playerLists;

	if (GetMessageServer() != NULL && IsInternal() && net_event->GetUserID().Number == GetUserID().Number &&
	    LobbyChannel != NULL)
	{
		LobbyChannel->ClearInternalMessageServer();
		Disconnect();
		return LH_OK;
	}

	Disconnect();
	for (;;)
	{
		LH_USER_ID      hostID = GetHost()->GetUserID();
		LHTransportInfo transportInfo;
		if (MakeNextPlayerHost(&transportInfo) != LH_OK)
			return LH_FAIL;
		playerLists.Add(LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_PLAYER_LIST, myID, LobbyChannel->GetName(),
		                                    GetPlayer(hostID)->GetName(), hostID, LH_PLAYER_EVENT_LEFT, &Players));
		if ((unsigned long)GetHost()->GetUserID() == (unsigned long)GetUserID())
			break;
		if (ConnectToNewHost(&transportInfo) == LH_OK)
			goto wait;
	}
	if (HostSession(&playerLists) != LH_OK)
		return LH_FAIL;

wait:
	WaitForMigrationCompleted();
	if (IsOpen())
	{
		AddToIncomingEventQ(
			LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_MSERVE_HOST_MIGRATION_COMPLETE, LH_ALL_USERS, 0, NULL));
		while (playerLists.Count != 0)
			AddToIncomingEventQ(RemoveFromQueue(&playerLists));
	}
	return LH_ERROR;
}

// TODO: 75%. The LHTimer helpers: the target calls Stop/SetSpeedUpFactor/MSeconds out of line where we
// inline them, the same unsolved LHTimer.inl shape problem noted in LHConnectionServer::FlushAllConnections.
void LHSession::WaitForMigrationCompleted()
{
	LHTimer     timer;
	LHNetEvent* event;

	timer.Reset(0);
	timer.Start();
	do
	{
		event = RawPeek(0, LH_NETEVENT_TYPE_MSERVE_GAME_LOOP_STARTED);
		if (event != NULL)
			break;
		event = RawRead(0, LH_NETEVENT_TYPE_MSERVE_REQUEST_LAST_SUPERPACKET_DATA);
		if (event != NULL)
		{
			ProcessMServeRequestLastSuperpacketData(event);
			event = NULL;
		}
	} while ((unsigned long)timer.MSeconds() <= 25000);
	if (event == NULL)
		Close();
}

// TODO: 66%. Same LHTimer inline-shape problem as WaitForMigrationCompleted.
LH_RETURN LHSession::ConnectToNewHost(LHTransportInfo* transport_info)
{
	LHNetUser* user = NetUser;
	LHConnection::Close();

	LHTimer timer;
	timer.Reset(0);
	timer.Start();
	transport_info->address.port = 2612;
	do
	{
		Open(user, LobbyChannel, transport_info, 0, NULL);
		if (IsOpen())
			break;
	} while ((unsigned long)timer.MSeconds() <= 10000);
	if (!IsOpen())
		return LH_FAIL;
	Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_CLIENT_LAST_SUPER_PACKET, GetUserID(), SuperPacketNumber));
	return LH_OK;
}

// TODO: 94%. The target frame is 4 bytes smaller (it reuses one slot for the decoded player event and the
// player counter); the code itself lines up.
LH_RETURN LHSession::HostSession(LHDynamicQueue<LHNetEvent*>* player_lists)
{
	memset(LastJoinChannelName, 0, sizeof(LastJoinChannelName));
	GameLoopRunning = 0;
	SuperPacketReceived = 0;
	GameFileReceived = 0;

	LH_USER_ID     playerIDs[32];
	unsigned short playerNames[32][0x30];
	memset(playerNames, 0, sizeof(playerNames));
	memset(playerIDs, 0, sizeof(playerIDs));

	int count = 0;
	for (LHLinkedNode<LHPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHPlayer* player = node->payload;
		wcscpy(playerNames[count], player->GetName());
		playerIDs[count] = player->GetUserID();
		count++;
	}

	for (LHDynamicQueueNode<LHNetEvent*>* listNode = player_lists->Head; listNode != NULL; listNode = listNode->Next)
	{
		unsigned long           param_1;
		unsigned short*         name;
		LH_USER_ID              user;
		LH_PLAYER_EVENT         playerEvent;
		LHLinkedList<LHPlayer*> playerList;

		listNode->Payload->VDecode(LH_NETEVENT_TYPE_MSERVE_PLAYER_LIST, &param_1, &name, &user, &playerEvent,
		                           LHPlayer::Create, &playerList);
		for (int i = 0; i < count; i++)
		{
			if (playerIDs[i] == user)
			{
				playerIDs[i] = LH_USER_ID(0);
				break;
			}
		}
		playerList.DeleteAll();
	}

	LHNetUser*      user = NetUser;
	LHTransportInfo transportInfo;
	unsigned short  port = 2612;
	LHLobby::MSAcceptorInfo.Set(LH_TRANSPORT_TYPE_UDP, sizeof(port), &port);
	LHMessageServer* server = LHLobby::StartInternalMessageServer(
		user, LobbyChannel->GetName(), Players.count - player_lists->Count, GameTickInterval,
		LH_OPERATING_MODE_ASYNCHRONOUS, SuperPacketNumber + 1, playerNames, playerIDs);
	if (server == NULL)
		return LH_ERROR;
	LobbyChannel->InternalMessageServer = server;
	transportInfo.type = LH_TRANSPORT_TYPE_ASYNC;
	LHConnection::Close();
	Open(user, LobbyChannel, &transportInfo, 0, server);
	server->ForceEventProcess();
	if (!IsOpen())
		return LH_ERROR;
	Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_MSERVE_CLIENT_LAST_SUPER_PACKET, GetUserID(), SuperPacketNumber));
	return LH_OK;
}

// TODO: 43%. The target calls LHTransportInfo's implicit operator= (100018f0) for the first assignment and
// inlines it for the second; we inline both. The reason (inline budget share? a nested inline helper on
// LHPlayer?) is unknown.
LH_RETURN LHSession::MakeNextPlayerHost(LHTransportInfo* transport_info)
{
	LHLinkedNode<LHPlayer*>* node;

	for (node = Players.GetStart();; node = node->next.Get())
	{
		if (node == NULL)
			return LH_OK;
		if (node->payload->transport_info.type == LH_TRANSPORT_TYPE_ASYNC)
			break;
	}
	node->payload->transport_info = LHTransportInfo((LH_TRANSPORT_TYPE)0);
	node = node->next.Get();
	LHPlayer* next = node->payload;
	if (next == NULL)
		return LH_ERROR;
	LHTransportInfo* info = next->GetTransportInfo();
	transport_info->type = info->type;
	transport_info->data_len = info->data_len;
	memcpy(transport_info->data, info->data, transport_info->data_len);
	next->transport_info = LHTransportInfo(LH_TRANSPORT_TYPE_ASYNC);
	return LH_OK;
}

LHPlayer* LHSession::GetHost()
{
	for (LHLinkedNode<LHPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHPlayer* player = node->payload;
		if (player->transport_info.type == LH_TRANSPORT_TYPE_ASYNC)
			return player;
	}
	return NULL;
}
