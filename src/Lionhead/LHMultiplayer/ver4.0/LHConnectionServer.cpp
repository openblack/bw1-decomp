// Original source path (from the LHLogger call in Start):
// C:\dev\MP\Libs\LIONHEAD\LHMultiplayer\VER4.0\LHConnectionServer.cpp
#define LH_MULTIPLAYER_EXPORTS
#include "LHConnectionServer.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <Lionhead/LHLog/ver4.0/LHLogger.h>
#include "LHConnection.h"
#include "LHMPServerStartInfo.h"
#include "LHNetErrors.h"
#include "LHNetEvent.h"
#include "LHNetUtils.h"
#include "LHServerListener.h"
#include "LHTransportInfo.h"

// Event callbacks handed to LHConnection::SetEventFunction and the listener. They are
// emitted after Start, their first user.
// BW1W120 10005c50 BW1M119 010e2a30 (LHCombined Release)
static LH_RETURN BaseProcessEvent(LHNetEvent* event, LHConnection* connection, void* context);
// BW1W120 10005c70 BW1M119 010e29b0 (LHCombined Release)
static LH_RETURN BaseAddConnection(LHConnection* connection, void* context);
// BW1W120 10006290 BW1M119 010e0f90 (LHCombined Release)
static void ProcessEventHook(void* context);
// BW1W120 100062a0 BW1M119 010e0f20 (LHCombined Release)
static void LHConnectionServerThread(void* context);

void LHConnectionServer::LHServerPlayer::ClearAllData()
{
	field_0x200 = 0;
	CodeChecksumString = NULL;
	Connection = NULL;
	field_0x20c = 0xffffffff;
	field_0x214 = 0;
	field_0x21c = 0;
	field_0x220 = 0xffffffff;
	field_0x224 = 0xffffffff;
	field_0x228 = 0xffffffff;
	field_0x22c = 0;
	field_0x230 = 0;
}

LHConnectionServer::LHServerPlayer::~LHServerPlayer()
{
	ClearCodeChecksumString();
}

void LHConnectionServer::LHServerPlayer::ClearCodeChecksumString()
{
	if (CodeChecksumString != NULL)
		free(CodeChecksumString);
	CodeChecksumString = NULL;
}

void LHConnectionServer::LHServerPlayer::SetCodeChecksumString(char* checksum)
{
	ClearCodeChecksumString();
	CodeChecksumString = (char*)malloc(strlen(checksum) + 1);
	if (CodeChecksumString != NULL)
		strcpy(CodeChecksumString, checksum);
}

void LHConnectionServer::ClearAllData()
{
	memset(Signals, 0, sizeof(Signals));
	NumSignals = 0;
	Started = FALSE;
	Mode = LH_OPERATING_MODE_NONE;
	NetUser.Logout();
	LastUnsolicitedTime = 0;
	UnsolicitedProcessing = 0;
	memset(RegisteredName, 0, sizeof(RegisteredName));
	UserName = NULL;
	Listener = NULL;
	StartedEvent = NULL;
	ParentConnection = NULL;
	InternalPlayer = NULL;
}

void LHConnectionServer::ClearAllocs()
{
	if (StartedEvent != NULL)
	{
		CloseHandle(StartedEvent);
		StartedEvent = NULL;
	}
}

void LHConnectionServer::ClearListenerServer()
{
	if (Listener != NULL)
	{
		Listener->Shutdown();
		delete Listener;
		Listener = NULL;
	}
}

// TODO: 96.4%. Only the inlined LHLinkedList::AddToEnd differs: the target keeps the unthreaded
// `new` guard (mov edx, eax / xor edx, edx / test edx, edx) that cl threads away here; the same
// open puzzle as LHMemoryLeak's LHLinkedList<char>::AddToEnd.
LH_RETURN LHConnectionServer::BaseAddConnection(LHConnection* connection)
{
	if (connection->GetTransportType() == LH_TRANSPORT_TYPE_TCP && !Started)
		return LH_ERROR;

	if (Players.count >= 100)
	{
		connection->Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_ERROR, NetUser.GetID(), LHLogger::GetCode(),
		                                      LHLogger::GetText()));
		Sleep(500);
		connection->Close();
		return LH_FAIL;
	}

	LHServerPlayer* player = new LHServerPlayer();
	player->SetDetails(connection->GetConnectedUserName(), connection->GetConnectedUserID(), -1);
	player->Connection = connection;

	LHTransportInfo transportInfo;
	connection->GetTransportInfo(&transportInfo, FALSE);
	player->transport_info = transportInfo;

	if (connection->Mode != LH_OPERATING_MODE_SYNCHRONOUS)
	{
		Signals[NumSignals] = connection->GetSignalDataToRead();
		if (Signals[NumSignals] == NULL)
			return LH_ERROR;
		NumSignals++;
	}

	Players.AddToEnd(player);
	if (player->Connection->GetTransportType() == LH_TRANSPORT_TYPE_ASYNC)
		InternalPlayer = player;

	return AddConnection(player);
}

LH_RETURN LHConnectionServer::Start(LHMPServerStartInfo* start_info, LHTransportInfo* acceptor_info,
                                    LHTransportInfo* broadcast_info, LH_USER_ID::CATEGORY category,
                                    LH_OPERATING_MODE mode, LHConnection* parent_connection, unsigned long idle_time,
                                    unsigned long param_8)
{
	unsigned long numSignals;
	HANDLE*       signals;

#line 171 "C:\\dev\\MP\\Libs\\LIONHEAD\\LHMultiplayer\\VER4.0\\LHConnectionServer.cpp"
	LHLogger::LogS(LHLogLibraryName, __FILE__, __LINE__, "Starting RELEASE server\n");

	if (start_info->RegisteredName == NULL)
		return LH_FAIL;
	if (start_info->user == NULL)
		return LH_FAIL;
	if (Started)
		return LH_FAIL;
	if (Players.count != 0)
		return LH_FAIL;
	if (mode != LH_OPERATING_MODE_SYNCHRONOUS && mode != LH_OPERATING_MODE_ASYNCHRONOUS)
		return LH_FAIL;
	if (acceptor_info != NULL && broadcast_info != NULL && broadcast_info != (LHTransportInfo*)-1 &&
	    broadcast_info->type != acceptor_info->type)
		return LH_ERROR;

	ShutdownEvent = NULL;
	numSignals = 0;
	strncpy(RegisteredName, start_info->RegisteredName, sizeof(RegisteredName) - 1);
	UserName = _strdup(LIBWCHAR2CHAR(start_info->user->GetName()));
	NetUser.Login(start_info->user, category);
	Mode = mode;
	IdleTime = idle_time;
	InitializeCriticalSection(&SharedDataLock);

	if (mode == LH_OPERATING_MODE_ASYNCHRONOUS)
	{
		LH_TRANSPORT_TYPE type;
		if (broadcast_info != NULL)
			type = broadcast_info->type;
		if (acceptor_info != NULL)
			type = acceptor_info->type;

		Listener = LHServerListener::Create(type);
		if (Listener == NULL)
			return LH_NO_MEMORY;

		if (Listener->BaseStartListening(&NetUser, this, ::BaseAddConnection, acceptor_info, broadcast_info,
		                                 ::BaseProcessEvent) != LH_OK)
		{
			delete Listener;
			Listener = NULL;
		}
		else if (Listener->GetActivitySignals(&numSignals, &signals))
		{
			Shutdown();
			return LH_FAIL;
		}

		for (unsigned long i = 0; i < numSignals; i++)
		{
			Signals[NumSignals] = signals[i];
			if (signals[i] == NULL)
				return LH_ERROR;
			NumSignals++;
		}
	}

	if (parent_connection != NULL)
	{
		if (ConnectToConnection(parent_connection) != LH_OK)
		{
			Shutdown();
			return LH_ERROR;
		}
		ParentConnection = parent_connection;
	}

	if (mode == LH_OPERATING_MODE_ASYNCHRONOUS)
	{
		StartedEvent = CreateEventA(NULL, FALSE, FALSE, NULL);
		if (StartedEvent == NULL)
			return LH_FAIL;
		ShutdownEvent = CreateEventA(NULL, TRUE, FALSE, NULL);
		// Rechecks StartedEvent rather than ShutdownEvent (both platforms).
		if (StartedEvent == NULL)
			return LH_FAIL;
		if (_lhbeginthread("LHConnectionServerThread", LHConnectionServerThread, 0, this, 15) == -1)
		{
			Shutdown();
			return LH_FAIL;
		}
	}
	else if (SendStartupEvent() != LH_OK)
	{
		return LH_FAIL;
	}

	return LH_OK;
}

static LH_RETURN BaseProcessEvent(LHNetEvent* event, LHConnection* connection, void* context)
{
	if (context == NULL)
		return LH_ERROR;
	return ((LHConnectionServer*)context)->BaseProcessEvent(connection, event);
}

static LH_RETURN BaseAddConnection(LHConnection* connection, void* context)
{
	if (context == NULL)
		return LH_ERROR;
	return ((LHConnectionServer*)context)->ConnectToConnection(connection);
}

LH_RETURN LHConnectionServer::SendStartupEvent()
{
	LHNetEvent* event = LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_INTERNAL_SERVER_START, NetUser.GetID(), 0, NULL);
	ProcessEvent(NULL, event);
	delete event;
	return LH_OK;
}

LH_RETURN LHConnectionServer::FinishStartup()
{
	Started = TRUE;
	ResetEvent(ShutdownEvent);
	if (Mode == LH_OPERATING_MODE_ASYNCHRONOUS && !SetEvent(StartedEvent))
		return LH_ERROR;
	return LH_OK;
}

LH_RETURN LHConnectionServer::WaitUntilOpComplete(HANDLE event)
{
	// A synchronous server runs on the caller's thread, so there is nothing to wait for.
	if (Mode != LH_OPERATING_MODE_SYNCHRONOUS)
	{
		DWORD result = WaitForSingleObject(event, 15500);
		if (result != WAIT_OBJECT_0)
		{
			if (result == WAIT_ABANDONED || result == WAIT_TIMEOUT)
				return LH_FAIL;
			if (result == WAIT_FAILED)
				return LH_ERROR;
			return LH_FAIL;
		}
	}
	return LH_OK;
}

LH_RETURN LHConnectionServer::WaitUntilStarted()
{
	WaitUntilOpComplete(StartedEvent);
	return Mode != LH_OPERATING_MODE_NONE ? LH_OK : LH_ERROR;
}

LH_RETURN LHConnectionServer::WaitUntilShutdown()
{
	if (Mode == LH_OPERATING_MODE_NONE)
		return LH_OK;
	WaitUntilOpComplete(ShutdownEvent);
	return Mode != LH_OPERATING_MODE_NONE ? LH_ERROR : LH_OK;
}

void LHConnectionServer::LockSharedDataStructures()
{
	EnterCriticalSection(&SharedDataLock);
}

void LHConnectionServer::UnlockSharedDataStructures()
{
	LeaveCriticalSection(&SharedDataLock);
}

LHConnectionServer::~LHConnectionServer()
{
	ConnectionServerShutdown(true);
	if (ShutdownEvent != NULL)
		CloseHandle(ShutdownEvent);
}

// TODO: 70%. Inline budget: the target keeps Stop() (inside the second Reset) and
// SetSpeedUpFactor() (inside Start) as calls, ours inlines both. Mac walks the list with
// LHLinkedListIterator<LHServerPlayer*>. Trial iterators and the MSeconds body from
// IntervalToUnsolicitedProcessing's note reach 81.5% at best, so the original loop and helper
// shapes are still unknown.
bool LHConnectionServer::FlushAllConnections(unsigned long timeout)
{
	LHTimer timer;
	bool    result = true;

	timer.Reset(0);
	timer.Start();
	for (LHLinkedNode<LHServerPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		long remaining = timeout - timer.MSeconds();
		if (remaining < 0)
			remaining = 0;

		LHServerPlayer* player = node->payload;
		if (player->GetTransportInfo() != NULL && player->GetTransportInfo()->type == LH_TRANSPORT_TYPE_TCP &&
		    player->Connection->Flush(remaining) != LH_OK)
			result = false;
	}
	return result;
}

void LHConnectionServer::ConnectionServerShutdown(bool notify_players)
{
	LH_OPERATING_MODE mode = Mode;
	if (mode != LH_OPERATING_MODE_NONE && mode != LH_OPERATING_MODE_SHUTTING_DOWN)
	{
		Mode = LH_OPERATING_MODE_SHUTTING_DOWN;
		if (notify_players && mode == LH_OPERATING_MODE_ASYNCHRONOUS)
		{
			LHNetEvent* event = LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_SERVER_SHUTDOWN, NetUser.GetID(), 0, NULL);
			SendEventCopyToAllPlayersOnServerExceptOne(event, InternalPlayer);
			delete event;
			FlushAllConnections(15000);
		}

		DeleteCriticalSection(&SharedDataLock);
		while (Players.count != 0)
			BaseRemoveConnection(Players.GetHead()->Connection);
		Players.DeleteAll();

		if (UserName != NULL)
		{
			free(UserName);
			UserName = NULL;
		}
		ClearListenerServer();
		ClearAllocs();
		ClearAllData();
		Mode = LH_OPERATING_MODE_NONE;
	}
}

long LHConnectionServer::GetPlayerNumberFromSignal(HANDLE signal)
{
	long index = 0;
	for (LHLinkedNode<LHServerPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHConnection* connection = node->payload->Connection;
		if (connection->Open && connection->GetSignalDataToRead() == signal)
			return index;
		index++;
	}
	return -1;
}

static void ProcessEventHook(void* context)
{
	if (context != NULL)
		((LHConnectionServer*)context)->ProcessEventLoop();
}

static void LHConnectionServerThread(void* context)
{
	LHConnectionServer* server = (LHConnectionServer*)context;
	if (server->SendStartupEvent() == LH_OK)
		server->ProcessEventLoop();
}

// TODO: 98%. Register/scheduling residual: the second loop loads the payload into ecx instead
// of eax, and NumSignals is loaded after pushing the timeout.
long LHConnectionServer::WaitForAnyEvent(unsigned long timeout)
{
	LHLinkedNode<LHServerPlayer*>* node;
	long                           index = 0;
	for (node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload->Connection->CheckForEvents())
			return index;
		index++;
	}

	if (timeout == 0)
		return 0;

	if (Mode == LH_OPERATING_MODE_SYNCHRONOUS)
	{
		index = 0;
		for (node = Players.GetStart(); node != NULL; node = node->next.Get())
		{
			if (node->payload->Connection->CheckForEvents())
				return index;
			index++;
		}
		return -1;
	}

	DWORD result = WaitForMultipleObjects(NumSignals, Signals, FALSE, timeout);
	if (result < NumSignals)
	{
		HANDLE acceptSignal = NULL;
		HANDLE broadcastSignal = NULL;
		if (Listener != NULL)
		{
			acceptSignal = Listener->GetAcceptConnectionSignal();
			broadcastSignal = Listener->GetBroadcastSignal();
		}
		if (Signals[result] == acceptSignal)
			return -2;
		if (Signals[result] == broadcastSignal)
			return -3;
		return GetPlayerNumberFromSignal(Signals[result]);
	}

	if (result == WAIT_FAILED)
		return -1;
	if (result == WAIT_TIMEOUT)
		return 0;
	if (result >= WAIT_ABANDONED_0 && result < WAIT_ABANDONED_0 + NumSignals)
		return -1;
	return -1;
}

void LHConnectionServer::ProcessEventLoop()
{
	for (;;)
	{
		long index = WaitForAnyEvent(IntervalToUnsolicitedProcessing());
		if (index == 0)
		{
			while (IntervalToUnsolicitedProcessing() == 0)
				BaseDoUnsolicitedProcessing();
		}

		if (index == -1)
		{
			// Nothing pending: a synchronous server hands control back to its caller.
			if (Mode == LH_OPERATING_MODE_SYNCHRONOUS)
				return;
		}
		else if ((index == -2 || index == -3) && Listener != NULL)
		{
			Listener->DoProcessing(index);
		}
		else
		{
			// LHLinkedList::GetAtPosition tests the node the other way round.
			LHLinkedNode<LHServerPlayer*>* node = Players.GetNodeAtPosition(index);
			LHServerPlayer*                player = node == NULL ? NULL : node->payload;
			LHConnection*                  connection = player->Connection;
			if (connection->Open && !connection->IsDisconnected())
			{
				while (connection->Read(0, (LH_NETEVENT_TYPE)0) != NULL)
				{
					if (Mode == LH_OPERATING_MODE_NONE)
					{
						SetEvent(ShutdownEvent);
						return;
					}
				}
			}
			else
			{
				BaseRemoveConnection(connection);
			}
		}
	}
}

LH_RETURN LHConnectionServer::BaseProcessEvent(LHConnection* connection, LHNetEvent* event)
{
	if (!connection->ConnectionOriented())
		return ProcessEvent(connection, event);

	// A long local, not the enum: the target zero-extends with `mov ax; and eax, 0xffff`.
	long type = event->GetType();
	switch (type)
	{
	case LH_NETEVENT_TYPE_ADD_CONNECTION:
		if (BaseAddConnection(connection) == LH_ERROR)
			return LH_ERROR;
		return LH_OK;
	case LH_NETEVENT_TYPE_REMOVE_CONNECTION:
		BaseRemoveConnection(connection);
		return LH_ERROR;
	case LH_NETEVENT_TYPE_CLIENT_REQUEST_PROTOCOL:
		return ProcessClientRequestProtocol(connection, event);
	case LH_NETEVENT_TYPE_CLIENT_NEW_IDLE_TIME:
		return ProcessClientNewIdleTime(connection, event);
	case LH_NETEVENT_TYPE_CLIENT_SHUTDOWN_SERVER:
		return ProcessClientShutdownServer();
	}
	return ProcessEvent(connection, event);
}

LH_RETURN LHConnectionServer::ProcessClientRequestProtocol(LHConnection* connection, LHNetEvent* event)
{
	unsigned long protocol;
	if (event->VDecode(LH_NETEVENT_TYPE_CLIENT_REQUEST_PROTOCOL, &protocol) != LH_OK)
		return LH_ERROR;

	if (DetermineConnectionProtocol(connection, protocol) != LH_OK)
	{
		BaseRemoveConnection(connection);
		return LH_FAIL;
	}
	return BaseSendGreeting(connection);
}

LH_RETURN LHConnectionServer::DetermineConnectionProtocol(LHConnection* connection, unsigned long protocol)
{
	if (LHConnection::DetermineConnectionProtocol(connection, GetProtocolVersion(), &protocol, protocol) != LH_OK)
		return LH_FAIL;

	LHServerPlayer* player = GetConnectedPlayer(connection);
	if (player == NULL)
		return LH_ERROR;
	player->ProtocolVersion = protocol;
	return LH_OK;
}

LH_RETURN LHConnectionServer::ProcessClientShutdownServer()
{
	Shutdown();
	ConnectionServerShutdown(true);
	return LH_OK;
}

LH_RETURN LHConnectionServer::ProcessClientNewIdleTime(LHConnection* connection, LHNetEvent* event)
{
	unsigned long idleTime;
	if (event->VDecode(LH_NETEVENT_TYPE_CLIENT_NEW_IDLE_TIME, &idleTime) != LH_OK)
		return LH_FAIL;

	IdleTime = idleTime;
	LHNetEvent* notify = LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_NEW_IDLE_TIME, NetUser.GetID(), idleTime,
	                                         connection->GetConnectedUserName());
	SendEventCopyToAllPlayersOnServer(notify);
	delete notify;
	return LH_OK;
}

// TODO: 82.5%. The cause is the shared LHTimer::MSeconds body, not this function. With
// MSeconds written as `unsigned long ticks = GetTickCount() - TickCount;
// return (int)(ticks * SpeedUpFactor + (uint32_t)ElapsedTime);` this function and
// BaseDoUnsolicitedProcessing match 100% (see connserver requests.md).
long LHConnectionServer::IntervalToUnsolicitedProcessing()
{
	if (!UnsolicitedProcessing)
		return -1;
	long remaining = LastUnsolicitedTime + IdleTime - Timer.MSeconds();
	return remaining < 0 ? 0 : remaining;
}

void LHConnectionServer::BaseDoUnsolicitedProcessing()
{
	if (Mode == LH_OPERATING_MODE_SYNCHRONOUS && Timer.MSeconds() - LastUnsolicitedTime > IdleTime * 20)
	{
		// Only a single player: resynchronise the clock instead of catching up.
		if (Players.count == 1)
		{
			unsigned long now = Timer.MSeconds();
			Timer.Stop();
			Timer.Reset(now);
			Timer.Start();
			LastUnsolicitedTime = now;
		}
	}
	else
	{
		LastUnsolicitedTime += IdleTime;
	}
	DoUnsolicitedProcessing();
}

// TODO: 98.7%. esi/edi are swapped between `this` and the new connection.
LH_RETURN LHConnectionServer::ConnectToConnection(LHConnection* connection)
{
	if (!connection->Open)
		return LH_ERROR;
	if (connection->Mode != Mode)
		return LH_ERROR;
	if (Players.count > 0 && Mode == LH_OPERATING_MODE_SYNCHRONOUS)
		return LH_ERROR;

	if (connection->GetTransportType() == LH_TRANSPORT_TYPE_TCP)
	{
		connection->SetEventFunction(::BaseProcessEvent, this);
		return LH_OK;
	}

	LHConnection* serverConnection = new LHConnection(::BaseProcessEvent, this);
	if (Mode == LH_OPERATING_MODE_SYNCHRONOUS)
		serverConnection->OpenServerConnectionToOtherConnection(&NetUser, connection, ProcessEventHook, this);
	else
		serverConnection->OpenServerConnectionToOtherConnection(&NetUser, connection, NULL, NULL);

	if (!serverConnection->Open)
	{
		delete serverConnection;
		return LH_ERROR;
	}
	return LH_OK;
}

LH_RETURN LHConnectionServer::SendEventCopyToAllPlayersOnServer(LHNetEvent* event)
{
	if (event == NULL)
		return LH_ERROR;
	for (LHLinkedNode<LHServerPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
		SendEventCopyToPlayer(node->payload, event);
	return LH_OK;
}

LH_RETURN LHConnectionServer::SendEventToAllPlayersOnServer(LHNetEvent* event)
{
	if (event == NULL)
		return LH_ERROR;
	for (LHLinkedNode<LHServerPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
		SendEventCopyToPlayer(node->payload, event);
	delete event;
	return LH_OK;
}

LH_RETURN LHConnectionServer::SendEventCopyToAllPlayersOnServerExceptOne(LHNetEvent*     event,
                                                                         LHServerPlayer* except_player)
{
	if (event == NULL)
		return LH_ERROR;
	for (LHLinkedNode<LHServerPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload != except_player)
			SendEventCopyToPlayer(node->payload, event);
	}
	return LH_OK;
}

LHConnectionServer::LHServerPlayer* LHConnectionServer::FindServerPlayer(LH_USER_ID user_id)
{
	for (LHLinkedNode<LHServerPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHServerPlayer* player = node->payload;
		if (player->GetUserID() == user_id)
			return player;
	}
	return NULL;
}

LH_RETURN LHConnectionServer::SendEventCopyToPlayer(LHServerPlayer* player, LHNetEvent* event)
{
	if (event != NULL && player != NULL && player->Connection != NULL && !player->Connection->IsDisconnected())
		return player->Connection->Write(LHNetEvent::CreateFromEvent(event));
	return LH_FAIL;
}

// TODO: 42%. Same shape as Mac, but the target keeps one inline `return LH_FAIL` per check while
// cl cross-jumps them into a single tail block (see SendToConnection).
LH_RETURN LHConnectionServer::SendEventToPlayer(LHServerPlayer* player, LHNetEvent* event)
{
	if (event == NULL || player == NULL)
		return LH_FAIL;
	if (player->Connection == NULL)
		return LH_FAIL;
	if (player->Connection->IsDisconnected())
		return LH_FAIL;
	return player->Connection->Write(event);
}

// TODO: 48%. Mac has exactly this shape. The target emits the `||` failure return and the
// IsDisconnected failure return as two inline blocks; cl merges them into one tail block.
// Separate ifs, nesting, else chains, goto, IsConnected() and ternaries were tried.
LH_RETURN LHConnectionServer::SendToConnection(LHConnection* connection, LHNetEvent* event)
{
	if (event == NULL || connection == NULL)
		return LH_FAIL;
	if (connection->IsDisconnected())
		return LH_FAIL;
	return connection->Write(event);
}

// TODO: 99.4%. ebx/ebp are swapped; that goes away with the MSeconds body from
// IntervalToUnsolicitedProcessing's note. Running()'s float is still read through `this`
// instead of the timer pointer (esi). A local `LHTimer* timer = &Timer` used for every
// timer access matches fully, but it may be a fakematch, so it is left to a human.
LH_RETURN LHConnectionServer::BaseSendGreeting(LHConnection* connection)
{
	char* modeName = Mode == LH_OPERATING_MODE_SYNCHRONOUS ? "SYNCHRONOUS" : "ASYNCHRONOUS";

	// The uptime text is written into the timer's own buffer.
	unsigned long uptime = Timer.MSeconds();
	bool32_t      running = Timer.Running();
	Timer.Stop();
	if (uptime < 60000)
		sprintf((char*)Timer.field_0x0, "%d.%03ds ", uptime / 1000, uptime % 1000);
	else
		sprintf((char*)Timer.field_0x0, "%dm %d.%03ds ", uptime / 60000, uptime / 1000 % 60, uptime % 1000);
	if (running)
		Timer.Start();

	if (connection->Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_GREETING, NetUser.GetID(), RegisteredName,
	                                          UserName, modeName, Players.count, Timer.field_0x0, IdleTime)) != LH_OK)
		return LH_FAIL;
	return SendGreeting(connection);
}

void LHConnectionServer::ForceEventProcess()
{
	if (Mode == LH_OPERATING_MODE_ASYNCHRONOUS && NumSignals != 0)
		SetEvent(Signals[0]);
}

LH_RETURN LHConnectionServer::RemoveConnection(LHConnection* connection)
{
	return LH_OK;
}

void LHConnectionServer::StopListeningForConnections()
{
	if (Listener != NULL)
	{
		HANDLE signal = Listener->GetAcceptConnectionSignal();
		Listener->StopListening();

		unsigned short i;
		for (i = 0; Signals[i] != NULL && Signals[i] != signal; i++)
			;
		if (Signals[i] != NULL)
		{
			NumSignals--;
			for (; i < NumSignals && Signals[i] != NULL; i++)
				Signals[i] = Signals[i + 1];
		}
	}
}

LH_RETURN LHConnectionServer::BaseRemoveConnection(LHConnection* connection)
{
	if (connection == NULL)
		return LH_ERROR;
	LHServerPlayer* player = GetConnectedPlayer(connection);
	if (player == NULL)
		return LH_ERROR;

	HANDLE signal = connection->GetSignalDataToRead();
	connection->Close();
	RemoveConnection(connection);
	delete connection;
	if (player != NULL)
	{
		Players.Remove(player);
		delete player;
	}

	unsigned short i;
	for (i = 0; Signals[i] != NULL && Signals[i] != signal; i++)
		;
	if (Signals[i] != NULL)
	{
		NumSignals--;
		for (; i < NumSignals && Signals[i] != NULL; i++)
			Signals[i] = Signals[i + 1];
	}
	return LH_OK;
}

LHConnectionServer::LHServerPlayer* LHConnectionServer::GetConnectedPlayer(LHConnection* connection)
{
	for (LHLinkedNode<LHServerPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload->Connection == connection)
			return node->payload;
	}
	return NULL;
}
