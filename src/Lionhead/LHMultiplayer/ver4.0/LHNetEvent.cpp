#define LH_MULTIPLAYER_EXPORTS
#include "LHNetEvent.h"

#include <stdarg.h>
#include <stdlib.h>
#include <string.h>

#include "LHDynamicQueue.h"
#include "LHNetErrors.h"
#include "LHNetUtils.h"
#include "LHPacketisableObject.h"

enum
{
	LH_SUPER_PACKET_HEADER_SIZE = 2 * sizeof(unsigned char),
	LH_SUPER_PACKET_EVENT_HEADER_SIZE = sizeof(unsigned char) + sizeof(unsigned short),
	LH_EMPTY_SUPER_PACKET_LENGTH = 0xe,
};

LHNetMessageFormatDescriptor LHNetEvent::MessageDescriptors[] = {
	{LH_NETEVENT_TYPE_LOBBY_SESSION_READY, "S"},
	{LH_NETEVENT_TYPE_INTERNAL_LOBBY_NEW_LOCAL_LOBBY_LIST, "BP"},
	{LH_NETEVENT_TYPE_SERVER_REQUEST_CHALLENGE, "US"},
	{LH_NETEVENT_TYPE_SERVER_CONNECTION_VALIDATED, "UU"},
	{LH_NETEVENT_TYPE_SERVER_CONNECTION_REFUSED, "US"},
	{LH_NETEVENT_TYPE_SERVER_GREETING, "SSSUSU"},
	{LH_NETEVENT_TYPE_SERVER_ERROR, "US"},
	{LH_NETEVENT_TYPE_SERVER_NEW_IDLE_TIME, "US"},
	{LH_NETEVENT_TYPE_CLIENT_JOIN, "WU"},
	{LH_NETEVENT_TYPE_CLIENT_CHALLENGE_RESPONSE, "U"},
	{LH_NETEVENT_TYPE_CLIENT_REQUEST_PROTOCOL, "U"},
	{LH_NETEVENT_TYPE_CLIENT_NEW_IDLE_TIME, "U"},
	{LH_NETEVENT_TYPE_CLIENT_BROADCAST_MESSAGE, "W"},
	{LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS_REQUEST, "P"},
	{LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS, "P"},
	{LH_NETEVENT_TYPE_BROADCAST_LOBBY_SHUTDOWN, "P"},
	{LH_NETEVENT_TYPE_LOBBY_CHANNEL_LIST_INFO, "L*"},
	{LH_NETEVENT_TYPE_LOBBY_PLAYER_LIST, "SIULB"},
	{LH_NETEVENT_TYPE_LOBBY_CHANNEL_USERS, "SL"},
	{LH_NETEVENT_TYPE_LOBBY_CHAT_ON_CHANNEL, "SIDBB"},
	{LH_NETEVENT_TYPE_LOBBY_MGJ_REQUEST, "SIS"},
	{LH_NETEVENT_TYPE_LOBBY_MGJ_REQUEST_REFUSED, "S"},
	{LH_NETEVENT_TYPE_LOBBY_MGJ_STATUS, "SIUS"},
	{LH_NETEVENT_TYPE_LOBBY_USER_FILE, "SXD"},
	{LH_NETEVENT_TYPE_LOBBY_EJECTED_FROM_CHANNEL, "S"},
	{LH_NETEVENT_TYPE_LOBBY_START_MSERVE, "SUU"},
	{LH_NETEVENT_TYPE_LOBBY_VERIFY_CODE_CHECKSUMS, "SS"},
	{LH_NETEVENT_TYPE_LOBBY_CONNECT_TO_MSERVE, "SUPSUD"},
	{LH_NETEVENT_TYPE_LOBBY_USER_FILES_TRANSFER_COMPLETE, "S"},
	{LH_NETEVENT_TYPE_LOBBY_GREETING, "SUUU"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_SEND_CODE_CHECKSUM, "US"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_REQUEST_CHANNEL_LIST, "S"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_JOIN_CHANNEL, "SBWSUS"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_LEAVE_CHANNEL, "S"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_CHAT_ON_CHANNEL, "SIDIB"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_START_GAME, "SIUD"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_REQUEST, "SU"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_RESPONSE, "SIBS"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_USER_FILE, "SXD"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_START_MSERVE_RESULT, "SUPSU"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_REQUEST_CHANNEL_USERS, "S"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_COMPLETE, "S"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_ERROR, "SUS"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_BOOT_OTHER_USERS, "S"},
	{LH_NETEVENT_TYPE_LOBBY_BROADCAST_CHAT, "IWD"},
	{LH_NETEVENT_TYPE_LOBBY_CLIENT_EVENT_BROADCAST, "EP"},
	{LH_NETEVENT_TYPE_MSERVE_CHECKSUM_FAILURE, "UUUID"},
	{LH_NETEVENT_TYPE_MSERVE_CHECKSUM_SYNC, "UUI"},
	{LH_NETEVENT_TYPE_MSERVE_CHECKSUM_DATA, "ID"},
	{LH_NETEVENT_TYPE_MSERVE_GREETING, "SUUU"},
	{LH_NETEVENT_TYPE_MSERVE_PLAYER_LIST, "SWIUL"},
	{LH_NETEVENT_TYPE_MSERVE_MGJ, "I"},
	{LH_NETEVENT_TYPE_MSERVE_GAME_LOOP_STARTED, "U"},
	{LH_NETEVENT_TYPE_MSERVE_GAME_FILE, "XU"},
	{LH_NETEVENT_TYPE_MSERVE_REQUEST_LAST_SUPERPACKET_DATA, "U"},
	{LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM, "UUID"},
	{LH_NETEVENT_TYPE_MSERVE_CLIENT_FULL_CHECKSUM, "UUI"},
	{LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM_DATA, "D"},
	{LH_NETEVENT_TYPE_MSERVE_CLIENT_LAST_SUPER_PACKET, "U"},
	{LH_NETEVENT_TYPE_MSERVE_CLIENT_LOCAL_ADDRESS, "S"},
	{LH_NETEVENT_TYPE_MSERVE_CLIENT_DATA_PACKET, "UD"},
	{0, NULL},
};

char* LHNetEvent::UserFileDirectory;

typedef LHLinkedList<LHPacketisableObject*> LHPacketisableObjectList;
typedef LHPacketisableObject* (*LHPacketisableObjectFactory)();

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

LH_RETURN LHNetEvent::SetPacketHeader(LH_NETEVENT_TYPE type, LH_USER_ID user_id)
{
	unsigned short netEventType = type;
	unsigned char* data = Packet->GetDataPtr();
	memcpy(data, &netEventType, sizeof(netEventType));
	memcpy(data + sizeof(netEventType), &user_id, sizeof(user_id));
	return LH_OK;
}

LHNetEvent::~LHNetEvent()
{
	if (Packet != NULL)
		free(Packet);
}

LHNetEvent* LHNetEvent::CreateFromPacket(LHPacket* packet)
{
	if (packet == NULL)
		return NULL;

	LHNetEvent*   event = new LHNetEvent;
	unsigned long length = packet->GetDataLen();
	LHPacket*     copy = (LHPacket*)calloc(length + LH_PACKET_ALLOCATION_PADDING, 1);
	copy->SetDataLen(length);
	event->Packet = copy;
	if (event->Packet == NULL)
		return NULL;

	memcpy(event->Packet->GetDataPtr(), packet->GetDataPtr(), packet->GetDataLen());
	return event;
}

LHNetEvent* LHNetEvent::CreateFromEvent(LHNetEvent* net_event)
{
	if (net_event == NULL)
		return NULL;

	LHNetEvent*   event = new LHNetEvent;
	unsigned long length = net_event->Packet->GetDataLen();
	LHPacket*     copy = (LHPacket*)calloc(length + LH_PACKET_ALLOCATION_PADDING, 1);
	copy->SetDataLen(length);
	event->Packet = copy;
	if (event->Packet == NULL)
		return NULL;

	memcpy(event->Packet->GetDataPtr(), net_event->Packet->GetDataPtr(), net_event->Packet->GetDataLen());
	event->SetTickCount(net_event->GetTickCount());
	return event;
}

LHNetEvent* LHNetEvent::CreateSimple(LH_NETEVENT_TYPE type, LH_USER_ID user_id, unsigned long length, void* data)
{
	LHNetEvent*   event = new LHNetEvent;
	unsigned long packetLength = length + LH_NETEVENT_HEADER_SIZE;
	LHPacket*     packet = (LHPacket*)calloc(packetLength + LH_PACKET_ALLOCATION_PADDING, 1);
	packet->SetDataLen(packetLength);
	event->Packet = packet;
	if (event->Packet == NULL)
	{
		delete event;
		return NULL;
	}

	if (length != 0 && data != NULL)
		memcpy(event->Packet->GetDataPtr() + LH_NETEVENT_HEADER_SIZE, data, length);
	event->SetPacketHeader(type, user_id);
	return event;
}

LHNetEvent* __cdecl LHNetEvent::VCreate(LH_NETEVENT_TYPE type, LH_USER_ID user_id, ...)
{
	char* format = LHNetGetFormatDescriptor(type, MessageDescriptors);
	if (format == NULL)
		return NULL;

	va_list args;
	va_start(args, user_id);
	return RawCreate(user_id, type, format, args);
}

LHNetEvent* __cdecl LHNetEvent::VCreate(long type, LHNetMessageFormatDescriptor* descriptors, ...)
{
	char* format = LHNetGetFormatDescriptor(type, descriptors);
	if (format == NULL)
		return NULL;

	va_list args;
	va_start(args, descriptors);
	return RawCreate(LH_ALL_USERS, (LH_NETEVENT_TYPE)type, format, args);
}

LH_RETURN __cdecl LHNetEvent::VDecode(LH_NETEVENT_TYPE type, ...)
{
	if (GetType() != type)
		return LH_ERROR;

	char* format = LHNetGetFormatDescriptor(type, MessageDescriptors);
	if (format == NULL)
		return LH_ERROR;

	va_list args;
	va_start(args, type);
	return RawDecode(format, args);
}

LH_RETURN __cdecl LHNetEvent::VDecode(long type, LHNetMessageFormatDescriptor* descriptors, ...)
{
	char* format = LHNetGetFormatDescriptor(type, descriptors);
	if (format == NULL)
		return LH_ERROR;

	va_list args;
	va_start(args, descriptors);
	return RawDecode(format, args);
}

LHNetEvent* LHNetEvent::RawCreate(LH_USER_ID user_id, LH_NETEVENT_TYPE type, char* format, va_list args)
{
	LHNetEvent*    event = new LHNetEvent;
	va_list        sizeArgs = args;
	unsigned long  length = 0;
	unsigned short i;

	for (i = 0; format[i] != '\0'; i++)
	{
		switch (format[i])
		{
		case 'I':
			va_arg(sizeArgs, LH_USER_ID);
			length += sizeof(LH_USER_ID);
			break;
		case 'U':
			va_arg(sizeArgs, unsigned long);
			length += sizeof(unsigned long);
			break;
		case 'S': {
			char* string = va_arg(sizeArgs, char*);
			length += string != NULL ? strlen(string) + 2 : 1;
			break;
		}
		case 'W': {
			wchar_t* string = va_arg(sizeArgs, wchar_t*);
			length += string != NULL ? 1 + (wcslen(string) + 1) * sizeof(wchar_t) : 1;
			break;
		}
		case 'F':
			va_arg(sizeArgs, double);
			length += sizeof(double);
			break;
		case 'D': {
			unsigned long dataLength = va_arg(sizeArgs, unsigned long);
			va_arg(sizeArgs, void*);
			length += dataLength + sizeof(unsigned long);
			break;
		}
		case 'E':
			length += LHNetGetNetEventLength(va_arg(sizeArgs, LHNetEvent*));
			break;
		case 'P': {
			LHPacketisableObject* object = va_arg(sizeArgs, LHPacketisableObject*);
			if (format[i + 1] == '*')
			{
				unsigned long options = va_arg(sizeArgs, unsigned long);
				void*         context = va_arg(sizeArgs, void*);
				i++;
				length += object != NULL ? object->GetEncodedLength(options, context) + 1 : 1;
			}
			else
			{
				length += object != NULL ? object->GetEncodedLength(0, NULL) + 1 : 1;
			}
			break;
		}
		case 'L': {
			LHPacketisableObjectList* list = va_arg(sizeArgs, LHPacketisableObjectList*);
			if (format[i + 1] == '*')
			{
				unsigned long options = va_arg(sizeArgs, unsigned long);
				void*         context = va_arg(sizeArgs, void*);
				i++;
				length += LHPacketisableObject::GetEncodedListLength(list, options, context);
			}
			else
			{
				length += LHPacketisableObject::GetEncodedListLength(list, 0, NULL);
			}
			break;
		}
		case 'Z':
			length += LHNetGetEncodedStringListLength(va_arg(sizeArgs, LHLinkedList<char*>*));
			break;
		case 'B':
			va_arg(sizeArgs, int);
			length++;
			break;
		case 'X': {
			char* fileName = va_arg(sizeArgs, char*);
			va_arg(sizeArgs, LH_USER_ID);
			length += LHNetGetEncodedFileLength(fileName);
			break;
		}
		default:
			return NULL;
		}
	}

	length += LH_NETEVENT_HEADER_SIZE;
	LHPacket* packet = (LHPacket*)calloc(length + LH_PACKET_ALLOCATION_PADDING, 1);
	packet->SetDataLen(length);
	event->Packet = packet;
	if (event->Packet == NULL)
	{
		delete event;
		return NULL;
	}

	event->SetPacketHeader(LH_NETEVENT_TYPE_NONE, LH_USER_ID(LH_ALL_USERS_ID));
	unsigned char* buffer = event->Packet->GetDataPtr() + LH_NETEVENT_HEADER_SIZE;

	for (i = 0; format[i] != '\0'; i++)
	{
		switch (format[i])
		{
		case 'I':
			buffer = LHNetEncodeULONG(buffer, va_arg(args, LH_USER_ID));
			break;
		case 'U': {
			unsigned long value = va_arg(args, unsigned long);
			memcpy(buffer, &value, sizeof(value));
			buffer += sizeof(value);
			break;
		}
		case 'F': {
			double value = va_arg(args, double);
			memcpy(buffer, &value, sizeof(value));
			buffer += sizeof(value);
			break;
		}
		case 'S': {
			char* string = va_arg(args, char*);
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
			break;
		}
		case 'W': {
			wchar_t* string = va_arg(args, wchar_t*);
			if (string != NULL)
			{
				*buffer = 1;
				wcscpy((wchar_t*)(buffer + 1), string);
				buffer = buffer + 1 + (wcslen(string) + 1) * sizeof(wchar_t);
			}
			else
			{
				*buffer++ = 0;
			}
			break;
		}
		case 'D': {
			unsigned long dataLength = va_arg(args, unsigned long);
			void*         data = va_arg(args, void*);
			memcpy(buffer, &dataLength, sizeof(dataLength));
			buffer += sizeof(dataLength);
			if (dataLength != 0)
			{
				if (data != NULL)
				{
					memcpy(buffer, data, dataLength);
					buffer += dataLength;
				}
				else
				{
					buffer = NULL;
				}
			}
			break;
		}
		case 'E':
			buffer = LHNetEncodeNetEvent(buffer, va_arg(args, LHNetEvent*));
			break;
		case 'P': {
			LHPacketisableObject* object = va_arg(args, LHPacketisableObject*);
			if (format[i + 1] == '*')
			{
				unsigned long options = va_arg(args, unsigned long);
				void*         context = va_arg(args, void*);
				i++;
				if (object != NULL)
				{
					*buffer = 1;
					buffer = object->EncodeToBuffer(buffer + 1, options, context);
				}
				else
				{
					*buffer++ = 0;
				}
			}
			else
			{
				if (object != NULL)
				{
					*buffer = 1;
					buffer = object->EncodeToBuffer(buffer + 1, 0, NULL);
				}
				else
				{
					*buffer++ = 0;
				}
			}
			break;
		}
		case 'L': {
			LHPacketisableObjectList* list = va_arg(args, LHPacketisableObjectList*);
			if (format[i + 1] == '*')
			{
				unsigned long options = va_arg(args, unsigned long);
				void*         context = va_arg(args, void*);
				i++;
				buffer = LHPacketisableObject::EncodeListToBuffer(buffer, list, options, context);
			}
			else
			{
				buffer = LHPacketisableObject::EncodeListToBuffer(buffer, list, 0, NULL);
			}
			break;
		}
		case 'Z':
			buffer = LHNetEncodeStringList(buffer, va_arg(args, LHLinkedList<char*>*));
			break;
		case 'B':
			*buffer++ = va_arg(args, unsigned char);
			break;
		case 'X': {
			char*      fileName = va_arg(args, char*);
			LH_USER_ID fileUser = va_arg(args, LH_USER_ID);
			buffer = LHNetEncodeFile(buffer, fileUser, fileName);
			break;
		}
		default:
			return NULL;
		}
	}

	event->SetPacketHeader(type, user_id);
	return event;
}

LH_RETURN LHNetEvent::RawDecode(char* format, va_list args)
{
	unsigned char* buffer = Packet->GetDataPtr() + LH_NETEVENT_HEADER_SIZE;
	unsigned short i;

	for (i = 0; format[i] != '\0'; i++)
	{
		switch (format[i])
		{
		case '*':
			break;
		case 'I':
			buffer = LHNetDecodeULONG(buffer, va_arg(args, unsigned long*));
			break;
		case 'U':
			memcpy(va_arg(args, unsigned long*), buffer, sizeof(unsigned long));
			buffer += sizeof(unsigned long);
			break;
		case 'F':
			memcpy(va_arg(args, double*), buffer, sizeof(double));
			buffer += sizeof(double);
			break;
		case 'S': {
			char** string = va_arg(args, char**);
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
			break;
		}
		case 'W': {
			wchar_t** string = va_arg(args, wchar_t**);
			if (*buffer == 0)
			{
				buffer++;
				*string = NULL;
			}
			else if (*buffer == 1)
			{
				buffer++;
				*string = (wchar_t*)buffer;
				buffer += (wcslen((wchar_t*)buffer) + 1) * sizeof(wchar_t);
			}
			else
			{
				buffer = NULL;
			}
			if (buffer == NULL)
				return LH_ERROR;
			break;
		}
		case 'D': {
			unsigned long* dataLength = va_arg(args, unsigned long*);
			void**         data = va_arg(args, void**);
			memcpy(dataLength, buffer, sizeof(*dataLength));
			buffer += sizeof(*dataLength);
			if (*dataLength != 0)
			{
				*data = buffer;
				buffer += *dataLength;
			}
			else
			{
				*data = NULL;
			}
			break;
		}
		case 'E':
			buffer = LHNetDecodeNetEvent(buffer, va_arg(args, LHNetEvent**));
			break;
		case 'L': {
			LHPacketisableObjectFactory create = va_arg(args, LHPacketisableObjectFactory);
			LHPacketisableObjectList*   list = va_arg(args, LHPacketisableObjectList*);
			buffer = LHPacketisableObject::DecodeListFromBuffer(create, buffer, list);
			break;
		}
		case 'P': {
			LHPacketisableObject* object = va_arg(args, LHPacketisableObject*);
			if (*buffer != 0)
			{
				buffer = object->DecodeFromBuffer(buffer + 1);
			}
			else
			{
				object->ClearObject();
				buffer++;
			}
			break;
		}
		case 'Z':
			buffer = LHNetDecodeStringList(buffer, va_arg(args, LHLinkedList<char*>*));
			break;
		case 'B':
			*va_arg(args, unsigned char*) = *buffer++;
			break;
		case 'X': {
			char**      fileName = va_arg(args, char**);
			LH_USER_ID* fileUser = va_arg(args, LH_USER_ID*);
			buffer = LHNetDecodeFile(buffer, fileName, fileUser);
			break;
		}
		default:
			return LH_ERROR;
		}
	}

	if (buffer - (Packet->GetDataPtr() + LH_NETEVENT_HEADER_SIZE) == Packet->GetDataLen() - LH_NETEVENT_HEADER_SIZE)
		return LH_OK;
	return LH_ERROR;
}

LHNetEvent* LHNetEvent::CreateMServeSuperPacket(LH_USER_ID user_id, long game_turn, LHDynamicQueue<LHNetEvent*>* queue,
                                                bool32_t remove_events)
{
	unsigned long                    length = 0;
	LHNetEvent*                      event = new LHNetEvent;
	LHDynamicQueueNode<LHNetEvent*>* node;

	for (node = queue->Head; node != NULL; node = node->Next)
		length += LH_SUPER_PACKET_EVENT_HEADER_SIZE + node->Payload->Packet->GetDataLen() - LH_NETEVENT_HEADER_SIZE;

	length += LH_NETEVENT_HEADER_SIZE + LH_SUPER_PACKET_HEADER_SIZE;
	LHPacket* packet = (LHPacket*)calloc(length + LH_PACKET_ALLOCATION_PADDING, 1);
	packet->SetDataLen(length);
	event->Packet = packet;
	if (event->Packet == NULL)
	{
		delete event;
		return NULL;
	}

	unsigned char* buffer = event->Packet->GetDataPtr() + LH_NETEVENT_HEADER_SIZE;
	*buffer++ = (unsigned char)game_turn;
	*buffer++ = (unsigned char)queue->Count;

	if (remove_events)
	{
		while (queue->Count != 0)
		{
			node = queue->Head;
			LHNetEvent* playerEvent = node->Payload;
			queue->Head = node->Next;
			delete node;
			if (--queue->Count == 0)
			{
				queue->Tail = NULL;
				queue->Head = NULL;
			}

			if (playerEvent->GetType() != LH_NETEVENT_TYPE_MSERVE_CLIENT_GAME_PACKET)
				return NULL;

			*buffer = (unsigned char)playerEvent->GetUserID();
			unsigned char* data = playerEvent->Packet->GetDataPtr() + LH_NETEVENT_HEADER_SIZE;
			unsigned short dataLength = playerEvent->Packet->GetDataLen() - LH_NETEVENT_HEADER_SIZE;
			memcpy(buffer + 1, &dataLength, sizeof(dataLength));
			buffer += 1 + sizeof(dataLength);
			if (dataLength != 0)
			{
				if (data == NULL)
				{
					buffer = NULL;
				}
				else
				{
					memcpy(buffer, data, dataLength);
					buffer += dataLength;
				}
			}
			delete playerEvent;
		}
	}
	else
	{
		for (node = queue->Head; node != NULL; node = node->Next)
		{
			LHNetEvent* playerEvent = node->Payload;
			if (playerEvent->GetType() != LH_NETEVENT_TYPE_MSERVE_CLIENT_GAME_PACKET)
				return NULL;

			*buffer = (unsigned char)playerEvent->GetUserID();
			unsigned char* data = playerEvent->Packet->GetDataPtr() + LH_NETEVENT_HEADER_SIZE;
			unsigned short dataLength = playerEvent->Packet->GetDataLen() - LH_NETEVENT_HEADER_SIZE;
			memcpy(buffer + 1, &dataLength, sizeof(dataLength));
			buffer += 1 + sizeof(dataLength);
			if (dataLength != 0)
			{
				if (data == NULL)
				{
					buffer = NULL;
				}
				else
				{
					memcpy(buffer, data, dataLength);
					buffer += dataLength;
				}
			}
		}
	}

	event->SetPacketHeader(LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET, user_id);
	return event;
}

LHNetEvent* LHNetEvent::CreateEmptyMServeSuperPacket(LH_USER_ID user_id, long game_turn)
{
	LHNetEvent* event = new LHNetEvent;
	LHPacket*   packet = (LHPacket*)calloc(LH_EMPTY_SUPER_PACKET_LENGTH + LH_PACKET_ALLOCATION_PADDING, 1);
	packet->SetDataLen(LH_EMPTY_SUPER_PACKET_LENGTH);
	event->Packet = packet;
	if (event->GetPacket() == NULL)
	{
		delete event;
		return NULL;
	}

	unsigned char* buffer = event->GetPacket()->GetDataPtr() + LH_NETEVENT_HEADER_SIZE;
	buffer[0] = (unsigned char)game_turn;
	buffer[1] = 0;
	event->SetPacketHeader(LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET, user_id);
	return event;
}

LH_RETURN LHNetEvent::DecodeMServeSuperPacket(LHDynamicQueue<LHNetEvent*>* queue, long* game_turn)
{
	if (GetType() != LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET)
		return LH_ERROR;

	if (queue->Count != 0)
	{
		LHDynamicQueueNode<LHNetEvent*>* node;
		LHDynamicQueueNode<LHNetEvent*>* next;
		for (node = queue->Head; node != NULL; node = next)
		{
			next = node->Next;
			delete node->Payload;
			delete node;
		}
		queue->Count = 0;
		queue->Tail = NULL;
		queue->Head = NULL;
	}

	unsigned char* buffer = Packet->GetDataPtr() + LH_NETEVENT_HEADER_SIZE;
	LHNetEvent*    playerEvent;
	unsigned char  value;
	memcpy(&value, buffer, sizeof(value));
	buffer += sizeof(value);
	*game_turn = value;
	memcpy(&value, buffer, sizeof(value));
	buffer += sizeof(value);
	unsigned long  count = value;
	unsigned short i;

	for (i = 0; i < count; i++)
	{
		LH_USER_ID user_id(0);
		user_id.Number = *buffer++;
		unsigned short dataLength;
		memcpy(&dataLength, buffer, sizeof(dataLength));
		buffer += sizeof(dataLength);
		void* data;
		if (dataLength != 0)
		{
			data = buffer;
			buffer += dataLength;
		}
		else
		{
			data = NULL;
		}
		playerEvent = CreateSimple(LH_NETEVENT_TYPE_MSERVE_CLIENT_GAME_PACKET, user_id, dataLength, data);
		queue->Add(playerEvent);
	}

	if (buffer - (Packet->GetDataPtr() + LH_NETEVENT_HEADER_SIZE) == Packet->GetDataLen() - LH_NETEVENT_HEADER_SIZE)
		return LH_OK;
	return LH_ERROR;
}

long LHNetEvent::GetNetGameTurn()
{
	if (GetType() != LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET)
		return LH_ERROR;
	return Packet->GetDataPtr()[LH_NETEVENT_HEADER_SIZE];
}

unsigned long LHNetEvent::GetNumberOfPlayerEvents()
{
	if (GetType() != LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET)
		return LH_ERROR;
	return Packet->GetDataPtr()[LH_NETEVENT_HEADER_SIZE + 1];
}

void LHNetEvent::SetUDPinfo(LHTransportInfo* transport_info)
{
	if (transport_info != NULL)
		UDPInfo.Set(transport_info);
}

LH_RETURN LHNetEvent::DecodeDataPacket(LHNetEvent* net_event, unsigned long* data_type, void** data, int* data_length)
{
	if (net_event == NULL)
		goto fail;
	if (net_event->GetType() != LH_NETEVENT_TYPE_MSERVE_CLIENT_DATA_PACKET)
	{
	fail:
		return LH_ERROR;
	}
	return net_event->VDecode(LH_NETEVENT_TYPE_MSERVE_CLIENT_DATA_PACKET, data_type, data_length, data);
}
