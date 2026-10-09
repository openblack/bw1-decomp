#define LH_MULTIPLAYER_EXPORTS
#include "LHMPPacketSave.h"

#include <io.h>
#include <stdlib.h>
#include <wchar.h>
#include <windows.h>

#include "LHNetEvent.h"
#include "LHNetUtils.h"
#include "LHPlayer.h"
#include "LHSession.h"

static char*       PacketSaveFileName = "C:\\lhmp.pac";
static LHNetEvent* ReadEvent;

void LHMPPacketSave::Open(LH_PACKET_SOURCE source, LHSession* session)
{
	Source = source;
	if (Source == LH_PACKET_SOURCE_NETWORK)
		return;

	memset(&Info, 0, sizeof(Info));
	Info.NumberOfPlayers = session->Players.count;
	switch (Source)
	{
	case LH_PACKET_SOURCE_RECORD:
		if (GetFileAttributes(PacketSaveFileName) != (DWORD)-1)
			_unlink(PacketSaveFileName);
		File = CreateFile(PacketSaveFileName, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL,
		                  CREATE_ALWAYS, 0, NULL);
		if (File == INVALID_HANDLE_VALUE)
			return;
		break;
	case LH_PACKET_SOURCE_PLAYBACK:
		File = CreateFile(PacketSaveFileName, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_ALWAYS, 0, NULL);
		if (File == INVALID_HANDLE_VALUE)
			return;
		break;
	}
	UpdateInfoBlock();
	ProcessHeader(session);
	Opened = true;
}

void LHMPPacketSave::ProcessHeader(LHSession* session)
{
	unsigned long bytes;
	unsigned long length;
	LH_USER_ID    userId;
	long          playerId;
	char          name[LH_MAX_NAME_LENGTH + 1];

	if (SetFilePointer(File, sizeof(LHReplayPacketInfo), NULL, FILE_BEGIN) == (DWORD)-1)
		return;

	switch (Source)
	{
	case LH_PACKET_SOURCE_RECORD: {
		for (LHLinkedNode<LHPlayer*>* node = session->Players.GetStart(); node != NULL; node = node->next.Get())
		{
			LHPlayer* player = node->payload;
			length = wcslen(player->GetName()) + 1;
			if (!WriteFile(File, &length, sizeof(length), &bytes, NULL))
				break;
			if (!WriteFile(File, LIBWCHAR2CHAR(player->GetName()), length, &bytes, NULL))
				break;
			playerId = player->GetPlayerID();
			if (!WriteFile(File, &playerId, sizeof(playerId), &bytes, NULL))
				break;
			userId = player->GetUserID();
			if (!WriteFile(File, &userId, sizeof(userId), &bytes, NULL))
				break;
		}
		break;
	}
	case LH_PACKET_SOURCE_PLAYBACK: {
		OriginalPlayerList.DeleteAll();
		for (LHLinkedNode<LHPlayer*>* node = session->Players.GetStart(); node != NULL; node = node->next.Get())
			OriginalPlayerList.Add(node->payload);
		session->Players.RemoveAll();

		for (unsigned long i = 0; i < Info.NumberOfPlayers; i++)
		{
			if (!ReadFile(File, &length, sizeof(length), &bytes, NULL))
				break;
			if (!ReadFile(File, name, length, &bytes, NULL))
				break;
			if (!ReadFile(File, &playerId, sizeof(playerId), &bytes, NULL))
				break;
			if (!ReadFile(File, &userId, sizeof(userId), &bytes, NULL))
				break;
			LHPlayer* player = new LHPlayer();
			player->SetDetails(LIBCHAR2WCHAR(name), userId, playerId);
			session->Players.Add(player);
		}
		break;
	}
	}
}

void LHMPPacketSave::RestoreOriginalPlayerList(LHSession* session)
{
	session->Players.DeleteAll();
	for (LHLinkedNode<LHPlayer*>* node = OriginalPlayerList.GetStart(); node != NULL; node = node->next.Get())
		session->Players.Add(node->payload);
}

LH_RETURN LHMPPacketSave::CheckSavedPacketsAvail(LHReplayPacketInfo* info)
{
	unsigned long bytes;
	HANDLE        file = CreateFile(PacketSaveFileName, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
	if (GetFileAttributes(PacketSaveFileName) == (DWORD)-1)
		return LH_FAIL;
	if (file == INVALID_HANDLE_VALUE)
		return LH_ERROR;
	if (!ReadFile(file, info, sizeof(*info), &bytes, NULL) || bytes != sizeof(*info))
		return LH_ERROR;
	return CloseHandle(file) ? LH_OK : LH_FAIL;
}

LHNetEvent* LHMPPacketSave::ReadEventFromFile()
{
	unsigned short length;
	unsigned long  bytes;

	if (EventUnread)
	{
		EventUnread = false;
		return ReadEvent;
	}
	if (ReadEvent)
	{
		delete ReadEvent;
		ReadEvent = NULL;
	}
	if (!ReadFile(File, &length, sizeof(length), &bytes, NULL) || bytes != sizeof(length))
		return NULL;
	LHPacket* packet = (LHPacket*)calloc(length + LH_PACKET_ALLOCATION_PADDING, 1);
	packet->SetDataLen(length);
	if (!ReadFile(File, packet->GetDataPtr(), length, &bytes, NULL) || bytes != length)
		return NULL;
	packet->SetDataLen(length);
	ReadEvent = LHNetEvent::CreateFromPacket(packet);
	if (ReadEvent->GetType() == LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET)
		Info.NumberOfSuperPackets--;
	free(packet);
	return ReadEvent;
}

void LHMPPacketSave::WriteEventToFile(LHNetEvent* net_event)
{
	unsigned long bytes;
	if (net_event == NULL)
		return;
	if (!WriteFile(File, net_event->GetPacket(), net_event->GetPacket()->GetDataLen() + sizeof(unsigned short), &bytes,
	               NULL))
		return;
	if (net_event->GetType() == LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET)
		Info.NumberOfSuperPackets++;
	UpdateInfoBlock();
}

void LHMPPacketSave::UpdateInfoBlock()
{
	unsigned long bytes;
	DWORD         position = SetFilePointer(File, 0, NULL, FILE_CURRENT);
	if (position == (DWORD)-1)
		return;
	if (SetFilePointer(File, 0, NULL, FILE_BEGIN) == (DWORD)-1)
		return;
	switch (Source)
	{
	case LH_PACKET_SOURCE_RECORD:
		if (!WriteFile(File, &Info, sizeof(Info), &bytes, NULL))
			return;
		break;
	case LH_PACKET_SOURCE_PLAYBACK:
		if (!ReadFile(File, &Info, sizeof(Info), &bytes, NULL) || bytes != sizeof(Info))
			return;
		break;
	}
	SetFilePointer(File, position, NULL, FILE_BEGIN);
}

void LHMPPacketSave::Close()
{
	CloseHandle(File);
	Opened = false;
}
