#define LH_MULTIPLAYER_EXPORTS
#include "LHSocketTCP.h"

#include <stddef.h>
#include <stdlib.h>
#include <string.h>

#include <Lionhead/LHLib/ver5.0/LHTimer.inl>
#include <Lionhead/LHLog/ver4.0/LHLogger.h>
#include <zlib/zlib.h>

#include "LHNetLog.h"
#include "LHPacket.h"
#include "LHTransportInfo.h"

enum
{
	LH_SOCKET_UDP_PACKET_SIZE = 0x400,
	LH_SOCKET_COMPRESSION_THRESHOLD = 100,
	LH_SOCKET_COMPRESSED_FLAG = 0x8000,
	LH_SOCKET_TIMEOUT = 60000,
	LH_SOCKET_LOOPBACK_ADDRESS = 0x0100007f,
	LH_SOCKET_PACKET_LENGTH_SIZE = sizeof(uint16_t),
	LH_SOCKET_PACKET_HEADER_SIZE = sizeof(LHPacketHeader) - LH_SOCKET_PACKET_LENGTH_SIZE,
};

int LHSocket::InitFlag;

LHSocket::LHSocket()
{
	ClearAllData();
	if (!InitFlag)
		Startup();
}

LHSocket::~LHSocket()
{
	ClearLastUDPPacketBuffer();
}

void LHSocket::Shutdown()
{
	InitFlag = 0;
	WSACleanup();
}

void LHSocket::Startup()
{
	WSADATA data;

	if (!InitFlag && WSAStartup(MAKEWORD(2, 2), &data) == 0)
		InitFlag = 1;
}

void LHSocket::ClearAllData()
{
	LastReadPacket = NULL;
	memset(&Address, 0, sizeof(Address));
	HostEntry = NULL;
	SendBytesTotal = 0;
	SendBytes = 0;
	Socket = INVALID_SOCKET;
	LastUDPPacket = NULL;
}

void LHSocket::ClearLastUDPPacketBuffer()
{
	if (LastUDPPacket != NULL)
	{
		free(LastUDPPacket);
		LastUDPPacket = NULL;
	}
}

LH_RETURN LHSocket::WaitForSocketEvents(unsigned int* sockets, unsigned short count, timeval* timeout)
{
	fd_set read_set;
	fd_set except_set;

	if (!InitFlag)
		return LH_ERROR;
	if (count == 0)
		return LH_FAIL;

	FD_ZERO(&read_set);
	FD_ZERO(&except_set);
	for (unsigned short i = 0; i < count; i++)
	{
		FD_SET(sockets[i], &read_set);
		FD_SET(sockets[i], &except_set);
	}
	if (select(0, &read_set, NULL, &except_set, timeout) == SOCKET_ERROR)
		return LH_FAIL;
	return LH_OK;
}

LH_RETURN LHSocket::Resolving(char* host)
{
	if (!InitFlag)
		return LH_ERROR;

	Address.sin_addr.s_addr = inet_addr(host);
	if (Address.sin_addr.s_addr == INADDR_NONE)
	{
		HostEntry = gethostbyname(host);
		if (HostEntry == NULL)
			return LH_FAIL;
		memcpy(&Address.sin_addr, HostEntry->h_addr_list[0], sizeof(Address.sin_addr));
	}
	return LH_OK;
}

LH_RETURN LHSocket::GetIP(char* ip)
{
	if (!InitFlag)
		return LH_ERROR;

	strcpy(ip, inet_ntoa(Address.sin_addr));
	if (ip == NULL)
		return LH_FAIL;
	return LH_OK;
}

long LHSocket::GetIPbin()
{
	if (!InitFlag)
		return 0;
	return Address.sin_addr.s_addr;
}

long LHSocket::GetPort()
{
	if (!InitFlag)
		return 0;
	return ntohs(Address.sin_port);
}

LH_RETURN LHSocket::GetName(char* name)
{
	if (!InitFlag)
		return LH_ERROR;
	if (HostEntry != NULL)
	{
		strcpy(name, HostEntry->h_name);
		return LH_OK;
	}
	return LH_FAIL;
}

long LHSocket::GetSendBytesTotal()
{
	return SendBytesTotal;
}

long LHSocket::GetSendBytes()
{
	return SendBytes;
}

LH_RETURN LHSocket::IsReadData()
{
	fd_set  read_set;
	timeval timeout;

	if (!InitFlag)
		return LH_ERROR;

	timeout.tv_sec = 0;
	timeout.tv_usec = 1;
	FD_ZERO(&read_set);
	FD_SET(Socket, &read_set);
	if (select(0, &read_set, NULL, NULL, &timeout) == SOCKET_ERROR)
		return LH_FAIL;
	if (FD_ISSET(Socket, &read_set))
		return LH_OK;
	return LH_FAIL;
}

LH_RETURN LHSocket::IsExcept()
{
	fd_set  except_set;
	timeval timeout;

	if (!InitFlag)
		return LH_ERROR;

	timeout.tv_sec = 0;
	timeout.tv_usec = 0;
	FD_ZERO(&except_set);
	FD_SET(Socket, &except_set);
	if (select(Socket + 1, NULL, NULL, &except_set, &timeout) == SOCKET_ERROR)
		return LH_FAIL;
	if (FD_ISSET(Socket, &except_set))
		return LH_OK;
	return LH_FAIL;
}

LHSocketTCP::LHSocketTCP()
{
	HostEntry = NULL;
	Socket = INVALID_SOCKET;
	Signal = NULL;
	SignalCreated = false;
	SendBytesTotal = 0;
	memset(ReadBuffer, 0, sizeof(ReadBuffer));
	ReadPointer = ReadBuffer;
	ReadPacketSize = 0;
	ReadPacketComplete = false;
	memset(WriteBuffer, 0, sizeof(WriteBuffer));
	WritePointer = WriteBuffer;
	SendPointer = WriteBuffer;
}

LHSocketTCP::LHSocketTCP(int socket)
{
	HostEntry = NULL;
	Socket = socket;
	Signal = NULL;
	SignalCreated = false;
	SendBytesTotal = 0;
	memset(ReadBuffer, 0, sizeof(ReadBuffer));
	ReadPointer = ReadBuffer;
	ReadPacketSize = 0;
	ReadPacketComplete = false;
	memset(WriteBuffer, 0, sizeof(WriteBuffer));
	WritePointer = WriteBuffer;
	SendPointer = WriteBuffer;
}

LHSocketTCP::LHSocketTCP(int socket, sockaddr_in* address)
{
	Socket = socket;
	Signal = NULL;
	SignalCreated = false;
	Address = *address;
	HostEntry = gethostbyaddr((char*)&Address.sin_addr, sizeof(Address.sin_addr), AF_INET);
	SendBytesTotal = 0;
	memset(ReadBuffer, 0, sizeof(ReadBuffer));
	ReadPointer = ReadBuffer;
	ReadPacketSize = 0;
	ReadPacketComplete = false;
	memset(WriteBuffer, 0, sizeof(WriteBuffer));
	WritePointer = WriteBuffer;
	SendPointer = WriteBuffer;
}

LH_RETURN LHSocketTCP::Connect(LHTransportInfo* transport_info)
{
	int no_delay;

	if (!InitFlag)
		return LH_ERROR;
	if (transport_info->type != LH_TRANSPORT_TYPE_TCP)
		return LH_ERROR;

	unsigned short port = transport_info->GetPort();
	if (Resolving(transport_info->GetIP()) != LH_OK)
		return LH_FAIL;

	Socket = socket(AF_INET, SOCK_STREAM, 0);
	Address.sin_family = AF_INET;
	Address.sin_port = htons(port);
	if (connect(Socket, (sockaddr*)&Address, sizeof(Address)) == SOCKET_ERROR)
	{
		closesocket(Socket);
		Socket = INVALID_SOCKET;
		LHLogger::GetCode();
		return LH_FAIL;
	}

	Timer.Restart(0);
	LastReceiveTime = 0;
	Signal = CreateEvent(NULL, FALSE, FALSE, NULL);
	if (Signal == NULL)
	{
		closesocket(Socket);
		return LH_ERROR;
	}
	SignalCreated = true;
	if (WSAEventSelect(Socket, Signal, FD_READ | FD_WRITE) == SOCKET_ERROR)
	{
		closesocket(Socket);
		return LH_ERROR;
	}

	no_delay = 1;
	setsockopt(Socket, IPPROTO_TCP, TCP_NODELAY, (char*)&no_delay, sizeof(no_delay));
	return LH_OK;
}

LH_RETURN LHSocketTCP::Send(void* data, long size)
{
	if (!InitFlag)
		return LH_ERROR;

	SendBytes = send(Socket, (char*)data, size, 0);
	if (SendBytes == SOCKET_ERROR)
		return LH_FAIL;
	if (SendBytes != size)
		return LH_ERROR;
	SendBytesTotal += SendBytes;
	return LH_OK;
}

LH_RETURN LHSocketTCP::PreparePacketToWrite(LHPacket* packet)
{
	if (!InitFlag)
		return LH_ERROR;

	bool          compressed = false;
	unsigned long compressed_size = sizeof(CompressionBuffer);
	if (packet->GetDataLen() > LH_SOCKET_COMPRESSION_THRESHOLD)
	{
		unsigned long size = (unsigned short)(packet->GetDataLen() - LH_SOCKET_PACKET_HEADER_SIZE);
		if (compress((Bytef*)CompressionBuffer, &compressed_size, packet->payload, size) == Z_OK &&
		    compressed_size < size)
		{
			unsigned short length = compressed_size + LH_SOCKET_PACKET_HEADER_SIZE;
			compressed = true;
			memcpy(WritePointer, &length, sizeof(length));
			WritePointer += sizeof(length);
			unsigned short type;
			memcpy(&type, &packet->header.NeteventType, sizeof(type));
			type |= LH_SOCKET_COMPRESSED_FLAG;
			memcpy(WritePointer, &type, sizeof(type));
			WritePointer += sizeof(type);
			memcpy(WritePointer, &packet->header.UserId, sizeof(packet->header.UserId));
			WritePointer += sizeof(packet->header.UserId);
			memcpy(WritePointer, CompressionBuffer, compressed_size);
			WritePointer += compressed_size;
		}
	}
	if (!compressed)
	{
		unsigned short length = packet->GetDataLen() + LH_SOCKET_PACKET_LENGTH_SIZE;
		if (WritePointer + length > WriteBuffer + sizeof(WriteBuffer))
			return LH_ERROR;
		memcpy(WritePointer, packet, length);
		WritePointer += length;
	}
	return LH_OK;
}

LH_RETURN LHSocketTCP::FlushBuffer()
{
	if (!InitFlag)
		return LH_ERROR;

	long size = WritePointer - SendPointer;
	if (size != 0 && WritePointer != WriteBuffer)
	{
		int sent = send(Socket, SendPointer, size, 0);
		if (sent == SOCKET_ERROR)
			return WSAGetLastError() == WSAEWOULDBLOCK ? LH_FAIL : LH_ERROR;
		SendPointer += sent;
		if (sent < size)
			return LH_FAIL;
		memset(WriteBuffer, 0, WritePointer - WriteBuffer);
		WritePointer = WriteBuffer;
		SendPointer = WriteBuffer;
	}
	return LH_OK;
}

bool LHSocketTCP::Flushed()
{
	if (WritePointer - SendPointer == 0 || WritePointer == WriteBuffer)
		return true;
	return false;
}

LH_RETURN LHSocketTCP::Receive(void* data, long size, int flags)
{
	if (!InitFlag)
		return LH_ERROR;

	long received = 0;
	long remaining = size;
	while (received < size)
	{
		int result = recv(Socket, (char*)data + received, remaining, 0);
		LastReceiveTime = Timer.MSeconds();
		if (result == SOCKET_ERROR || result == 0)
			return LH_ERROR;
		received += result;
		remaining = size - received;
		if (received > size)
			return LH_ERROR;
	}
	return LH_OK;
}

LH_RETURN LHSocketTCP::DoAttemptReadPacketNonBlocking()
{
	if (!InitFlag)
		return LH_ERROR;

	if ((unsigned long)(ReadPointer - ReadBuffer) < sizeof(ReadPacketSize))
	{
		long wanted = ReadBuffer + sizeof(ReadPacketSize) - ReadPointer;
		int  result = recv(Socket, ReadPointer, wanted, 0);
		LastReceiveTime = Timer.MSeconds();
		if (result == SOCKET_ERROR)
			return WSAGetLastError() == WSAEWOULDBLOCK ? LH_FAIL : LH_ERROR;
		if (result == 0)
			return LH_ERROR;
		if (result != wanted)
		{
			ReadPointer += result;
			return LH_FAIL;
		}
		ReadPointer += result;
		memcpy(&ReadPacketSize, ReadBuffer, sizeof(ReadPacketSize));
		if (ReadPacketSize == 0)
		{
			ResetReadPacket();
			return LH_FAIL;
		}
	}

	long wanted = ReadBuffer + ReadPacketSize + sizeof(ReadPacketSize) - ReadPointer;
	int  result = recv(Socket, ReadPointer, wanted, 0);
	LastReceiveTime = Timer.MSeconds();
	if (result == SOCKET_ERROR)
		return WSAGetLastError() == WSAEWOULDBLOCK ? LH_FAIL : LH_ERROR;
	if (result == 0)
		return LH_ERROR;
	if (result != wanted)
	{
		ReadPointer += result;
		return LH_FAIL;
	}
	ReadPointer += result;
	ReadPacketComplete = true;
	return DecompressPacketIfCompressed();
}

void LHSocketTCP::ResetReadPacket()
{
	ReadPointer = ReadBuffer;
	ReadPacketSize = 0;
	ReadPacketComplete = false;
}

LH_RETURN LHSocketTCP::DecompressPacketIfCompressed()
{
	unsigned long  uncompressed_size = sizeof(CompressionBuffer);
	unsigned short type;
	memcpy(&type, ReadBuffer + offsetof(LHPacketHeader, NeteventType), sizeof(type));
	if (type & LH_SOCKET_COMPRESSED_FLAG)
	{
		unsigned short length;
		memcpy(&length, ReadBuffer, sizeof(length));
		length -= LH_SOCKET_PACKET_HEADER_SIZE;
		if (uncompress((Bytef*)CompressionBuffer, &uncompressed_size, (Bytef*)ReadBuffer + sizeof(LHPacketHeader),
		               length) != Z_OK)
		{
			ResetReadPacket();
			return LH_FAIL;
		}
		type &= ~LH_SOCKET_COMPRESSED_FLAG;
		length = uncompressed_size + LH_SOCKET_PACKET_HEADER_SIZE;
		ReadPointer = ReadBuffer;
		memcpy(ReadPointer, &length, sizeof(length));
		ReadPointer += sizeof(length);
		memcpy(ReadPointer, &type, sizeof(type));
		ReadPointer += sizeof(type);
		ReadPointer += sizeof(LH_USER_ID);
		memcpy(ReadPointer, CompressionBuffer, uncompressed_size);
		ReadPointer += uncompressed_size;
		ReadPacketSize = length;
	}
	return LH_OK;
}

void LHSocketTCP::GetLastReadPacket(LHPacket** packet)
{
	if (GetNewPacket(ReadPacketSize) == LH_OK)
	{
		memcpy(LastReadPacket, ReadBuffer, ReadPacketSize + sizeof(ReadPacketSize));
		ResetReadPacket();
		*packet = LastReadPacket;
	}
}

LH_RETURN LHSocketTCP::ReceiveRaw(void* data, long* size)
{
	if (!InitFlag)
		return LH_ERROR;

	int result = recv(Socket, (char*)data, *size, 0);
	LastReceiveTime = Timer.MSeconds();
	if (result == SOCKET_ERROR)
		return LH_ERROR;
	if (result == 0)
		return LH_ERROR;
	*size = result;
	return LH_OK;
}

LH_RETURN LHSocketTCP::Disconnect()
{
	if (!InitFlag)
		return LH_ERROR;

	if (Socket != INVALID_SOCKET)
	{
		shutdown(Socket, SD_BOTH);
		closesocket(Socket);
	}
	Socket = INVALID_SOCKET;
	if (SignalCreated)
	{
		CloseHandle(Signal);
		SignalCreated = false;
	}
	memset(&Address, 0, sizeof(Address));
	ClearAllData();
	return LH_OK;
}

LHSocketTCP::~LHSocketTCP()
{
	Disconnect();
}

LH_RETURN LHSocketTCP::SendPacket(LHPacket* packet)
{
	return Send(packet, packet->GetDataLen() + LH_SOCKET_PACKET_LENGTH_SIZE);
}

LH_RETURN LHSocketTCP::GetNewPacket(unsigned long size)
{
	if (LastReadPacket != NULL)
		free(LastReadPacket);
	LHPacket* packet = (LHPacket*)calloc(size + LH_PACKET_ALLOCATION_PADDING, 1);
	packet->SetDataLen(size);
	LastReadPacket = packet;
	return LH_OK;
}

LH_RETURN LHSocketTCP::ReceivePacket(LHPacket** packet)
{
	unsigned short size;

	if (!InitFlag)
		return LH_ERROR;
	if (Receive(&size, sizeof(size), 1) != LH_OK)
		return LH_ERROR;

	LH_RETURN result = GetNewPacket(size);
	if (result == LH_FAIL)
		return result;
	if (Receive(LastReadPacket->GetDataPtr(), size, 1) != LH_OK)
		return LH_ERROR;
	*packet = LastReadPacket;
	return LH_OK;
}

LH_RETURN LHSocketTCP::AcceptConnections(unsigned short port)
{
	if (!InitFlag)
		return LH_ERROR;

	Socket = socket(AF_INET, SOCK_STREAM, 0);
	if (Socket == INVALID_SOCKET)
	{
		Socket = INVALID_SOCKET;
		return LH_ERROR;
	}

	memset(Address.sin_zero, 0, sizeof(Address.sin_zero));
	Address.sin_family = AF_INET;
	Address.sin_port = htons(port);
	Address.sin_addr.s_addr = INADDR_ANY;
	if (bind(Socket, (sockaddr*)&Address, sizeof(Address)) == SOCKET_ERROR)
	{
		closesocket(Socket);
		Socket = INVALID_SOCKET;
		return LH_ERROR;
	}
	if (listen(Socket, SOMAXCONN) == SOCKET_ERROR)
	{
		closesocket(Socket);
		Socket = INVALID_SOCKET;
		return LH_ERROR;
	}

	int no_delay = 1;
	Signal = CreateEvent(NULL, FALSE, FALSE, NULL);
	if (Signal == NULL)
	{
		closesocket(Socket);
		Socket = INVALID_SOCKET;
		return LH_FAIL;
	}
	if (WSAEventSelect(Socket, Signal, FD_ACCEPT) == SOCKET_ERROR)
	{
		closesocket(Socket);
		Socket = INVALID_SOCKET;
		Signal = NULL;
		return LH_FAIL;
	}
	SignalCreated = true;

	LHTransportInfo transport_info;
	GetSocketInfo(&transport_info, true);
	no_delay = 1;
	setsockopt(Socket, IPPROTO_TCP, TCP_NODELAY, (char*)&no_delay, sizeof(no_delay));
	return LH_OK;
}

LH_RETURN LHSocketTCP::GetDatagram(void* data, unsigned long size, unsigned long* received,
                                   LHTransportInfo* transport_info, unsigned long timeout)
{
	sockaddr_in from;
	int         from_length;
	timeval     wait;
	timeval*    wait_pointer;
	fd_set      read_set;

	if (!InitFlag)
		return LH_ERROR;

	from_length = sizeof(from);
	if (timeout == INFINITE)
	{
		wait_pointer = NULL;
	}
	else
	{
		wait.tv_sec = timeout / 1000;
		wait.tv_usec = (timeout % 1000) * 1000;
		wait_pointer = &wait;
	}
	FD_ZERO(&read_set);
	FD_SET(Socket, &read_set);
	int result = select(0, &read_set, NULL, NULL, wait_pointer);
	if (result == SOCKET_ERROR)
		return LH_ERROR;
	if (result != 0 && FD_ISSET(Socket, &read_set))
	{
		int length = recvfrom(Socket, (char*)data, size, 0, (sockaddr*)&from, &from_length);
		if (length != SOCKET_ERROR)
		{
			LHTransportInfoFromsockaddr_in(transport_info, &from);
			transport_info->type = LH_TRANSPORT_TYPE_UDP;
			*received = length;
			return LH_OK;
		}
	}
	return LH_FAIL;
}

LH_RETURN LHSocketTCP::ReceiveUDPPacket(LHPacket** packet, unsigned long timeout, LHTransportInfo* transport_info)
{
	unsigned long received;

	if (!InitFlag)
		return LH_ERROR;

	ClearLastUDPPacketBuffer();
	LHPacket* new_packet = (LHPacket*)calloc(LH_SOCKET_UDP_PACKET_SIZE + LH_PACKET_ALLOCATION_PADDING, 1);
	new_packet->SetDataLen(LH_SOCKET_UDP_PACKET_SIZE);
	LastUDPPacket = new_packet;
	*packet = new_packet;
	LH_RETURN result = GetDatagram(LastUDPPacket, LH_SOCKET_UDP_PACKET_SIZE, &received, transport_info, timeout);
	if (result == LH_OK)
	{
		if (received == LH_SOCKET_UDP_PACKET_SIZE)
			return LH_FAIL;
		if (received - LH_SOCKET_PACKET_LENGTH_SIZE != LastUDPPacket->GetDataLen())
			return LH_FAIL;
		return LH_OK;
	}
	return result;
}

LH_RETURN LHSocketTCP::sockaddr_inFromLHTransportInfo(sockaddr_in* address, LHTransportInfo* transport_info)
{
	if (!InitFlag)
		return LH_ERROR;

	unsigned long ip = inet_addr(transport_info->GetIP());
	if (ip == INADDR_NONE)
		return LH_FAIL;
	address->sin_family = AF_INET;
	address->sin_port = htons(transport_info->address.port);
	address->sin_addr.s_addr = ip;
	memset(address->sin_zero, 0, sizeof(address->sin_zero));
	return LH_OK;
}

LH_RETURN LHSocketTCP::LHTransportInfoFromsockaddr_in(LHTransportInfo* transport_info, sockaddr_in* address)
{
	LHIAddress ip_address;

	if (!InitFlag)
		return LH_ERROR;

	strcpy(ip_address.ip, inet_ntoa(address->sin_addr));
	ip_address.port = ntohs(address->sin_port);
	transport_info->Set(&ip_address);
	return LH_OK;
}

LH_RETURN LHSocketTCP::GetNewConnectedSocket(LHSocketTCP** socket, unsigned long timeout)
{
	sockaddr_in address;
	int         address_length;

	if (!InitFlag)
		return LH_ERROR;

	int option = 1;
	address_length = sizeof(address);
	SOCKET accepted = accept(Socket, (sockaddr*)&address, &address_length);
	if (accepted == INVALID_SOCKET)
		return LH_FAIL;

	*socket = new LHSocketTCP(accepted);
	WSAEventSelect(accepted, Signal, 0);
	(*socket)->Signal = CreateEvent(NULL, FALSE, FALSE, NULL);
	if ((*socket)->Signal == NULL)
	{
		closesocket(accepted);
		return LH_ERROR;
	}
	if (WSAEventSelect(accepted, (*socket)->Signal, FD_READ | FD_WRITE) == SOCKET_ERROR)
	{
		closesocket(accepted);
		return LH_ERROR;
	}
	(*socket)->SignalCreated = true;
	setsockopt(accepted, SOL_SOCKET, SO_KEEPALIVE, (char*)&option, sizeof(option));
	setsockopt(accepted, IPPROTO_TCP, TCP_NODELAY, (char*)&option, sizeof(option));
	(*socket)->Timer.Restart(0);
	return LH_OK;
}

LH_RETURN LHSocketTCP::SendDatagramPacket(LHPacket* packet, LHTransportInfo* transport_info)
{
	return SendDatagram(packet, packet->GetDataLen() + LH_SOCKET_PACKET_LENGTH_SIZE, transport_info);
}

LH_RETURN LHSocketTCP::SendDatagram(void* data, unsigned long size, LHTransportInfo* transport_info)
{
	sockaddr_in address;

	if (!InitFlag)
		return LH_ERROR;
	if (transport_info == NULL)
		return LH_ERROR;

	address.sin_port = 0;
	if (transport_info->type == (LH_TRANSPORT_TYPE)6)
	{
		address.sin_family = AF_INET;
		address.sin_port = htons(LH_TRANSPORT_DEFAULT_PORT);
		address.sin_addr.s_addr = LH_SOCKET_LOOPBACK_ADDRESS;
		if (address.sin_port != 0)
			sendto(Socket, (char*)data, size, 0, (sockaddr*)&address, sizeof(address));
		return LH_OK;
	}
	if (transport_info->type == (LH_TRANSPORT_TYPE)0)
	{
		address.sin_family = AF_INET;
		address.sin_port = htons(LH_TRANSPORT_DEFAULT_PORT);
		address.sin_addr.s_addr = INADDR_BROADCAST;
	}
	if (transport_info->type == LH_TRANSPORT_TYPE_UDP)
	{
		address.sin_family = AF_INET;
		address.sin_port = htons(transport_info->GetPort());
		address.sin_addr.s_addr = INADDR_BROADCAST;
	}
	if (transport_info->type == LH_TRANSPORT_TYPE_TCP)
	{
		if (Resolving(transport_info->GetIP()) != LH_OK)
			return LH_FAIL;
		address.sin_family = AF_INET;
		address.sin_port = htons(transport_info->GetPort());
		address.sin_addr.s_addr = Address.sin_addr.s_addr;
	}

	if (address.sin_port == 0 ||
	    sendto(Socket, (char*)data, size, 0, (sockaddr*)&address, sizeof(address)) != SOCKET_ERROR)
		return LH_OK;
	if (WSAGetLastError() == WSAEHOSTUNREACH)
	{
		LH_TRANSPORT_TYPE type = transport_info->type;
		if (type == (LH_TRANSPORT_TYPE)0 || type == LH_TRANSPORT_TYPE_UDP)
		{
			address.sin_family = AF_INET;
			address.sin_port = htons(LH_TRANSPORT_DEFAULT_PORT);
			address.sin_addr.s_addr = LH_SOCKET_LOOPBACK_ADDRESS;
			if (address.sin_port != 0 &&
			    sendto(Socket, (char*)data, size, 0, (sockaddr*)&address, sizeof(address)) != SOCKET_ERROR)
				return LH_OK;
		}
	}
	return LH_FAIL;
}

LH_RETURN LHSocketTCP::ListenForBroadcastRequests(LHTransportInfo* transport_info)
{
	sockaddr_in address;
	int         option;

	if (!InitFlag)
		return LH_ERROR;

	unsigned short port = 0;
	option = -1;
	if (transport_info != NULL)
	{
		LH_TRANSPORT_TYPE type = transport_info->type;
		if (type != LH_TRANSPORT_TYPE_UDP && type != LH_TRANSPORT_TYPE_TCP)
			return LH_ERROR;
		port = transport_info->GetPort();
	}

	Socket = socket(AF_INET, SOCK_DGRAM, 0);
	if (Socket == INVALID_SOCKET)
	{
		Socket = INVALID_SOCKET;
		return LH_ERROR;
	}

	address.sin_family = AF_INET;
	address.sin_port = htons(port);
	if (transport_info->type == LH_TRANSPORT_TYPE_TCP && Resolving(transport_info->GetIP()) == LH_OK)
		address.sin_addr.s_addr = Address.sin_addr.s_addr;
	else
		address.sin_addr.s_addr = INADDR_ANY;
	memset(address.sin_zero, 0, sizeof(address.sin_zero));

	u_long non_blocking;
	if (setsockopt(Socket, SOL_SOCKET, SO_REUSEADDR, (char*)&option, sizeof(option)) != 0)
		goto fail;
	if (bind(Socket, (sockaddr*)&address, sizeof(address)) == SOCKET_ERROR)
		goto fail;
	if (setsockopt(Socket, SOL_SOCKET, SO_BROADCAST, (char*)&option, sizeof(option)) != 0)
		goto fail;
	non_blocking = 1;
	if (ioctlsocket(Socket, FIONBIO, &non_blocking) == SOCKET_ERROR)
		goto fail;
	Signal = CreateEvent(NULL, FALSE, FALSE, NULL);
	if (Signal == NULL)
	{
		closesocket(Socket);
		Socket = INVALID_SOCKET;
		return LH_FAIL;
	}
	if (WSAEventSelect(Socket, Signal, FD_READ) == SOCKET_ERROR)
	{
		closesocket(Socket);
		Socket = INVALID_SOCKET;
		Signal = NULL;
		return LH_FAIL;
	}
	SignalCreated = true;
	return LH_OK;

fail:
	closesocket(Socket);
	Socket = INVALID_SOCKET;
	return LH_FAIL;
}

LH_RETURN LHSocketTCP::GetSocketInfo(LHTransportInfo* transport_info, bool32_t local)
{
	sockaddr_in address;
	int         address_length;

	if (!InitFlag)
		return LH_ERROR;

	address_length = sizeof(address);
	if (local)
	{
		if (getsockname(Socket, (sockaddr*)&address, &address_length) == SOCKET_ERROR)
			return LH_FAIL;
	}
	else
	{
		if (getpeername(Socket, (sockaddr*)&address, &address_length) == SOCKET_ERROR)
			return LH_FAIL;
	}
	if (LHTransportInfoFromsockaddr_in(transport_info, &address) != LH_OK)
		return LH_FAIL;
	if (address.sin_addr.s_addr == INADDR_ANY)
		strcpy(transport_info->GetIP(), GetIPAddress());

	int broadcast = 0;
	int option_length = sizeof(broadcast);
	if (getsockopt(Socket, SOL_SOCKET, SO_BROADCAST, (char*)&broadcast, &option_length) == SOCKET_ERROR)
		WSAGetLastError();
	if (broadcast)
		transport_info->type = LH_TRANSPORT_TYPE_UDP;
	transport_info->UpdateLength();
	return LH_OK;
}

char* LHSocketTCP::GetIPAddress()
{
	char host_name[100];

	if (!InitFlag)
		return "";

	Startup();
	if (gethostname(host_name, sizeof(host_name)) == SOCKET_ERROR)
		return NULL;
	hostent* host = gethostbyname(host_name);
	if (host == NULL)
		return NULL;
	return inet_ntoa(*(in_addr*)host->h_addr_list[0]);
}

char* GetIPAddress()
{
	return LHSocketTCP::GetIPAddress();
}

bool LHSocketTCP::CheckActivity(LH_ACTIVITY_TYPE type)
{
	fd_set  set;
	timeval timeout;
	int     result;

	if (!InitFlag)
		return false;

	timeout.tv_sec = 0;
	timeout.tv_usec = 1;
	FD_ZERO(&set);
	FD_SET(Socket, &set);
	if (type == LH_ACTIVITY_TYPE_READ)
		result = select(0, &set, NULL, NULL, &timeout);
	else
		result = select(0, NULL, &set, NULL, &timeout);
	if (result == SOCKET_ERROR)
		return false;
	return FD_ISSET(Socket, &set) ? true : false;
}

LH_RETURN LHSocketTCP::SetBlockingMode(bool blocking)
{
	if (!InitFlag)
		return LH_ERROR;

	u_long non_blocking = !blocking;
	if (blocking == true)
		WSAEventSelect(Socket, Signal, 0);
	if (ioctlsocket(Socket, FIONBIO, &non_blocking) == SOCKET_ERROR)
		return LH_ERROR;
	return LH_OK;
}

bool LHSocketTCP::HasTimedOut()
{
	if (Timer.MSeconds() < LastReceiveTime)
		return false;
	GetTickCount();
	return Timer.MSeconds() - LastReceiveTime > LH_SOCKET_TIMEOUT;
}
