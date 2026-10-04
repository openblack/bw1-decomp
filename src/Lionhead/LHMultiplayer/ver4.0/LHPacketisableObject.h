#ifndef BW1_DECOMP_LH_PACKETISABLE_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH_PACKETISABLE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uintptr_t */

#include "LHMultiplayerExport.h"

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
};

static_assert(sizeof(LHPacketisableObject) == 4, "LHPacketisableObject size is incorrect");

#endif /* BW1_DECOMP_LH_PACKETISABLE_OBJECT_INCLUDED_H */
