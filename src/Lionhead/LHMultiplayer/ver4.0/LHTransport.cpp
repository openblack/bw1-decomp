#define LH_MULTIPLAYER_EXPORTS
#include "LHSocketTCP.h"
#include "LHTransport.h"

#include <stdlib.h>

#include <Lionhead/LHLib/ver5.0/LHTimer.inl>
#include <Lionhead/LHLog/ver4.0/LHLogger.h>
#include "LHNetLog.h"
#include "LHNetEvent.h"
#include "LHPacket.h"
#include "LHTransportInfo.h"

enum
{
	LH_REMOTE_THREAD_WAIT_TIMEOUT = 2000,
	LH_REMOTE_THREAD_STOP_TIMEOUT = 5000,
};

// BW1W120 10023870 BW1M119 01117cb0 (LHCombined Release)
void LHTransportRemoteThread(void* context);

void LHTransport::ClearAllData()
{
	Opened = false;
	IncomingEventQ = NULL;
	OutgoingEventQ = NULL;
	LastEventRead = NULL;
	Disconnected = true;
	CloseFailed = false;
}

void LHTransport::ClearLastIncomingEvent()
{
	if (LastEventRead != NULL)
	{
		delete LastEventRead;
		LastEventRead = NULL;
	}
}

LHTransport::~LHTransport()
{
	Close();
}

bool32_t LHTransport::IsDisconnected()
{
	if (!Opened)
		return true;
	return Disconnected;
}

bool32_t LHTransport::IsConnected()
{
	if (!Opened)
		return false;
	return !Disconnected;
}

LH_RETURN LHTransport::GetTransportInfo(LHTransportInfo* transport_info, bool32_t local)
{
	transport_info->type = Type;
	return LH_OK;
}

LH_RETURN LHTransport::Open(LHDynamicQueue<LHNetEvent*>* incoming, LHDynamicQueue<LHNetEvent*>* outgoing,
                            LHTransportInfo* transport_info)
{
	if (incoming == NULL)
	{
		IncomingEventQ = new LHDynamicQueue<LHNetEvent*>;
		OwnsIncomingEventQ = true;
	}
	else
	{
		IncomingEventQ = incoming;
		OwnsIncomingEventQ = false;
	}

	if (outgoing == NULL)
	{
		OutgoingEventQ = new LHDynamicQueue<LHNetEvent*>;
		OwnsOutgoingEventQ = true;
	}
	else
	{
		OutgoingEventQ = outgoing;
		OwnsOutgoingEventQ = false;
	}

	Disconnected = false;
	Opened = true;
	return LH_OK;
}

LH_RETURN LHTransport::OpenConnectionToTransport(LHTransport* transport, void (*callback)(void*), void* context)
{
	if (Opened)
		return LH_ERROR;
	if (!transport->Opened)
		return LH_ERROR;
	if (transport == NULL)
		return LH_FAIL;

	if (((transport->Type == LH_TRANSPORT_TYPE_BASE && Type == LH_TRANSPORT_TYPE_BASE) ||
	     (transport->Type == LH_TRANSPORT_TYPE_SYNC && Type == LH_TRANSPORT_TYPE_BASE) ||
	     (transport->Type == LH_TRANSPORT_TYPE_BASE && Type == LH_TRANSPORT_TYPE_SYNC) ||
	     (transport->Type == LH_TRANSPORT_TYPE_ASYNC && Type == LH_TRANSPORT_TYPE_ASYNC)) == false)
		return LH_FAIL;
	if (callback != NULL && transport->Type != LH_TRANSPORT_TYPE_SYNC && Type != LH_TRANSPORT_TYPE_SYNC)
		return LH_FAIL;
	if (context != NULL && callback == NULL)
		return LH_FAIL;

	if (transport->Type == LH_TRANSPORT_TYPE_SYNC)
		((LHSyncTransport*)transport)->SetHookFunction(callback, context);
	if (Type == LH_TRANSPORT_TYPE_SYNC)
		((LHSyncTransport*)this)->SetHookFunction(callback, context);

	return Open(transport->GetOutgoingEventQ(), transport->GetIncomingEventQ(), NULL);
}

bool32_t LHTransport::CheckForEvents()
{
	return IncomingEventQ->Count != 0;
}

bool32_t LHTransport::CheckForEvent(LH_NETEVENT_TYPE type)
{
	if (CheckForEvents())
	{
		for (LHDynamicQueueNode<LHNetEvent*>* node = IncomingEventQ->Head; node != NULL; node = node->Next)
		{
			if (node->Payload->GetType() == type)
				return true;
		}
	}
	return false;
}

bool32_t LHTransport::WaitForEvent(LH_NETEVENT_TYPE type, unsigned long timeout)
{
	return CheckForEvent(type);
}

void LHTransport::Close()
{
	if (Opened)
	{
		ClearLastIncomingEvent();
		if (OwnsIncomingEventQ)
		{
			if (IncomingEventQ != NULL)
				IncomingEventQ->DeleteAll();
			delete IncomingEventQ;
		}
		if (OwnsOutgoingEventQ)
		{
			if (OutgoingEventQ != NULL)
				OutgoingEventQ->DeleteAll();
			delete OutgoingEventQ;
		}
		OutgoingEventQ = NULL;
		IncomingEventQ = NULL;
		ClearAllData();
	}
}

bool LHTransport::Disconnect()
{
	if (IsDisconnected())
		return true;
	Disconnected = true;
	return true;
}

void LHTransport::Write(LHNetEvent* net_event)
{
	if (Opened && net_event != NULL)
		OutgoingEventQ->Add(net_event);
}

void LHTransport::AddToIncomingEventQ(LHNetEvent* net_event)
{
	if (Opened && net_event != NULL)
		IncomingEventQ->Add(net_event);
}

void LHTransport::AddAtPositionInIncomingEventQ(LHNetEvent* net_event, unsigned long position)
{
	if (Opened && net_event != NULL)
		IncomingEventQ->AddAtPosition(net_event, position);
}

void LHTransport::AddToFrontOfIncomingEventQ(LHNetEvent* net_event)
{
	if (Opened && net_event != NULL)
		IncomingEventQ->AddToFront(net_event);
}

unsigned long LHTransport::GetIncomingEventQSize()
{
	return IncomingEventQ->Count;
}

LHNetEvent* LHTransport::Read(unsigned long timeout)
{
	if (!Opened)
		return NULL;
	if (IncomingEventQ->Count == 0)
		return NULL;

	ClearLastIncomingEvent();
	LastEventRead = IncomingEventQ->RemoveFromFront();
	return LastEventRead;
}

void LHTransport::SetLastEventReadToBeIgnored()
{
	if (LastEventRead != NULL)
		LastEventRead->SetPacketHeader(LH_NETEVENT_TYPE_IGNORE, LH_ALL_USERS);
}

LHNetEvent* LHTransport::Peek(unsigned long timeout)
{
	if (!Opened)
		return NULL;
	if (IncomingEventQ->Count == 0)
		return NULL;
	return PeekAtNextEvent();
}

LHNetEvent* LHTransport::ExtractEvent(LH_NETEVENT_TYPE type, unsigned long timeout)
{
	if (!Opened)
		return NULL;
	if (!CheckForEvent(type))
		return NULL;

	ClearLastIncomingEvent();
	LastEventRead = GetFirstEventOfType(type);
	return LastEventRead;
}

LHNetEvent* LHTransport::RawPeek(LH_NETEVENT_TYPE type, unsigned long timeout)
{
	if (!Opened)
		return NULL;
	if (!CheckForEvent(type))
		return NULL;
	return PeekAtFirstEventOfType(type);
}

LHNetEvent* LHTransport::GetFirstEventOfType(LH_NETEVENT_TYPE type)
{
	unsigned long position = 0;
	for (LHDynamicQueueNode<LHNetEvent*>* node = IncomingEventQ->Head; node != NULL; node = node->Next)
	{
		if (node->Payload->GetType() == type)
			return IncomingEventQ->RemoveAtPosition(position);
		position++;
	}
	return NULL;
}

LHNetEvent* LHTransport::PeekAtFirstEventOfType(LH_NETEVENT_TYPE type)
{
	for (LHDynamicQueueNode<LHNetEvent*>* node = IncomingEventQ->Head; node != NULL; node = node->Next)
	{
		LHNetEvent* event = node->Payload;
		if (event->GetType() == type)
			return event;
	}
	return NULL;
}

LHNetEvent* LHTransport::PeekAtNextEvent()
{
	if (IncomingEventQ->Count != 0 && IncomingEventQ->Head != NULL)
		return IncomingEventQ->Head->Payload;
	return NULL;
}

LH_RETURN LHTransport::Flush(unsigned long timeout)
{
	return Flushed() ? LH_OK : LH_FAIL;
}

bool LHTransport::Flushed()
{
	return OutgoingEventQ->Count == 0;
}

LHTransport* LHTransport::Create(LH_TRANSPORT_TYPE type)
{
	LHTransport* transport;
	switch (type)
	{
	case LH_TRANSPORT_TYPE_BASE:
		transport = new LHTransport;
		break;
	case LH_TRANSPORT_TYPE_SYNC:
		transport = new LHSyncTransport;
		break;
	case LH_TRANSPORT_TYPE_ASYNC:
		transport = new LHAsyncTransport;
		break;
	case LH_TRANSPORT_TYPE_TCP:
		transport = new LHTransportTCP;
		break;
	case LH_TRANSPORT_TYPE_UDP:
		transport = new LHTransportUDP;
		break;
	default:
		return NULL;
	}
	transport->Type = type;
	return transport;
}

void* LHTransport::GetSignalDataToRead()
{
	return NULL;
}

void LHTransport::Destroy(LHTransport* transport)
{
	transport->Close();
	if (!transport->CloseFailed)
		delete transport;
}

LHSyncTransport::LHSyncTransport()
{
	LHTransport::ClearAllData();
	ClearAllData();
}

void LHSyncTransport::ClearAllData()
{
	HookFunction = NULL;
}

LHNetEvent* LHSyncTransport::Read(unsigned long timeout)
{
	if (HookFunction != NULL)
		HookFunction(HookContext);
	return LHTransport::Read(timeout);
}

bool32_t LHSyncTransport::CheckForEvents()
{
	if (HookFunction != NULL)
		HookFunction(HookContext);
	return LHTransport::CheckForEvents();
}

bool32_t LHSyncTransport::CheckForEvent(LH_NETEVENT_TYPE type)
{
	if (HookFunction != NULL)
		HookFunction(HookContext);
	return LHTransport::CheckForEvent(type);
}

LHAsyncTransport::~LHAsyncTransport()
{
	Close();
}

LHAsyncTransport::LHAsyncTransport()
{
	LHTransport::ClearAllData();
	ClearAllData();
}

void LHAsyncTransport::ClearAllData()
{
	OwnsSignals = false;
	OwnsLocks = false;
	DataWrittenSignal = NULL;
	DataToReadSignal = NULL;
	FlushedSignal = NULL;
	PeerFlushedSignal = NULL;
}

LH_RETURN LHAsyncTransport::Open(LHDynamicQueue<LHNetEvent*>* incoming, LHDynamicQueue<LHNetEvent*>* outgoing,
                                 LHTransportInfo* transport_info)
{
	if (LHTransport::Open(incoming, outgoing, transport_info) != LH_OK)
		return LH_FAIL;

	InitialiseLocks(NULL);
	if (InitialiseSignals(NULL) != LH_OK)
	{
		LHTransport::Close();
		return LH_FAIL;
	}
	return LH_OK;
}

LH_RETURN LHAsyncTransport::OpenConnectionToTransport(LHTransport* transport, void (*callback)(void*), void* context)
{
	if (transport->Type != LH_TRANSPORT_TYPE_ASYNC)
		return LH_FAIL;
	if (LHTransport::OpenConnectionToTransport(transport, callback, context) != LH_OK)
		return LH_FAIL;

	InitialiseLocks((LHAsyncTransport*)transport);
	InitialiseSignals((LHAsyncTransport*)transport);
	return LH_OK;
}

void LHAsyncTransport::InitialiseLocks(LHAsyncTransport* transport)
{
	CRITICAL_SECTION* incomingLock = NULL;
	CRITICAL_SECTION* outgoingLock = NULL;
	if (transport != NULL)
	{
		incomingLock = transport->IncomingQLock;
		outgoingLock = transport->OutgoingQLock;
	}

	if ((incomingLock != NULL && outgoingLock != NULL) || (incomingLock == NULL && outgoingLock == NULL))
	{
		if (incomingLock != NULL)
		{
			IncomingQLock = incomingLock;
			OutgoingQLock = outgoingLock;
			OwnsLocks = false;
		}
		else
		{
			OutgoingQLock = new CRITICAL_SECTION;
			IncomingQLock = new CRITICAL_SECTION;
			InitializeCriticalSection(OutgoingQLock);
			InitializeCriticalSection(IncomingQLock);
			OwnsLocks = true;
		}
	}
}

LH_RETURN LHAsyncTransport::InitialiseSignals(LHAsyncTransport* transport)
{
	FlushedSignal = CreateEventA(NULL, TRUE, FALSE, NULL);
	if (transport != NULL)
	{
		OwnsSignals = false;
		DataToReadSignal = transport->DataWrittenSignal;
		DataWrittenSignal = transport->DataToReadSignal;
		PeerFlushedSignal = transport->FlushedSignal;
		transport->PeerFlushedSignal = FlushedSignal;
	}
	else
	{
		OwnsSignals = true;
		DataToReadSignal = CreateEventA(NULL, TRUE, FALSE, NULL);
		if (DataToReadSignal == NULL)
			return LH_FAIL;
		DataWrittenSignal = CreateEventA(NULL, FALSE, FALSE, NULL);
		if (DataWrittenSignal == NULL)
			return LH_FAIL;
	}
	return LH_OK;
}

void LHAsyncTransport::Close()
{
	if (Opened)
	{
		LockIncomingQ();
		LockOutgoingQ();
		LHTransport::Close();
		UnLockIncomingQ();
		UnLockOutgoingQ();

		if (OwnsLocks)
		{
			DeleteCriticalSection(IncomingQLock);
			DeleteCriticalSection(OutgoingQLock);
			delete IncomingQLock;
			delete OutgoingQLock;
			IncomingQLock = NULL;
			OutgoingQLock = NULL;
		}
		if (OwnsSignals)
		{
			CloseHandle(DataToReadSignal);
			CloseHandle(DataWrittenSignal);
		}
		CloseHandle(FlushedSignal);
	}
}

bool32_t LHAsyncTransport::CheckForEvents()
{
	if (!ResetEvent(DataToReadSignal))
		return false;
	return IncomingEventQ->Count != 0;
}

bool32_t LHAsyncTransport::CheckForEvent(LH_NETEVENT_TYPE type)
{
	if (!ResetEvent(DataToReadSignal))
		return false;

	LockIncomingQ();
	bool32_t result = LHTransport::CheckForEvent(type);
	UnLockIncomingQ();
	return result;
}

LH_RETURN LHAsyncTransport::Flush(unsigned long timeout)
{
	if (!ResetEvent(FlushedSignal))
		return LH_ERROR;
	if (Flushed())
		return LH_OK;

	DWORD result = WaitForSingleObject(FlushedSignal, timeout);
	if (result != WAIT_OBJECT_0)
		return result == WAIT_TIMEOUT ? LH_FAIL : LH_ERROR;
	return Flushed() ? LH_OK : LH_FAIL;
}

bool32_t LHAsyncTransport::WaitForEvent(LH_NETEVENT_TYPE type, unsigned long timeout)
{
	LHTimer timer;
	if (CheckForEvent(type))
		return true;
	if (timeout == 0)
		return false;

	timer.Start();
	do
	{
		if (!ResetEvent(DataToReadSignal))
			return false;
		if (Disconnected)
			return false;
		if (CheckForEvent(type))
			return true;
		if (timeout <= (unsigned long)timer.MSeconds())
			return false;
		if (WaitForSingleObject(DataToReadSignal, timeout - timer.MSeconds()) != WAIT_OBJECT_0)
			return false;
	} while (!CheckForEvent(type));
	return true;
}

bool32_t LHAsyncTransport::WaitForEvent(unsigned long timeout)
{
	if (!CheckForEvents())
	{
		if (timeout == 0)
			return false;
		if (!ResetEvent(DataToReadSignal))
			return false;
		if (Disconnected)
			return false;
		if (!CheckForEvents() && WaitForSingleObject(DataToReadSignal, timeout) != WAIT_OBJECT_0)
			return false;
	}
	return true;
}

LHNetEvent* LHAsyncTransport::Read()
{
	LockIncomingQ();
	LHNetEvent* event = LHTransport::Read(0);
	UnLockIncomingQ();
	if (IncomingEventQ->Count == 0 && PeerFlushedSignal != NULL)
		SetEvent(PeerFlushedSignal);
	return event;
}

LHNetEvent* LHAsyncTransport::Read(unsigned long timeout)
{
	LHNetEvent* event = Read();
	if (!ResetEvent(DataToReadSignal))
		return NULL;
	if (event != NULL || timeout == 0)
		return event;
	if (Disconnected)
		return NULL;

	event = Read();
	if (event != NULL)
		return event;
	if (WaitForSingleObject(DataToReadSignal, timeout) != WAIT_OBJECT_0)
		return NULL;
	return Read();
}

LHNetEvent* LHAsyncTransport::Peek()
{
	LockIncomingQ();
	LHNetEvent* event = LHTransport::Peek(0);
	UnLockIncomingQ();
	return event;
}

LHNetEvent* LHAsyncTransport::Peek(unsigned long timeout)
{
	if (!Opened)
		return NULL;
	if (timeout != 0 && !WaitForEvent(timeout))
		return NULL;
	return Peek();
}

LHNetEvent* LHAsyncTransport::ExtractEvent(LH_NETEVENT_TYPE type)
{
	LockIncomingQ();
	LHNetEvent* event = LHTransport::ExtractEvent(type, 0);
	UnLockIncomingQ();
	return event;
}

LHNetEvent* LHAsyncTransport::ExtractEvent(LH_NETEVENT_TYPE type, unsigned long timeout)
{
	if (Opened && WaitForEvent(type, timeout))
		return ExtractEvent(type);
	return NULL;
}

LHNetEvent* LHAsyncTransport::RawPeek(LH_NETEVENT_TYPE type)
{
	LockIncomingQ();
	LHNetEvent* event = LHTransport::RawPeek(type, 0);
	UnLockIncomingQ();
	return event;
}

LHNetEvent* LHAsyncTransport::RawPeek(LH_NETEVENT_TYPE type, unsigned long timeout)
{
	if (Opened && WaitForEvent(type, timeout))
		return RawPeek(type);
	return NULL;
}

void LHAsyncTransport::Write(LHNetEvent* net_event)
{
	if (!IsDisconnected())
	{
		LockOutgoingQ();
		LHTransport::Write(net_event);
		UnLockOutgoingQ();
		SetEvent(DataWrittenSignal);
	}
}

void LHAsyncTransport::AddToIncomingEventQ(LHNetEvent* net_event)
{
	LockIncomingQ();
	LHTransport::AddToIncomingEventQ(net_event);
	UnLockIncomingQ();
	SetEvent(DataToReadSignal);
}

void LHAsyncTransport::AddToFrontOfIncomingEventQ(LHNetEvent* net_event)
{
	LockIncomingQ();
	LHTransport::AddToFrontOfIncomingEventQ(net_event);
	UnLockIncomingQ();
	SetEvent(DataToReadSignal);
}

void LHAsyncTransport::AddAtPositionInIncomingEventQ(LHNetEvent* net_event, unsigned long position)
{
	LockIncomingQ();
	LHTransport::AddAtPositionInIncomingEventQ(net_event, position);
	UnLockIncomingQ();
	SetEvent(DataToReadSignal);
}

bool LHTransportRemote::Disconnect()
{
	if (IsDisconnected())
		return true;
	if (!SetEvent(ShutdownSignal))
		return false;

	switch (WaitForSingleObject(ThreadStoppedSignal, LH_REMOTE_THREAD_STOP_TIMEOUT))
	{
	case WAIT_ABANDONED:
		return false;
	case WAIT_TIMEOUT:
		return false;
	case WAIT_OBJECT_0:
		return true;
	case WAIT_FAILED:
		return false;
	}
	return false;
}

void LHTransportRemote::ClearAllData()
{
	ThreadStoppedSignal = NULL;
	ShutdownSignal = NULL;
}

LH_RETURN LHTransportRemote::Open(LHDynamicQueue<LHNetEvent*>* incoming, LHDynamicQueue<LHNetEvent*>* outgoing,
                                  LHTransportInfo* transport_info)
{
	ShutdownSignal = CreateEventA(NULL, TRUE, FALSE, NULL);
	if (ShutdownSignal == NULL)
		return LH_FAIL;
	ThreadStoppedSignal = CreateEventA(NULL, TRUE, FALSE, NULL);
	if (ThreadStoppedSignal == NULL)
		return LH_FAIL;
	if (LHAsyncTransport::Open(NULL, NULL, NULL) != LH_OK)
		return LH_FAIL;

	unsigned long thread =
		_lhbeginthread("LHRemoteTransportThread", LHTransportRemoteThread, 0, this, THREAD_PRIORITY_TIME_CRITICAL);
	return thread == -1 ? LH_FAIL : LH_OK;
}

LH_RETURN LHTransportRemote::Open()
{
	return LHTransportRemote::Open(NULL, NULL, NULL);
}

void LHTransportRemote::Close()
{
	if (Opened)
	{
		CloseHandle(ThreadStoppedSignal);
		CloseHandle(ShutdownSignal);
		ClearAllData();
		LHAsyncTransport::Close();
	}
}

LHTransportRemote::~LHTransportRemote()
{
	Close();
}

LHTransportRemote::LHTransportRemote()
{
	ClearAllData();
	LHAsyncTransport::ClearAllData();
}

void LHTransportRemoteThread(void* context)
{
	((LHTransportRemote*)context)->RemoteTransportThread();
}

void LHTransportRemote::RemoteTransportThread()
{
	HANDLE signals[3];
	signals[0] = DataWrittenSignal;
	signals[1] = GetRemoteDataAvailableSignal();
	signals[2] = ShutdownSignal;

	DWORD result = WaitForMultipleObjects(3, signals, FALSE, LH_REMOTE_THREAD_WAIT_TIMEOUT);
	DWORD shutdown = WaitForSingleObject(ShutdownSignal, 0);
	while (result != WAIT_OBJECT_0 + 2 && shutdown != WAIT_OBJECT_0)
	{
		if (result != WAIT_FAILED)
		{
			if (result == WAIT_TIMEOUT)
			{
				if (PingConnection() == LH_ERROR)
				{
					RemoteShutdown();
					return;
				}
			}
			else
			{
				switch (result)
				{
				case WAIT_OBJECT_0:
					if (WriteAllOutgoingQEvents() == LH_ERROR)
					{
						RemoteShutdown();
						return;
					}
					if (FlushBuffer() == LH_ERROR)
					{
						RemoteShutdown();
						return;
					}
					break;
				case WAIT_OBJECT_0 + 1:
					if (ProcessRemoteDataOrWrite() == LH_ERROR)
					{
						RemoteShutdown();
						return;
					}
					break;
				case WAIT_OBJECT_0 + 2:
					RemoteShutdown();
					SetEvent(ThreadStoppedSignal);
					return;
				}
			}
		}
		result = WaitForMultipleObjects(3, signals, FALSE, LH_REMOTE_THREAD_WAIT_TIMEOUT);
		shutdown = WaitForSingleObject(ShutdownSignal, 0);
	}
	RemoteShutdown();
	SetEvent(ThreadStoppedSignal);
}

LH_RETURN LHTransportRemote::ProcessRemoteDataOrWrite()
{
	LH_RETURN result = LH_OK;
	if (ReadyToRead())
	{
		result = ProcessRemoteData();
		if (result == LH_ERROR)
			return result;
	}
	if (ReadyToWrite())
		result = FlushBuffer();
	return result;
}

LH_RETURN LHTransportRemote::ProcessRemoteData()
{
	LHPacket*       packet = NULL;
	LHTransportInfo transportInfo;

	LH_RETURN result = ReadOnePacket(&packet, &transportInfo);
	if (result == LH_ERROR)
	{
		if (packet != NULL)
			free(packet);
		SetEvent(DataToReadSignal);
		return LH_ERROR;
	}
	if (result != LH_OK)
		return LH_FAIL;

	if (transportInfo.type != 0)
	{
		LHTransportInfo localInfo;
		GetTransportInfo(&localInfo, true);
		long type = packet->GetDataPtr()[0] + (packet->GetDataPtr()[1] << 8);
		if (type != LH_NETEVENT_TYPE_LOBBY_BROADCAST_CHAT && type != LH_NETEVENT_TYPE_CLIENT_BROADCAST_MESSAGE &&
		    transportInfo.Compare(&localInfo) == 0)
			return LH_OK;
	}

	LHNetEvent* event = LHNetEvent::CreateFromPacket(packet);
	event->SetUDPinfo(&transportInfo);
	event->SetTickCount(GetTickCount());
	LockIncomingQ();
	IncomingEventQ->Add(event);
	UnLockIncomingQ();
	SetEvent(DataToReadSignal);
	return LH_OK;
}

LH_RETURN LHTransportRemote::WriteAllOutgoingQEvents()
{
	LH_RETURN result = LH_OK;
	while (OutgoingEventQ->Count != 0)
	{
		LockOutgoingQ();
		LHNetEvent* event = OutgoingEventQ->RemoveFromFront();
		UnLockOutgoingQ();
		if (event == NULL)
			return LH_ERROR;

		result = WriteOnePacket(event->GetPacket(), event->GetUDPinfo());
		delete event;
		if (result == LH_ERROR)
			return LH_ERROR;
	}
	return result;
}

void LHTransportRemote::WriteInternalCloseConnectionEvent()
{
	LHNetEvent* event = LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_REMOVE_CONNECTION, LH_ALL_USERS, 0, NULL);
	LockIncomingQ();
	IncomingEventQ->Add(event);
	UnLockIncomingQ();
	SetEvent(DataToReadSignal);
}

void LHTransportTCP::RemoteShutdown()
{
	Disconnected = true;
	if (Socket != NULL)
		Socket->Disconnect();
	WriteInternalCloseConnectionEvent();
}

void LHTransportTCP::ClearAllData()
{
	Socket = NULL;
}

void LHTransportTCP::ClearSocket()
{
	LHSocket* socket = Socket;
	Socket = NULL;
	if (socket != NULL)
	{
		socket->Disconnect();
		delete socket;
	}
}

LH_RETURN LHTransportTCP::Open(LHDynamicQueue<LHNetEvent*>* incoming, LHDynamicQueue<LHNetEvent*>* outgoing,
                               LHTransportInfo* transport_info)
{
	if ((transport_info != NULL && transport_info->type == LH_TRANSPORT_TYPE_TCP) == false)
		return LH_ERROR;

	Socket = new LHSocketTCP;
	if (Socket->Connect(transport_info) != LH_OK)
		return LH_FAIL;
	return LHTransportRemote::Open();
}

LH_RETURN LHTransportTCP::Open(LHSocketTCP* socket)
{
	Socket = socket;
	return LHTransportRemote::Open();
}

void LHTransportTCP::Close()
{
	if (Opened)
	{
		if (!Disconnect())
		{
			Opened = false;
			Disconnected = true;
			CloseFailed = true;
		}
		else
		{
			ClearSocket();
			ClearAllData();
			LHTransportRemote::Close();
		}
	}
}

LH_RETURN LHTransportTCP::GetTransportInfo(LHTransportInfo* transport_info, bool32_t local)
{
	return ((LHSocketTCP*)Socket)->GetSocketInfo(transport_info, local);
}

HANDLE LHTransportTCP::GetRemoteDataAvailableSignal()
{
	return ((LHSocketTCP*)Socket)->GetSignal();
}

LHTransportTCP::~LHTransportTCP()
{
	Close();
}

LHTransportTCP::LHTransportTCP()
{
	ClearAllData();
	LHTransportRemote::ClearAllData();
}

bool LHTransportTCP::ReadyToRead()
{
	return ((LHSocketTCP*)Socket)->CheckActivity(LH_ACTIVITY_TYPE_READ);
}

bool LHTransportTCP::ReadyToWrite()
{
	return ((LHSocketTCP*)Socket)->CheckActivity(LH_ACTIVITY_TYPE_WRITE);
}

LH_RETURN LHTransportTCP::FlushBuffer()
{
	if (((LHSocketTCP*)Socket)->FlushBuffer() == LH_ERROR)
		return LH_ERROR;
	if (Flushed())
		SetEvent(FlushedSignal);
	return LH_OK;
}

bool LHTransportTCP::Flushed()
{
	if (Socket != NULL)
		return ((LHSocketTCP*)Socket)->Flushed() && OutgoingEventQ->Count == 0;
	return OutgoingEventQ->Count == 0;
}

LH_RETURN LHTransportTCP::ReadOnePacket(LHPacket** packet, LHTransportInfo* transport_info)
{
	transport_info->ClearAllData();
	LH_RETURN result = ((LHSocketTCP*)Socket)->DoAttemptReadPacketNonBlocking();
	if (result != LH_OK)
		return result;
	((LHSocketTCP*)Socket)->GetLastReadPacket(packet);
	return LH_OK;
}

LH_RETURN LHTransportTCP::WriteOnePacket(LHPacket* packet, LHTransportInfo* transport_info)
{
	return ((LHSocketTCP*)Socket)->PreparePacketToWrite(packet);
}

LH_RETURN LHTransportTCP::PingConnection()
{
	if (((LHSocketTCP*)Socket)->HasTimedOut())
		return LH_ERROR;

	LHPacket* packet = (LHPacket*)calloc(LH_PACKET_ALLOCATION_PADDING, 1);
	packet->SetDataLen(0);
	WriteOnePacket(packet, NULL);
	free(packet);
	return FlushBuffer();
}

void LHTransportUDP::ClearAllData()
{
	Socket = NULL;
}

void LHTransportUDP::RemoteShutdown()
{
	Disconnected = true;
	if (Socket != NULL)
		Socket->Disconnect();
}

void LHTransportUDP::ClearSocket()
{
	LHSocket* socket = Socket;
	Socket = NULL;
	if (socket != NULL)
	{
		socket->Disconnect();
		delete socket;
	}
}

LH_RETURN LHTransportUDP::GetTransportInfo(LHTransportInfo* transport_info, bool32_t local)
{
	return ((LHSocketTCP*)Socket)->GetSocketInfo(transport_info, local);
}

LH_RETURN LHTransportUDP::Write(LHNetEvent* net_event, LHTransportInfo* transport_info)
{
	LH_RETURN result = Socket->SendDatagramPacket(net_event->GetPacket(), transport_info);
	delete net_event;
	return result;
}

HANDLE LHTransportUDP::GetRemoteDataAvailableSignal()
{
	if (((LHSocketTCP*)Socket)->SignalCreated)
		return ((LHSocketTCP*)Socket)->Signal;
	return NULL;
}

LH_RETURN LHTransportUDP::Open(LHDynamicQueue<LHNetEvent*>* incoming, LHDynamicQueue<LHNetEvent*>* outgoing,
                               LHTransportInfo* transport_info)
{
	if (transport_info->type != LH_TRANSPORT_TYPE_UDP && transport_info->type != LH_TRANSPORT_TYPE_TCP)
		return LH_ERROR;

	Socket = new LHSocketTCP;
	if (Socket->ListenForBroadcastRequests(transport_info) != LH_OK)
		return LH_FAIL;
	return LHTransportRemote::Open();
}

void LHTransportUDP::Close()
{
	if (Opened)
	{
		if (!Disconnect())
		{
			Opened = false;
			Disconnected = true;
			CloseFailed = true;
		}
		else
		{
			ClearSocket();
			ClearAllData();
			LHTransportRemote::Close();
		}
	}
}

LHTransportUDP::~LHTransportUDP()
{
	Close();
}

LHTransportUDP::LHTransportUDP()
{
	ClearAllData();
	LHTransportRemote::ClearAllData();
}

bool LHTransportUDP::ReadyToRead()
{
	return true;
}

bool LHTransportUDP::ReadyToWrite()
{
	if (OutgoingEventQ->Count != 0)
		return true;
	return false;
}

LH_RETURN LHTransportUDP::ReadOnePacket(LHPacket** packet, LHTransportInfo* transport_info)
{
	return Socket->ReceiveUDPPacket(packet, (unsigned long)-1, transport_info);
}

LH_RETURN LHTransportUDP::WriteOnePacket(LHPacket* packet, LHTransportInfo* transport_info)
{
	return Socket->SendDatagramPacket(packet, transport_info);
}

LH_RETURN LHTransportUDP::FlushBuffer()
{
	SetEvent(FlushedSignal);
	return LH_OK;
}

bool LHTransportUDP::Flushed()
{
	return OutgoingEventQ->Count == 0;
}

LH_RETURN LHTransportUDP::PingConnection()
{
	return LH_OK;
}
