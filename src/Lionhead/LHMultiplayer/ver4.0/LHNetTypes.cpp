#define LH_MULTIPLAYER_EXPORTS
#include "LHNetTypes.h"

#include <string.h>

#include <Lionhead/LHLib/ver5.0/LHLinkedListIterator.h>
#include <Lionhead/LHLib/ver5.0/LHTimer.inl>
#include "LHNetLog.h"
#include "LHPlayer.h"

typedef LHLinkedList<LHPacketisableObject*> LHPacketisableObjectList;
typedef LHPacketisableObject* (*LHPacketisableObjectFactory)();

LHTimer LHLocalLobbyInfo::Timer;

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

void LHLocalLobbyInfo::ClearAllData()
{
	if (!Timer.Running())
		Timer.Restart(0);
	memset(Name, 0, sizeof(Name));
	Category = LH_USER_ID::CATEGORY_NONE;
	ConnectionAcceptor.ClearAllData();
	BroadcastListener.ClearAllData();
	GameStarted = false;
	Players.DeleteAll();
}

LHLocalLobbyInfo::LHLocalLobbyInfo(LHLocalLobbyInfo* other)
{
	Initialise(other->Name, &other->ConnectionAcceptor, &other->BroadcastListener, &other->Players, other->Category,
	           other->GameStarted);
}

void LHLocalLobbyInfo::Initialise(char* name, LHTransportInfo* connection_acceptor, LHTransportInfo* broadcast_listener,
                                  LHLinkedList<LHPlayer*>* players, LH_USER_ID::CATEGORY category,
                                  bool32_t game_started)
{
	ClearAllData();
	strncpy(Name, name, LH_MAX_LOBBY_NAME_LENGTH);
	memcpy(&ConnectionAcceptor, connection_acceptor, sizeof(ConnectionAcceptor));
	memcpy(&BroadcastListener, broadcast_listener, sizeof(BroadcastListener));
	LastHeardTime = Timer.MSeconds();
	Category = category;
	GameStarted = game_started;
	LHPlayer::CopyPlayerList(&Players, players);
}

bool32_t LHLocalLobbyInfo::UpdateLocalLobbyInfoDetails(LHLocalLobbyInfo* other)
{
	bool32_t changed = false;

	LastHeardTime = Timer.MSeconds();
	if (GameStarted != other->GameStarted)
	{
		GameStarted = other->GameStarted;
		changed = true;
	}
	if (Category != other->Category)
	{
		Category = other->Category;
		changed = true;
	}
	if (strcmp(other->Name, Name) != 0)
	{
		strncpy(Name, other->Name, LH_MAX_LOBBY_NAME_LENGTH);
		changed = true;
	}

	bool32_t playersChanged = false;
	if (other->Players.count == Players.count)
	{
		for (LHLinkedListIterator<LHPlayer*> it = Players.GetStart(); it; it++)
		{
			LHPlayer* player = it.Get();
			for (LHLinkedListIterator<LHPlayer*> otherIt = other->Players.GetStart(); otherIt; otherIt++)
			{
				if (player->Compare(otherIt.Get()) != 0)
				{
					playersChanged = true;
					break;
				}
			}
			if (playersChanged)
				break;
		}
	}
	else
	{
		playersChanged = true;
	}
	if (playersChanged)
	{
		LHPlayer::CopyPlayerList(&Players, &other->Players);
		return true;
	}
	return changed;
}

LHLocalLobbyInfo::~LHLocalLobbyInfo()
{
	Players.DeleteAll();
}

unsigned long LHLocalLobbyInfo::GetEncodedLength(unsigned long options, void* context)
{
	unsigned long length = Name != NULL ? strlen(Name) + 1 + 1 : 1;
	length += ConnectionAcceptor.GetEncodedLength(0, NULL);
	length += BroadcastListener.GetEncodedLength(0, NULL) + sizeof(unsigned char) + sizeof(unsigned char);
	return LHPacketisableObject::GetEncodedListLength((LHPacketisableObjectList*)&Players, 0, NULL) + length;
}

unsigned char* LHLocalLobbyInfo::EncodeToBuffer(unsigned char* buffer, unsigned long options, void* context)
{
	buffer = LHNetEncodeString(buffer, Name);
	buffer = ConnectionAcceptor.EncodeToBuffer(buffer, 0, NULL);
	buffer = BroadcastListener.EncodeToBuffer(buffer, 0, NULL);
	*buffer++ = (unsigned char)Category;
	*buffer++ = (unsigned char)GameStarted;
	return LHPacketisableObject::EncodeListToBuffer(buffer, (LHPacketisableObjectList*)&Players, 0, NULL);
}

unsigned char* LHLocalLobbyInfo::DecodeFromBuffer(unsigned char* buffer)
{
	buffer = LHNetDecodeStringToArray(buffer, Name, LH_MAX_LOBBY_NAME_LENGTH);
	buffer = ConnectionAcceptor.DecodeFromBuffer(buffer);
	buffer = BroadcastListener.DecodeFromBuffer(buffer);
	unsigned char category = *buffer++;
	Category = (LH_USER_ID::CATEGORY)category;
	GameStarted = *buffer++;
	return LHPacketisableObject::DecodeListFromBuffer((LHPacketisableObjectFactory)LHPlayer::Create, buffer,
	                                                  (LHPacketisableObjectList*)&Players);
}

void LHLocalLobbyInfo::ClearObject()
{
	ClearAllData();
}

LHChannelPlayerSystemInfo::~LHChannelPlayerSystemInfo() {}
