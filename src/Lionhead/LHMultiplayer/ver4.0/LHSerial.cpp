#define LH_MULTIPLAYER_EXPORTS
#include "LHSerial.h"

#include <stdlib.h>

#include "LHNetErrors.h"
#include "LHPacket.h"
#include "LHTransportInfo.h"

LHSerial::LHSerial()
{
	Handle = NULL;
	Connected = FALSE;
	Packet = NULL;
}

LHSerial::~LHSerial() {}

LH_RETURN LHSerial::Connect(LHTransportInfo* info)
{
	char                   name[16];
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
	SetupComm(Handle, 10000, 10000);
	PurgeComm(Handle, PURGE_TXABORT | PURGE_RXABORT | PURGE_TXCLEAR | PURGE_RXCLEAR);

	dcb.DCBlength = sizeof(DCB);
	GetCommState(Handle, &dcb);
	dcb.BaudRate = address->BaudRate;
	dcb.fParity = address->Parity > 0;
	dcb.ByteSize = 8;
	dcb.Parity = (BYTE)address->Parity;
	SetCommState(Handle, &dcb);

	timeouts.ReadIntervalTimeout = MAXDWORD;
	timeouts.ReadTotalTimeoutMultiplier = MAXDWORD;
	timeouts.ReadTotalTimeoutConstant = 1;
	timeouts.WriteTotalTimeoutMultiplier = 0;
	timeouts.WriteTotalTimeoutConstant = 5000;
	SetCommTimeouts(Handle, &timeouts);

	Connected = TRUE;
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
	Connected = FALSE;
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
