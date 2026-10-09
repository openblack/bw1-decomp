#define LH_MULTIPLAYER_EXPORTS
#include "LHServerListener.h"

#include "LHConnection.h"
#include "LHNetErrors.h"
#include "LHNetUser.h"
#include "LHTCPServerListener.h"

void LHServerListener::ClearAllData()
{
	AddConnection = NULL;
	ProcessEvent = NULL;
	Context = NULL;
	NetUser = NULL;
	Open = false;
	State = LH_SERVER_LISTENER_STATE_SHUT_DOWN;
}

LH_RETURN LHServerListener::BaseStartListening(LHNetUser* user, void* context,
                                               LHServerListenerAddConnectionFunction add_connection,
                                               LHTransportInfo* acceptor_info, LHTransportInfo* broadcast_info,
                                               LHServerListenerEventFunction process_event)
{
	if ((user != NULL && context != NULL && add_connection != NULL) == false)
		return LH_ERROR;
	if (!user->id.IsValid())
		return LH_ERROR;
	if (broadcast_info != NULL && broadcast_info->type != LH_TRANSPORT_TYPE_TCP && process_event == NULL)
		return LH_ERROR;

	AddConnection = add_connection;
	ProcessEvent = process_event;
	Context = context;
	NetUser = user;

	LH_RETURN result = StartListening(acceptor_info, broadcast_info);
	if (result == LH_OK)
		State = LH_SERVER_LISTENER_STATE_LISTENING;
	return result;
}

LHServerListener* LHServerListener::Create(LH_TRANSPORT_TYPE type)
{
	if (type != LH_TRANSPORT_TYPE_UDP)
		return NULL;
	return new LHTCPServerListener();
}

LH_RETURN LHServerListener::ProcessNewConnection(LHTransport* transport)
{
	if (AddConnection == NULL)
		return LH_FAIL;

	LHConnection* connection = new LHConnection();
	if (connection->OpenServerConnectionToExternalTransport(NetUser, transport) != LH_OK)
	{
		delete connection;
		return LH_FAIL;
	}
	if (AddConnection(connection, Context) != LH_OK)
	{
		delete connection;
		return LH_FAIL;
	}
	if (connection->Read(0, LH_NETEVENT_TYPE_NONE) == NULL)
	{
		delete connection;
		return LH_FAIL;
	}
	return LH_OK;
}

void LHServerListener::Shutdown()
{
	if (State != LH_SERVER_LISTENER_STATE_SHUT_DOWN)
		ClearAllData();
}

LHServerListener::~LHServerListener()
{
	Shutdown();
}
