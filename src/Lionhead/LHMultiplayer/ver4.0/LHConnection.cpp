#define LH_MULTIPLAYER_EXPORTS
#include "LHConnection.h"

#include <stdlib.h>
#include <wchar.h>
#include <windows.h>

#include <Lionhead/LHLog/ver4.0/LHLogger.h>
#include <Lionhead/LHLog/ver4.0/LHVersion.h>

#include "LHNetErrors.h"
#include "LHNetUtils.h"

#include "LHTransport.h"

char LHConnection::RegisteredGame[0x31];

void LHConnection::ClearAllData()
{
	Transport = NULL;
	Open = FALSE;
	EventFunction = NULL;
	EventContext = NULL;
	Mode = LH_OPERATING_MODE_NONE;
	NetUser = NULL;
	ConnectedUserID = 0;
	memset(ConnectedUserName, 0, sizeof(ConnectedUserName));
	ChallengeKey = 0;
	Validated = FALSE;
	ProtocolVersion = 0;
}

void LHConnection::SetNetUser(LHNetUser* net_user)
{
	if (net_user != NULL && net_user->id.IsValid())
		NetUser = net_user;
}

LH_TRANSPORT_TYPE LHConnection::GetTransportType()
{
	if (!Open)
		return (LH_TRANSPORT_TYPE)-1;
	return Transport->GetType();
}

void LHConnection::AddToIncomingEventQ(LHNetEvent* net_event)
{
	Transport->AddToIncomingEventQ(net_event);
}

void LHConnection::AddToFrontOfIncomingEventQ(LHNetEvent* net_event)
{
	Transport->AddToFrontOfIncomingEventQ(net_event);
}

void LHConnection::AddAtPositionInIncomingEventQ(LHNetEvent* net_event, unsigned long position)
{
	Transport->AddAtPositionInIncomingEventQ(net_event, position);
}

unsigned long LHConnection::GetIncomingEventQSize()
{
	if (!Open)
		return 0;
	return Transport->GetIncomingEventQSize();
}

bool LHConnection::Flushed()
{
	if (!Open)
		return false;
	return Transport->Flushed();
}

void* LHConnection::GetSignalDataToRead()
{
	return Transport->GetSignalDataToRead();
}

LHNetEvent* LHConnection::Read(unsigned long timeout, LH_NETEVENT_TYPE type)
{
	LHNetEvent* net_event = RawRead(timeout, type);
	if (net_event != NULL && BaseProcessEvent(net_event) != LH_OK)
		return NULL;
	return net_event;
}

LHNetEvent* LHConnection::RawRead(unsigned long timeout, LH_NETEVENT_TYPE type)
{
	if (!Open)
		return NULL;
	if (!Transport->IsOpen())
		return NULL;
	if (type != 0)
		return Transport->ExtractEvent(type, timeout);
	return Transport->Read(timeout);
}

LHNetEvent* LHConnection::RawPeek(unsigned long timeout, LH_NETEVENT_TYPE type)
{
	if (!Open)
		return NULL;
	return Transport->RawPeek(type, timeout);
}

LHNetEvent* LHConnection::Peek(unsigned long timeout)
{
	if (!Open)
		return NULL;
	return Transport->Peek(timeout);
}

void LHConnection::Disconnect()
{
	if (Open && !IsDisconnected())
		Transport->Disconnect();
}

LH_RETURN LHConnection::BaseProcessEvent(LHNetEvent* net_event)
{
	switch (net_event->GetType())
	{
	case LH_NETEVENT_TYPE_SERVER_CONNECTION_REFUSED:
		return ProcessServerConnectionRefused(net_event);
	case LH_NETEVENT_TYPE_SERVER_CONNECTION_VALIDATED:
		return ProcessServerConnectionValidated(net_event);
	case LH_NETEVENT_TYPE_SERVER_REQUEST_CHALLENGE:
		return ProcessServerRequestChallenge(net_event);
	case LH_NETEVENT_TYPE_SERVER_GREETING:
		return ProcessServerGreeting(net_event);
	default:
		if (EventFunction != NULL)
			return EventFunction(net_event, this, EventContext);
		return ProcessEvent(net_event);
	case LH_NETEVENT_TYPE_CLIENT_CHALLENGE_RESPONSE:
		return ProcessClientChallengeResponse(net_event);
	case LH_NETEVENT_TYPE_CLIENT_JOIN:
		return ProcessClientJoin(net_event);
	}
}

LH_RETURN LHConnection::SetConnectedUserName(unsigned short* name)
{
	wcsncpy(ConnectedUserName, name, 0x30);
	return LH_OK;
}

LH_RETURN LHConnection::ProcessClientJoin(LHNetEvent* net_event)
{
	unsigned short* name;
	unsigned long   clientVersion;

	if (net_event->VDecode(LH_NETEVENT_TYPE_CLIENT_JOIN, &name, &clientVersion) != LH_OK)
		return LH_ERROR;
	if (DetermineConnectionProtocol(this, GetProtocolVersion(), &ProtocolVersion, clientVersion) != LH_OK)
		return LH_FAIL;

	SetConnectedUserName(name);
	ConnectedUserID = net_event->GetUserID();
	srand(GetTickCount());
	ChallengeKey = (rand() << 16) + rand();
	return Write(
		LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_REQUEST_CHALLENGE, GetUserID(), ChallengeKey, GetUserNameA()));
}

LH_RETURN LHConnection::DetermineConnectionProtocol(LHConnection* connection, unsigned long local_version,
                                                    unsigned long* protocol_version, unsigned long remote_version)
{
	if (HIWORD(local_version) == HIWORD(remote_version) && LOWORD(local_version) == LOWORD(remote_version))
	{
		*protocol_version = remote_version;
		return LH_OK;
	}

	connection->WriteLastError(LH_NETEVENT_TYPE_SERVER_CONNECTION_REFUSED);
	return LH_FAIL;
}

void LHConnection::WriteLastError(LH_NETEVENT_TYPE type)
{
	Write(LHNetEvent::VCreate(type, GetUserID(), LHLogger::GetCode(), LHLogger::GetText()));
	Flush(500);
	Disconnect();
}

void LHConnection::FeedbackLastErrorAndClose()
{
	Validated = TRUE;
	AddToFrontOfIncomingEventQ(
		LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_ERROR, GetUserID(), LHLogger::GetCode(), LHLogger::GetText()));
	Disconnect();
}

LH_RETURN LHConnection::ProcessServerRequestChallenge(LHNetEvent* net_event)
{
	unsigned long challengeKey;
	char*         name;

	if (net_event->VDecode(LH_NETEVENT_TYPE_SERVER_REQUEST_CHALLENGE, &challengeKey, &name) != LH_OK)
		return LH_ERROR;

	SetConnectedUserName(LIBCHAR2WCHAR(name));
	ConnectedUserID = net_event->GetUserID();
	unsigned long response = LHVersion::ChecksumBlock((unsigned char*)&challengeKey, sizeof(challengeKey));
	return Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_CLIENT_CHALLENGE_RESPONSE, GetUserID(), response));
}

LH_RETURN LHConnection::ProcessClientChallengeResponse(LHNetEvent* net_event)
{
	unsigned long response;

	if (net_event->VDecode(LH_NETEVENT_TYPE_CLIENT_CHALLENGE_RESPONSE, &response) != LH_OK)
		return LH_ERROR;
	if (response != LHVersion::ChecksumBlock((unsigned char*)&ChallengeKey, sizeof(ChallengeKey)))
	{
		WriteLastError(LH_NETEVENT_TYPE_SERVER_CONNECTION_REFUSED);
		return LH_FAIL;
	}

	Validated = TRUE;
	AddToIncomingEventQ(LHNetEvent::CreateSimple(LH_NETEVENT_TYPE_ADD_CONNECTION, GetUserID(), 0, NULL));
	return Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_SERVER_CONNECTION_VALIDATED, GetUserID(), GetProtocolVersion(),
	                                 ProtocolVersion)) != LH_OK
	           ? LH_FAIL
	           : LH_OK;
}

LH_RETURN LHConnection::ProcessServerConnectionValidated(LHNetEvent* net_event)
{
	unsigned long serverVersion;
	unsigned long protocolVersion;

	if (net_event->VDecode(LH_NETEVENT_TYPE_SERVER_CONNECTION_VALIDATED, &serverVersion, &protocolVersion) != LH_OK)
		return LH_ERROR;

	Validated = TRUE;
	ProtocolVersion = protocolVersion;
	return LH_OK;
}

LH_RETURN LHConnection::ProcessServerConnectionRefused(LHNetEvent* net_event)
{
	unsigned long errorCode;
	char*         errorText;

	if (net_event->VDecode(LH_NETEVENT_TYPE_SERVER_CONNECTION_REFUSED, &errorCode, &errorText) != LH_OK)
		return LH_ERROR;

	FeedbackLastErrorAndClose();
	return LH_OK;
}

LH_RETURN LHConnection::ProcessServerGreeting(LHNetEvent* net_event)
{
	char*         param_1;
	char*         param_2;
	char*         param_3;
	unsigned long param_4;
	char*         param_5;
	unsigned long param_6;

	return net_event->VDecode(LH_NETEVENT_TYPE_SERVER_GREETING, &param_1, &param_2, &param_3, &param_4, &param_5,
	                          &param_6) != LH_OK
	           ? LH_FAIL
	           : LH_OK;
}

LH_RETURN LHConnection::WaitForConnectionValidation()
{
	LHNetEvent* net_event;

	while (!Validated)
	{
		net_event = Read(10000000, (LH_NETEVENT_TYPE)0);
		if (net_event == NULL)
			return LH_FAIL;
		if (!Open)
			return LH_FAIL;
	}

	// TODO: net_event is read uninitialised when the connection was already validated; the
	// binary does the same.
	if (net_event->GetType() == LH_NETEVENT_TYPE_SERVER_CONNECTION_VALIDATED ||
	    net_event->GetType() == LH_NETEVENT_TYPE_CLIENT_CHALLENGE_RESPONSE)
		return LH_OK;
	return LH_FAIL;
}

LH_RETURN LHConnection::Write(LHNetEvent* net_event)
{
	if (!Open)
		return LH_ERROR;
	if (IsDisconnected())
		return LH_ERROR;
	if (net_event == NULL)
		return LH_ERROR;
	if (!Transport->IsOpen())
		return LH_ERROR;
	if (net_event->GetUDPinfo()->type == LH_TRANSPORT_TYPE_UDP && GetTransportType() != LH_TRANSPORT_TYPE_UDP)
		return LH_ERROR;

	Transport->Write(net_event);
	return LH_OK;
}

LH_RETURN LHConnection::Write(LHNetEvent* net_event, LHTransportInfo* transport_info)
{
	if (net_event == NULL)
		return LH_ERROR;
	if (GetTransportType() != LH_TRANSPORT_TYPE_UDP)
		return LH_ERROR;
	return ((LHTransportUDP*)Transport)->Write(net_event, transport_info);
}

LH_RETURN LHConnection::OpenClientConnection(LHNetUser* user, LHTransportInfo* transport_info)
{
	if (RawOpen(user, transport_info) != LH_OK || SendClientProtocol() != LH_OK)
		return LH_ERROR;
	return LH_OK;
}

LH_RETURN LHConnection::SendClientProtocol()
{
	Write(LHNetEvent::VCreate(LH_NETEVENT_TYPE_CLIENT_JOIN, GetUserID(), GetUserNameA(), GetProtocolVersion()));
	if (GetTransportType() == LH_TRANSPORT_TYPE_TCP && WaitForConnectionValidation() != LH_OK)
	{
		Close();
		return LH_FAIL;
	}
	return LH_OK;
}

LH_RETURN LHConnection::RawOpen(LHNetUser* user, LHTransportInfo* transport_info)
{
	if (Open)
		goto fail;
	if (transport_info == NULL)
		goto fail;

	SetNetUser(user);
	Transport = LHTransport::Create(transport_info->type);
	if (Transport == NULL)
		goto fail;
	if (Transport->Open(NULL, NULL, transport_info) != LH_OK)
	{
		ClearTransport();
	fail:
		return LH_FAIL;
	}

	Mode = transport_info->type == LH_TRANSPORT_TYPE_BASE || transport_info->type == LH_TRANSPORT_TYPE_SYNC
	           ? LH_OPERATING_MODE_SYNCHRONOUS
	           : LH_OPERATING_MODE_ASYNCHRONOUS;
	if (!ConnectionOriented())
		Validated = TRUE;
	Open = TRUE;
	return LH_OK;
}

int LHConnection::ConnectionOriented()
{
	return Transport->GetType() != LH_TRANSPORT_TYPE_UDP;
}

LH_RETURN LHConnection::OpenServerConnectionToExternalTransport(LHNetUser* user, LHTransport* transport)
{
	if (Open)
		return LH_FAIL;

	SetNetUser(user);
	Mode = LH_OPERATING_MODE_ASYNCHRONOUS;
	Transport = transport;
	Open = TRUE;
	if (WaitForConnectionValidation() != LH_OK)
	{
		Close();
		return LH_FAIL;
	}
	return LH_OK;
}

// TODO: 66%. The target keeps a separate Close()/return LH_ERROR block after each of the five reads
// (and a separate return for the final check) where our build shares one block; separate ifs, the
// Mac && chain and || all compile to the shared form.
LH_RETURN LHConnection::OpenServerConnectionToOtherConnection(LHNetUser* user, LHConnection* connection,
                                                              void (*callback)(void*), void* context)
{
	if (Open)
		return LH_FAIL;

	SetNetUser(user);
	switch (connection->GetTransportType())
	{
	case LH_TRANSPORT_TYPE_ASYNC:
		Transport = LHTransport::Create(LH_TRANSPORT_TYPE_ASYNC);
		if (Transport == NULL)
		{
			ClearAllData();
			return LH_FAIL;
		}
		Mode = LH_OPERATING_MODE_ASYNCHRONOUS;
		break;
	case LH_TRANSPORT_TYPE_SYNC:
		Transport = LHTransport::Create(LH_TRANSPORT_TYPE_BASE);
		if (Transport == NULL)
		{
			ClearAllData();
			return LH_FAIL;
		}
		Mode = LH_OPERATING_MODE_SYNCHRONOUS;
		break;
	}

	if (Transport->OpenConnectionToTransport(connection->Transport, callback, context) != LH_OK)
		return LH_FAIL;

	// Pump the five handshake events through both ends.
	Open = TRUE;
	if (Read(-1, (LH_NETEVENT_TYPE)0) != NULL && connection->Read(-1, (LH_NETEVENT_TYPE)0) != NULL &&
	    Read(-1, (LH_NETEVENT_TYPE)0) != NULL && connection->Read(-1, (LH_NETEVENT_TYPE)0) != NULL &&
	    Read(-1, (LH_NETEVENT_TYPE)0) != NULL)
	{
		if (Validated && connection->Validated)
			return LH_OK;
		return LH_ERROR;
	}

	Close();
	return LH_ERROR;
}

void LHConnection::SetEventFunction(LHConnectionEventFunction event_function, void* context)
{
	if (EventFunction == NULL && EventContext == NULL)
	{
		EventFunction = event_function;
		EventContext = context;
	}
}

void LHConnection::ClearTransport()
{
	if (Transport != NULL)
		LHTransport::Destroy(Transport);
	Transport = NULL;
}

LH_RETURN LHConnection::Flush(unsigned long timeout)
{
	if (!Open)
		return LH_ERROR;
	if (Flushed())
		return LH_OK;
	if (IsDisconnected())
		return LH_FAIL;
	return Transport->Flush(timeout);
}

void LHConnection::Close()
{
	if (Open)
	{
		Open = FALSE;
		ClearTransport();
		ClearAllData();
	}
}

LHConnection::~LHConnection()
{
	if (Open)
		Close();
}

int LHConnection::IsDisconnected()
{
	if (!Open)
		return TRUE;
	return Transport->IsDisconnected();
}

int LHConnection::IsInternal()
{
	if (!Open)
		return LH_ERROR;
	if (GetTransportType() == LH_TRANSPORT_TYPE_BASE || GetTransportType() == LH_TRANSPORT_TYPE_SYNC ||
	    GetTransportType() == LH_TRANSPORT_TYPE_ASYNC)
		return TRUE;
	return FALSE;
}

int LHConnection::CheckForEvents()
{
	if (!Open)
		return FALSE;
	return Transport->CheckForEvents();
}

int LHConnection::CheckForEvent(LH_NETEVENT_TYPE type)
{
	if (!Open)
		return FALSE;
	return Transport->CheckForEvent(type);
}

LHNetEvent* LHConnection::GetLastEventRead()
{
	return Transport->GetLastEventRead();
}

void LHConnection::SetLastEventReadToBeIgnored()
{
	Transport->SetLastEventReadToBeIgnored();
}

unsigned long LHConnection::GetProtocolVersion()
{
	unsigned long version;
	return LHVersion::GetMajorMinorULONG("LHConnectionProtocol", &version) == LH_OK ? version : 0;
}

// TODO: the variadic connection list is never read; both binaries pass an empty array.
LHNetEvent* __cdecl LHConnection::BlockingMultipleRead(LHConnection** connection, ...)
{
	unsigned long  index;
	LHConnection** connections = new LHConnection*[0];
	LHNetEvent*    net_event = BlockingMultipleRead(&index, connections, 0);
	*connection = connections[index];
	delete connections;
	return net_event;
}

// TODO: same instructions, different block layout: the target places the early-return block of the
// first loop and the final Read after the WAIT_FAILED return.
LHNetEvent* LHConnection::BlockingMultipleRead(unsigned long* index, LHConnection** connections, unsigned long count)
{
	HANDLE* signals = new HANDLE[count];
	long    i;

	for (i = 0; i < (long)count; i++)
		signals[i] = connections[i]->GetSignalDataToRead();

	for (i = 0; i < (long)count; i++)
	{
		if (connections[i]->CheckForEvents())
		{
			*index = i;
			delete signals;
			return connections[i]->Read(-1, (LH_NETEVENT_TYPE)0);
		}
	}

	long result = WaitForMultipleObjects(count, signals, FALSE, INFINITE);
	delete signals;
	if (result == -1)
		return NULL;
	if (result < 0 || result >= (long)count)
		return NULL;

	*index = result;
	if (connections[result]->CheckForEvents() == TRUE)
		return connections[result]->Read(0, (LH_NETEVENT_TYPE)0);
	return NULL;
}

LH_RETURN LHConnection::GetTransportInfo(LHTransportInfo* transport_info, int local)
{
	return Transport->GetTransportInfo(transport_info, local);
}

// Registers the connection protocol version ("LHConnectionProtocol" 1.15) with LHLogR.dll; GetProtocolVersion()
// reads it back through LHVersion::GetMajorMinorULONG. The same block/object/pointer triple appears in every
// versioned module (LHLobbyServer.cpp, LHMessageServer.cpp, LHMultiplayerLib, LHLog, LHAudio, the game).
// TODO: names fabricated; Windows only (the Mac build has no version blocks). Nothing reads VersionPointer.
// The object's name must hash into a lower cl .bss bucket than RegisteredGame and LH_ALL_USERS so that it is
// laid out first, as in the target ("VersionInformation" is bucket 3).
static LHVersionBlock VersionBlock = {
	"YyHhTtMm",
	"RELEASE",
	"LHConnectionProtocol",
	"1",
	"15",
	"$Author: Trance $",
	"$Date: 20/04/01 14:20 $",
	"NULL",
	"Mid Game join now supported",
	"NULL",
	"NULL",
	"",
	"YyHhTtMM",
};
static LHVersion  VersionInformation(&VersionBlock);
static LHVersion* VersionPointer = &VersionInformation;
