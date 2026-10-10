#define LH_MULTIPLAYER_EXPORTS
#include "LHPacketisableObject.h"

#include <string.h>

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>

#include "LHNetLog.h"
#include "LHUserID.h"

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

unsigned long LHPacketisableObject::GetEncodedListLength(LHLinkedList<LHPacketisableObject*>* list,
                                                         unsigned long options, void* context)
{
	unsigned long length = sizeof(unsigned long);
	if (list == NULL || list->count == 0)
		return sizeof(unsigned long);
	for (LHLinkedNode<LHPacketisableObject*>* node = list->GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload != NULL)
		{
			unsigned long objectLength = node->payload->GetEncodedLength(options, context);
			if (objectLength != 0)
				length += objectLength;
		}
	}
	return length;
}

unsigned char* LHPacketisableObject::EncodeListToBuffer(unsigned char*                       buffer,
                                                        LHLinkedList<LHPacketisableObject*>* list,
                                                        unsigned long options, void* context)
{
	unsigned long  encoded = 0;
	unsigned char* start = buffer;
	buffer = LHNetEncodeULONG(buffer, list != NULL ? list->count : 0);
	if (list != NULL && list->count != 0)
	{
		for (LHLinkedNode<LHPacketisableObject*>* node = list->GetStart(); node != NULL; node = node->next.Get())
		{
			if (node->payload != NULL)
			{
				unsigned char* previous = buffer;
				buffer = node->payload->EncodeToBuffer(buffer, options, context);
				if (buffer != previous)
					encoded++;
			}
		}
		LHNetEncodeULONG(start, encoded);
	}
	return buffer;
}

unsigned char* LHPacketisableObject::DecodeListFromBuffer(LHPacketisableObject* (*create)(), unsigned char* buffer,
                                                          LHLinkedList<LHPacketisableObject*>* list)
{
	list->DeleteAll();
	unsigned long count;
	buffer = LHNetDecodeULONG(buffer, &count);
	for (unsigned short i = 0; i < count; i++)
	{
		LHPacketisableObject* object = create();
		buffer = object->DecodeFromBuffer(buffer);
		list->Add(object);
	}
	return buffer;
}
