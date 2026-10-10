#define LH_MULTIPLAYER_EXPORTS
#include "LHSerial.h"

#include <stdlib.h>

#include "LHNetLog.h"
#include "LHPacket.h"
#include "LHTransportInfo.h"

enum
{
	LH_SERIAL_PORT_NAME_LENGTH = 16,
	LH_SERIAL_QUEUE_SIZE = 10000,
	LH_SERIAL_BYTE_SIZE = 8,
	LH_SERIAL_READ_TIMEOUT = 1,
	LH_SERIAL_WRITE_TIMEOUT = 5000,
};

LHSerial::LHSerial()
{
	Handle = NULL;
	Connected = false;
	Packet = NULL;
}

LHSerial::~LHSerial() {}

LH_RETURN LHSerial::Connect(LHTransportInfo* info)
{
	char                   name[LH_SERIAL_PORT_NAME_LENGTH];
	COMMTIMEOUTS           timeouts;
	DCB                    dcb;
	const LHSerialAddress* address;

	if (Connected)
		return LH_ERROR;

	address = (const LHSerialAddress*)info->data;
	wsprintfA(name, "COM%i", address->Port);
	Handle = CreateFileA(name, GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING,
	                     FILE_ATTRIBUTE_NORMAL | FILE_FLAG_OVERLAPPED, NULL);
	if (Handle == NULL)
		return LH_ERROR;

	SetCommMask(Handle, 0);
	SetupComm(Handle, LH_SERIAL_QUEUE_SIZE, LH_SERIAL_QUEUE_SIZE);
	PurgeComm(Handle, PURGE_TXABORT | PURGE_RXABORT | PURGE_TXCLEAR | PURGE_RXCLEAR);

	dcb.DCBlength = sizeof(DCB);
	GetCommState(Handle, &dcb);
	dcb.BaudRate = address->BaudRate;
	dcb.fParity = address->Parity > 0;
	dcb.ByteSize = LH_SERIAL_BYTE_SIZE;
	dcb.Parity = (BYTE)address->Parity;
	SetCommState(Handle, &dcb);

	timeouts.ReadIntervalTimeout = MAXDWORD;
	timeouts.ReadTotalTimeoutMultiplier = MAXDWORD;
	timeouts.ReadTotalTimeoutConstant = LH_SERIAL_READ_TIMEOUT;
	timeouts.WriteTotalTimeoutMultiplier = 0;
	timeouts.WriteTotalTimeoutConstant = LH_SERIAL_WRITE_TIMEOUT;
	SetCommTimeouts(Handle, &timeouts);

	Connected = true;
	return LH_OK;
}

LH_RETURN LHSerial::Disconnect()
{
	if (!Connected)
		return LH_ERROR;

	SetCommMask(Handle, 0);
	EscapeCommFunction(Handle, CLRDTR);
	PurgeComm(Handle, PURGE_TXABORT | PURGE_RXABORT | PURGE_TXCLEAR | PURGE_RXCLEAR);
	CloseHandle(Handle);
	Connected = false;
	Handle = NULL;
	return LH_OK;
}

LH_RETURN LHSerial::Send(void* data, unsigned long size)
{
	WriteFile(Handle, data, size, &size, NULL);
	return LH_OK;
}

LH_RETURN LHSerial::Receive(void* data, unsigned long size)
{
	DWORD         read;
	unsigned long waiting = GetWaitingSize();

	if (waiting == 0)
		return LH_FAIL;
	if (waiting >= size)
		waiting = size;
	ReadFile(Handle, data, waiting, &read, NULL);
	return LH_OK;
}

LH_RETURN LHSerial::SendPacket(LHPacket* packet)
{
	unsigned short length = packet->header.length;
	return Send(packet, length + sizeof(packet->header.length));
}

LH_RETURN LHSerial::RecievePacket(LHPacket** packet)
{
	unsigned long size;
	unsigned long length;
	LHPacket*     received;

	if (Receive(&size, sizeof(size)) != LH_OK)
		return LH_FAIL;

	if (Packet)
		free(Packet);

	length = size;
	received = (LHPacket*)calloc(length + 10, 1);
	received->header.length = (unsigned short)length;
	Packet = received;
	if (Receive((char*)received + sizeof(received->header.length), size) != LH_OK)
		return LH_FAIL;

	*packet = Packet;
	return LH_OK;
}

unsigned long LHSerial::GetWaitingSize()
{
	DWORD   errors;
	COMSTAT status;

	ClearCommError(Handle, &errors, &status);
	return status.cbInQue;
}
