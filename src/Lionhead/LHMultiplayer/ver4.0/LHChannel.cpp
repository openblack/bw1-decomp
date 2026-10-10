#define LH_MULTIPLAYER_EXPORTS

#include <stdlib.h>
#include <string.h>

#include "LHPacketisableObject.h"
#include "LHNetUser.h"
#include "LHTransportInfo.h"
#include "LHPlayer.h"
#include "LHNetEvent.h"
#include "LHConnection.h"
#include "LHChannel.h"
#include "LHMPPacketSave.h"
#include "LHNetTypes.h"
#include "LHLobby.h"
#include "LHSession.h"
#include "LHTransport.h"
#include "LHNetUtils.h"
#include "LHNetLog.h"

typedef LHLinkedList<LHPacketisableObject*> LHPacketisableObjectList;
typedef LHPacketisableObject* (*LHPacketisableObjectFactory)();

inline unsigned char* LHNetDecodeStringToArray(unsigned char* buffer, char* string, unsigned long max_length)
{
	if (*buffer == 0)
	{
		buffer++;
		*string = '\0';
	}
	else if (*buffer != 1)
	{
		buffer = NULL;
	}
	else
	{
		buffer++;
		strncpy(string, (char*)buffer, max_length);
		string[max_length] = '\0';
		buffer += strlen((char*)buffer) + 1;
	}
	return buffer;
}

inline unsigned char* LHNetEncodeString(unsigned char* buffer, char* string)
{
	if (string != NULL)
	{
		*buffer++ = 1;
		strcpy((char*)buffer, string);
		buffer += strlen(string) + 1;
	}
	else
	{
		*buffer++ = 0;
	}
	return buffer;
}

const char* LH_CHANNEL_DEFAULT_NAME = "Default";

LHChannel* LHChannel::FindChannel(char* name, LHLinkedList<LHChannel*>* list)
{
	if (name == NULL)
		return NULL;
	for (LHLinkedNode<LHChannel*>* node = list->GetStart(); node != NULL; node = node->next.Get())
	{
		LHChannel* channel = node->payload;
		if (strcmp(channel->Name, name) == 0)
			return channel;
	}
	return NULL;
}

void LHChannel::ClearAllData()
{
	Players.DeleteAll();
	memset(Name, 0, sizeof(Name));
	memset(Password, 0, sizeof(Password));
	GameData = NULL;
	GameDataLength = 0;
}

LHPlayer* LHChannel::GetPlayer(LH_USER_ID user_id)
{
	for (LHLinkedNode<LHPlayer*>* node = Players.GetStart(); node != NULL; node = node->next.Get())
	{
		LHPlayer* player = node->payload;
		if (player->GetUserID().Number == user_id.Number)
			return player;
	}
	return NULL;
}

LH_RETURN LHChannel::AddPlayer(LHPlayer* player, char* password)
{
	if (strlen(Password) != 0 && (password == NULL || strlen(password) == 0 || strcmp(Password, password) != 0))
		return LH_FAIL;
	if (GetPlayer(player->GetUserID()) != NULL)
		return LH_FAIL;
	Players.Add(player);
	return LH_OK;
}

LH_RETURN LHChannel::RemovePlayer(LHPlayer* player)
{
	if (GetPlayer(player->GetUserID()) == NULL)
		return LH_FAIL;
	Players.Remove(player);
	return LH_OK;
}

LHChannel::~LHChannel()
{
	Players.DeleteAll();
	ClearAllData();
}

LH_RETURN LHChannel::SetGameData(unsigned long length, void* data)
{
	if (GameData != NULL)
	{
		free(GameData);
		GameDataLength = 0;
	}
	if (length != 0)
	{
		GameData = malloc(length);
		memcpy(GameData, data, length);
	}
	GameDataLength = length;
	return LH_OK;
}

LH_USER_ID LHChannel::GetFirstUserID()
{
	LHLinkedNode<LHPlayer*>* last = Players.GetLastNode();
	LHPlayer*                first = last != NULL ? last->payload : NULL;
	return first->GetUserID();
}

unsigned long LHChannel::GetEncodedLength(unsigned long options, void* context)
{
	if (LHNetStringMatch((char*)context, Name))
		return 0;
	unsigned long length = Name != NULL ? strlen(Name) + 1 + 1 : 1;
	return LHPacketisableObject::GetEncodedListLength((LHPacketisableObjectList*)&Players, 0, NULL) + length;
}

unsigned char* LHChannel::EncodeToBuffer(unsigned char* buffer, unsigned long options, void* context)
{
	if (LHNetStringMatch((char*)context, Name))
		return buffer;
	buffer = LHNetEncodeString(buffer, Name);
	return LHPacketisableObject::EncodeListToBuffer(buffer, (LHPacketisableObjectList*)&Players, options, context);
}

unsigned char* LHChannel::DecodeFromBuffer(unsigned char* buffer)
{
	buffer = LHNetDecodeStringToArray(buffer, Name, LH_MAX_NAME_LENGTH);
	return LHPacketisableObject::DecodeListFromBuffer((LHPacketisableObjectFactory)LHPlayer::Create, buffer,
	                                                  (LHPacketisableObjectList*)&Players);
}

void LHChannel::ClearObject()
{
	ClearAllData();
}
