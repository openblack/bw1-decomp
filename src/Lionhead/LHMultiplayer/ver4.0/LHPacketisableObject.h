#ifndef BW1_DECOMP_LH_PACKETISABLE_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH_PACKETISABLE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uintptr_t */

class LHPacketisableObject
{
public:
	// DLL vtable 1005029c: four pure virtuals, no virtual destructor.
	virtual unsigned long  GetEncodedLength(unsigned long options, void* context) = 0;
	virtual unsigned char* EncodeToBuffer(unsigned char* buffer, unsigned long options, void* context) = 0;
	virtual unsigned char* DecodeFromBuffer(unsigned char* buffer) = 0;
	virtual void           ClearObject() = 0;
};

static_assert(sizeof(LHPacketisableObject) == 4, "LHPacketisableObject size is incorrect");

#endif /* BW1_DECOMP_LH_PACKETISABLE_OBJECT_INCLUDED_H */
