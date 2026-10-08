#ifndef BW1_DECOMP_LH_PACKETISABLE_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH_PACKETISABLE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uintptr_t */

#include "LHMultiplayerExport.h"

template <typename T> class LHLinkedList;

class LH_MULTIPLAYER_API LHPacketisableObject
{
public:
	virtual unsigned long  GetEncodedLength(unsigned long options, void* context) = 0;
	virtual unsigned char* EncodeToBuffer(unsigned char* buffer, unsigned long options, void* context) = 0;
	virtual unsigned char* DecodeFromBuffer(unsigned char* buffer) = 0;
	virtual void           ClearObject() = 0;

	// BW1W120 10001000
	unsigned long NULLGetEncodedLength(unsigned long options, void* context);
	// BW1W120 10001020
	unsigned char* NULLEncodeToBuffer(unsigned char* buffer, unsigned long options, void* context);
	// BW1W120 10001050
	unsigned char* NULLDecodeFromBuffer(unsigned char* buffer);

	// BW1W120 10019980 BW1M119 01106b70 (LHCombined Release)
	static unsigned long GetEncodedListLength(LHLinkedList<LHPacketisableObject*>* list, unsigned long options,
	                                          void* context);
	// BW1W120 100199d0 BW1M119 011068b0 (LHCombined Release)
	static unsigned char* EncodeListToBuffer(unsigned char* buffer, LHLinkedList<LHPacketisableObject*>* list,
	                                         unsigned long options, void* context);
	// BW1W120 10019a40 BW1M119 01106400 (LHCombined Release)
	static unsigned char* DecodeListFromBuffer(LHPacketisableObject* (*create)(), unsigned char* buffer,
	                                           LHLinkedList<LHPacketisableObject*>* list);
};

static_assert(sizeof(LHPacketisableObject) == 4, "LHPacketisableObject size is incorrect");

#endif /* BW1_DECOMP_LH_PACKETISABLE_OBJECT_INCLUDED_H */
