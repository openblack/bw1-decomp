#define LH_MULTIPLAYER_EXPORTS
#include "LHTCPServerListener.h"

#include "LHConnection.h"
#include "LHNetErrors.h"
#include "LHNetUser.h"
#include "LHSocketTCP.h"
#include "LHTransport.h"

void LHTCPServerListener::ClearAllData()
{
	BroadcastConnection = NULL;
	AcceptSocket = NULL;
	BroadcastListenerInfo.ClearAllData();
	ConnectionAcceptorInfo.ClearAllData();
}

void LHTCPServerListener::StopListening()
{
	AcceptSocket->Disconnect();
}

LH_RETURN LHTCPServerListener::StartListening(LHTransportInfo* acceptor_info, LHTransportInfo* broadcast_info)
{
	unsigned short port;
	if (acceptor_info == NULL)
		port = broadcast_info->GetPort();
	else
		port = acceptor_info->GetPort();

	if (broadcast_info != NULL)
	{
		BroadcastListenerInfo.Set(LHSocketTCP::GetIPAddress(), broadcast_info->GetPort());
		BroadcastConnection = new LHConnection();
		if (BroadcastConnection->RawOpen(NetUser, broadcast_info) != LH_OK)
		{
			delete BroadcastConnection;
			BroadcastConnection = NULL;
			return LH_FAIL;
		}
		BroadcastConnection->SetEventFunction(ProcessEvent, Context);
	}

	AcceptSocket = new LHSocketTCP();
	if (AcceptSocket->AcceptConnections(port) != LH_OK && AcceptSocket->AcceptConnections(0) != LH_OK)
		return LH_FAIL;
	return AcceptSocket->GetSocketInfo(&ConnectionAcceptorInfo, true);
}

LH_RETURN LHTCPServerListener::DoProcessing(long signal_index)
{
	if (signal_index == LH_SERVER_SIGNAL_BROADCAST)
	{
		while (BroadcastConnection->Read(0, LH_NETEVENT_TYPE_NONE) != NULL)
			;
	}
	else if (signal_index == LH_SERVER_SIGNAL_ACCEPT_CONNECTION)
	{
		LHSocketTCP* socket;
		if (AcceptSocket->GetNewConnectedSocket(&socket, 0) == LH_OK)
		{
			LHTransportTCP* transport = (LHTransportTCP*)LHTransport::Create(LH_TRANSPORT_TYPE_TCP);
			if (transport->Open(socket) != LH_OK)
				LHTransport::Destroy(transport);
			return ProcessNewConnection(transport);
		}
	}
}

LH_RETURN LHTCPServerListener::BroadcastEvent(LHNetEvent* net_event, LHTransportInfo* transport_info)
{
	return BroadcastConnection->Write(net_event, transport_info == NULL || transport_info->type == 0
	                                                 ? &LHTransportInfo(BroadcastListenerInfo.GetPort())
	                                                 : transport_info);
}

void LHTCPServerListener::Shutdown()
{
	if (State != LH_SERVER_LISTENER_STATE_SHUT_DOWN)
	{
		if (BroadcastConnection != NULL)
		{
			BroadcastConnection->Close();
			delete BroadcastConnection;
			BroadcastConnection = NULL;
		}
		if (AcceptSocket != NULL)
		{
			AcceptSocket->Disconnect();
			delete AcceptSocket;
			AcceptSocket = NULL;
		}
		ClearAllData();
		LHServerListener::Shutdown();
	}
}

void* LHTCPServerListener::GetAcceptConnectionSignal()
{
	return AcceptSocket != NULL ? AcceptSocket->GetSignal() : NULL;
}

void* LHTCPServerListener::GetBroadcastSignal()
{
	return BroadcastConnection != NULL ? BroadcastConnection->GetSignalDataToRead() : NULL;
}

LH_RETURN LHTCPServerListener::GetActivitySignals(unsigned long* count, void*** signals)
{
	static void* handles[LH_TCP_SERVER_LISTENER_MAX_SIGNALS];

	*count = 1;
	handles[0] = AcceptSocket->GetSignal();
	if (BroadcastConnection != NULL)
	{
		*count = 2;
		handles[1] = BroadcastConnection->GetSignalDataToRead();
	}
	*signals = handles;
	return LH_OK;
}
