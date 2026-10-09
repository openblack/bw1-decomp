#define LH_MULTIPLAYER_EXPORTS
#include "LHTransportInfo.h"

#include <string.h>

#include <Lionhead/LHLog/ver4.0/LHVersion.h>

#include "LHNetUser.h"

unsigned long LHTransportInfo::GetEncodedLength(unsigned long options, void* context)
{
	return sizeof(type) + sizeof(data_len) + data_len;
}

unsigned char* LHTransportInfo::EncodeToBuffer(unsigned char* buffer, unsigned long options, void* context)
{
	memcpy(buffer, &type, sizeof(type));
	buffer += sizeof(type);
	memcpy(buffer, &data_len, sizeof(data_len));
	buffer += sizeof(data_len);
	memcpy(buffer, data, data_len);
	buffer += data_len;
	return buffer;
}

unsigned char* LHTransportInfo::DecodeFromBuffer(unsigned char* buffer)
{
	memcpy(&type, buffer, sizeof(type));
	buffer += sizeof(type);
	memcpy(&data_len, buffer, sizeof(data_len));
	buffer += sizeof(data_len);
	memcpy(data, buffer, data_len);
	buffer += data_len;
	return buffer;
}

LHTransportInfo* LHTransportInfo::Create()
{
	return new LHTransportInfo;
}

void LHTransportInfo::ClearObject()
{
	ClearAllData();
}

LH_VERSION_INFO("LHMultiplayerLib", "3", "$Revision: 1 $", "$Author: Trance $", "$Date: 3/30/00 7:58p $",
                LH_VERSION_NONE, "Added Internal lobby support - No need to run a message server now");
