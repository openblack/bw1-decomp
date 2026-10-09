#define LH_MULTIPLAYER_EXPORTS
#include "LHPlayer.h"

#include <stdlib.h>
#include <string.h>
#include <wchar.h>

#include "LHNetErrors.h"

inline unsigned char* LHNetEncodeULONG(unsigned char* buffer, unsigned long value)
{
	memcpy(buffer, &value, sizeof(value));
	return buffer + sizeof(value);
}

inline unsigned char* LHNetDecodeULONG(unsigned char* buffer, unsigned long* value)
{
	memcpy(value, buffer, sizeof(*value));
	return buffer + sizeof(*value);
}

inline unsigned char* LHNetDecodeWideString(unsigned char* buffer, wchar_t** string)
{
	if (*buffer == 0)
	{
		buffer++;
		*string = NULL;
	}
	else if (*buffer != 1)
	{
		buffer = NULL;
	}
	else
	{
		buffer++;
		*string = (wchar_t*)buffer;
		buffer += (wcslen((wchar_t*)buffer) + 1) * sizeof(wchar_t);
	}
	return buffer;
}

inline unsigned char* LHNetDecodeString(unsigned char* buffer, char** string)
{
	if (*buffer == 0)
	{
		buffer++;
		*string = NULL;
	}
	else
	{
		buffer++;
		*string = (char*)buffer;
		buffer += strlen((char*)buffer) + 1;
	}
	return buffer;
}

inline unsigned char* LHNetEncodeWideString(unsigned char* buffer, wchar_t* string)
{
	if (string != NULL)
	{
		*buffer++ = 1;
		wcscpy((wchar_t*)buffer, string);
		buffer += (wcslen(string) + 1) * sizeof(wchar_t);
	}
	else
	{
		*buffer++ = 0;
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

LH_RETURN LHPlayer::SetDetails(wchar_t* name, LH_USER_ID user_id, long player_id)
{
	ClearAllData();
	wcsncpy(Name, name, LH_MAX_NAME_LENGTH);
	UserId = user_id;
	PlayerId = player_id;
	return LH_OK;
}

LH_RETURN LHPlayer::SetDetails(LHPlayer* player)
{
	ClearAllData();
	wcscpy(Name, player->Name);
	UserId = player->UserId;
	PlayerId = player->PlayerId;
	strcpy(UserFilename, player->UserFilename);
	SetTransportInfo(&player->TransportInfo);
	return LH_OK;
}

LH_RETURN LHPlayer::SetDetails(LHNetUser* user)
{
	if (!user->IsValid())
		return LH_ERROR;
	return SetDetails(user->GetName(), user->GetID(), -1);
}

void LHPlayer::ClearAllData()
{
	PlayerId = -1;
	UserId = 0;
	SystemData = NULL;
	memset(Name, 0, sizeof(Name));
	memset(UserFilename, 0, sizeof(UserFilename));
	UserData = NULL;
	UserDataLen = 0;
	TeamMemberNumber = 1;
	TeamNumber = 0;
	ClanID = 0;
}

void LHPlayer::SetUserFile(const char* file_name)
{
	strncpy(UserFilename, file_name, sizeof(UserFilename));
}

LHPlayer::LHPlayer(LHPlayer* player)
{
	ClearAllData();
	*this = *player;
	SystemData = NULL;
}

LHPlayer::LHPlayer(LHNetUser* user)
{
	ClearAllData();
	wcscpy(Name, user->GetName());
	PlayerId = -1;
	UserId = user->GetID();
}

LHPlayer::~LHPlayer()
{
	FreeSystemData();
	FreeUserData();
}

void LHPlayer::SetUserData(void* data, unsigned long length)
{
	if (length >= LH_PLAYER_MAX_USER_DATA_LENGTH)
		return;
	FreeUserData();
	if (length == 0)
		return;
	UserData = malloc(length);
	if (UserData == NULL)
		return;
	memcpy(UserData, data, length);
	UserDataLen = length;
}

LHPlayer* LHPlayer::GetPlayer(LH_USER_ID user_id, LHLinkedList<LHPlayer*>* list)
{
	for (LHLinkedNode<LHPlayer*>* node = list->GetStart(); node != NULL; node = node->next.Get())
	{
		LHPlayer* player = node->payload;
		if (player->UserId.id == user_id.id)
			return player;
	}
	return NULL;
}

LHPlayer* LHPlayer::GetPlayerFromPlayerNumber(unsigned long number, LHLinkedList<LHPlayer*>* list)
{
	for (LHLinkedNode<LHPlayer*>* node = list->GetStart(); node != NULL; node = node->next.Get())
	{
		LHPlayer* player = node->payload;
		if (player->PlayerId == number)
			return player;
	}
	return NULL;
}

LH_RETURN LHPlayer::CopyPlayerList(LHLinkedList<LHPlayer*>* destination, LHLinkedList<LHPlayer*>* source)
{
	destination->DeleteAll();
	if (source != NULL)
	{
		for (LHLinkedNode<LHPlayer*>* node = source->GetStart(); node != NULL; node = node->next.Get())
			destination->Add(new LHPlayer(node->payload));
	}
	return LH_OK;
}

unsigned long LHPlayer::Compare(LHPlayer* player)
{
	if (player->PlayerId == PlayerId && player->UserId.id == UserId.id && wcscmp(player->Name, Name) == 0)
		return 0;
	return 1;
}

void* LHPlayer::AllocSystemData(unsigned long size)
{
	FreeSystemData();
	SystemData = malloc(size);
	return SystemData;
}

void LHPlayer::FreeSystemData()
{
	if (SystemData != NULL)
		free(SystemData);
	SystemData = NULL;
}

void LHPlayer::FreeUserData()
{
	if (UserData != NULL)
		free(SystemData);
	UserData = NULL;
	UserDataLen = 0;
}

unsigned long LHPlayer::GetEncodedLength(unsigned long options, void* context)
{
	unsigned long nameLength = Name != NULL ? (wcslen(Name) + 1) * sizeof(wchar_t) + 1 : 1;
	unsigned long fileLength = UserFilename != NULL ? strlen(UserFilename) + 1 + 1 : 1;
	return sizeof(UserId) + sizeof(PlayerId) + nameLength + fileLength +
	       TransportInfo.GetEncodedLength(options, context);
}

unsigned char* LHPlayer::EncodeToBuffer(unsigned char* buffer, unsigned long options, void* context)
{
	buffer = LHNetEncodeULONG(buffer, GetUserID());
	memcpy(buffer, &PlayerId, sizeof(PlayerId));
	buffer += sizeof(PlayerId);
	buffer = LHNetEncodeWideString(buffer, Name);
	buffer = LHNetEncodeString(buffer, UserFilename);
	return TransportInfo.EncodeToBuffer(buffer, options, context);
}

unsigned char* LHPlayer::DecodeFromBuffer(unsigned char* buffer)
{
	wchar_t* name;
	char*    fileName;

	buffer = LHNetDecodeULONG(buffer, (unsigned long*)&UserId);
	memcpy(&PlayerId, buffer, sizeof(PlayerId));
	buffer += sizeof(PlayerId);
	buffer = LHNetDecodeWideString(buffer, &name);
	wcscpy(Name, name);
	buffer = LHNetDecodeString(buffer, &fileName);
	strcpy(UserFilename, fileName);
	return TransportInfo.DecodeFromBuffer(buffer);
}

LHPlayer* LHPlayer::Create()
{
	return new LHPlayer;
}

void LHPlayer::ClearObject()
{
	ClearAllData();
}
