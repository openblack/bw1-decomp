#include "CellSize.h" /* For CellSize, ahead of PI in .rdata */
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "ColourConstants.h" /* For White */
#include "MPFEFileTransfer.h"

#include <stdio.h>  /* For swprintf, swscanf */
#include <string.h> /* For memcpy, memset, strcat, strlen, strncpy, wcslen */
#include <windows.h>
#include <mmsystem.h> /* For timeGetTime */

#include <Lionhead/LH3DLib/development/LH3DText.h> /* For CHAR2WCHAR */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>       /* For LHSPrintf, LHSPrintfW */
#include <zlib/zlib.h>

#include "FrontEnd.h"                /* For WCHAR2CHAR */
#include "GSFunctions.h"             /* For GSFunctions */
#include "MPFEConnectionStatus.h"    /* For MPFEConnectionStatus::Status */
#include "MPFEData.h"                /* For MPFEData::Data */
#include "MPFEFileTransferMessage.h" /* For MPFEFileTransferMessage */
#include "MPFEPlayerDetails.h"       /* For struct MPFEPlayerDetails */

static const wchar_t FileTransferHeader[] = L"LHfXSt";

MPFEFileTransfer::MPFEFileTransfer()
{
	SendText = NULL;
	Data = NULL;
}

MPFEFileTransfer::~MPFEFileTransfer()
{
	Reset();
	if (SendText != NULL)
	{
		delete SendText;
		SendText = NULL;
	}
	if (Data != NULL)
	{
		delete Data;
		Data = NULL;
	}
}

void MPFEFileTransfer::Reset()
{
	if (SendText != NULL)
	{
		delete SendText;
		SendText = NULL;
	}
	if (Data != NULL)
	{
		delete Data;
		Data = NULL;
	}
	CompressedLength = 0;
	EncodedLength = 0;
	DataSize = 0;
	ReceivedLength = 0;
	SentLength = 0;
	LastSendTime = 0;
	SendInterval = 0;
	Receiving = false;
	Sending = false;
	Received = false;
	Sender = NULL;
}

void MPFEFileTransfer::FreeBuffers()
{
	if (SendText != NULL)
	{
		delete SendText;
		SendText = NULL;
	}
	if (Data != NULL)
	{
		delete Data;
		Data = NULL;
	}
}

void MPFEFileTransfer::Process()
{
	if (!Sending)
	{
		return;
	}

	unsigned long now = timeGetTime();
	if (LastSendTime + SendInterval > now)
	{
		return;
	}

	char  chunk[MPFE_FILE_TRANSFER_CHUNK_SIZE + 1];
	char* text = SendText + SentLength;
	int   length = min(MPFE_FILE_TRANSFER_CHUNK_SIZE, strlen(text));
	strncpy(chunk, text, length);
	chunk[length] = '\0';
	SentLength += length;

	MPFEFileTransferMessage message(
		LHSPrintfW(L"%s", GSFunctions::IsEncodedString(chunk) ? GSFunctions::DecodeUnicode(chunk) : CHAR2WCHAR(chunk)));
	message.Send(NULL);
	if (SentLength == EncodedLength)
	{
		Sending = false;
		MPFEData::Data.PlayersTransferringFiles.Remove(MPFEData::Data.GetLocalPlayer());
	}
	LastSendTime = now;
}

void MPFEFileTransfer::ProcessIncomming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (from != NULL && from->IsTeamLeader)
	{
		MPFEData::Data.FileTransfers[from->Team].ProcessThisDataIncomming(message, from);
	}
}

void MPFEFileTransfer::ProcessThisDataIncomming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (!Receiving)
	{
		int i;
		for (i = 0; i < (int)wcslen(FileTransferHeader); i++)
		{
			if (message[i] = !FileTransferHeader[i])
			{
				return;
			}
		}
		if (swscanf(&message[i], L"%u:%u:%u", &DataSize, &EncodedLength, &CompressedLength) != 3)
		{
			return;
		}

		Receiving = true;
		Received = false;
		ReceivedLength = 0;
		if (SendText != NULL)
		{
			delete SendText;
		}
		SendText = new (__FILE__, 139) char[EncodedLength + 1];
		memset(SendText, 0, EncodedLength + 1);
		if (Data != NULL)
		{
			delete Data;
		}
		Data = new (__FILE__, 145) char[DataSize];
		memset(Data, 0, DataSize);
		Sender = from;
	}
	else if (Receiving != Sending)
	{
		char* text = LHSPrintf("%s", GSFunctions::NeedsEncoding(message) ? GSFunctions::EncodeUnicode(message)
		                                                                 : WCHAR2CHAR(message));
		int   length = strlen(text);
		strcat(SendText, text);
		ReceivedLength += length;
		if (ReceivedLength >= EncodedLength)
		{
			DecodeAndUncompress();
			Received = true;
			Receiving = false;
		}
	}
}

void MPFEFileTransfer::StartSending(char* data, unsigned long size, bool send_header)
{
	if (Receiving || Sending)
	{
		return;
	}

	Sending = true;
	SentLength = 0;
	if (Data != NULL)
	{
		delete Data;
	}
	if (SendText != NULL)
	{
		delete SendText;
	}
	Data = new (__FILE__, 180) char[size];
	DataSize = size;
	memset(Data, 0, size);
	memcpy(Data, data, size);
	CompressAndEncode();
	if (send_header)
	{
		MPFEFileTransferMessage message(
			LHSPrintfW(L"%s%u:%u:%u", FileTransferHeader, DataSize, EncodedLength, CompressedLength));
		message.Send(NULL);
		LastSendTime = timeGetTime();
		SendInterval = MPFEConnectionStatus::Status.IsLanLobby() ? MPFE_FILE_TRANSFER_LAN_SEND_INTERVAL
		                                                         : MPFE_FILE_TRANSFER_INTERNET_SEND_INTERVAL;
	}
}

void MPFEFileTransfer::CompressAndEncode()
{
	unsigned long compressedSize = DataSize + DataSize / 9 + 300;
	char*         compressed = new (__FILE__, 266) char[compressedSize];
	memset(compressed, 0, compressedSize);
	if (compress((Bytef*)compressed, &compressedSize, (Bytef*)Data, DataSize) != Z_OK)
	{
		CompressedLength = 10;
	}
	CompressedLength = compressedSize;
	if (compressedSize % 3 != 0)
	{
		CompressedLength = compressedSize - compressedSize % 3 + 3;
	}
	EncodedLength = CompressedLength + CompressedLength / 3;
	SendText = new (__FILE__, 281) char[EncodedLength + 1];
	memset(SendText, 0, EncodedLength + 1);
	Encode(SendText, compressed, CompressedLength);
	delete compressed;
}

void MPFEFileTransfer::Encode(char* text, const char* data, unsigned long length)
{
	for (int i = 0; i < (int)(length / 3); i++)
	{
		unsigned char a = data[i * 3];
		unsigned char b = data[i * 3 + 1];
		unsigned char c = data[i * 3 + 2];
		text[i * 4] = (a >> 2) + '!';
		text[i * 4 + 1] = (((b >> 2) & 0x3c) | (a & 3)) + '!';
		text[i * 4 + 2] = (((b & 0xf) << 2) | (c & 3)) + '!';
		text[i * 4 + 3] = (c >> 2) + '!';
	}
}

void MPFEFileTransfer::DecodeAndUncompress()
{
	unsigned long size = DataSize + DataSize % 3;
	char*         compressed = new (__FILE__, 302) char[CompressedLength];
	Decode(compressed, SendText, EncodedLength);
	char* data = new (__FILE__, 305) char[size];
	uncompress((Bytef*)data, &size, (Bytef*)compressed, CompressedLength);
	memcpy(Data, data, DataSize);
	delete data;
	delete compressed;
}

void MPFEFileTransfer::Decode(char* data, const char* text, unsigned long length)
{
	for (int i = 0; i < (int)(length / 4); i++)
	{
		unsigned char a = text[i * 4] - '!';
		unsigned char b = text[i * 4 + 1] - '!';
		unsigned char c = text[i * 4 + 2] - '!';
		unsigned char d = text[i * 4 + 3] - '!';
		unsigned char z = (d << 2) | (c & 3);
		data[i * 3] = (a << 2) | (b & 3);
		data[i * 3 + 1] = ((b & 0xfc) << 2) | (c >> 2);
		data[i * 3 + 2] = z;
	}
}

MPFEFileTransferMessage::MPFEFileTransferMessage(wchar_t* text)
{
	Message = new (__FILE__, 318) wchar_t[wcslen(text) + 10];
	swprintf(Message, L"%c%s", GetMessageCode(SPECIAL_MESSAGE_TYPE_FILE_TRANSFER), text);
}
