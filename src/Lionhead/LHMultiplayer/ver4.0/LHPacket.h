#ifndef BW1_DECOMP_LH_PACKET_INCLUDED_H
#define BW1_DECOMP_LH_PACKET_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint8_t */

#include "LHNetUser.h" /* For struct LH_USER_ID */

enum
{
	LH_PACKET_ALLOCATION_PADDING = 10,
};

struct LHPacketHeader
{
	uint16_t          length; /* 0x0 */
	uint16_t          NeteventType;
	struct LH_USER_ID UserId;
};
static_assert(sizeof(LHPacketHeader) == 0x8, "Data type is of wrong size");

class LHPacket
{
public:
	struct LHPacketHeader header; /* 0x0 */
	uint8_t               payload[0x0];

	// BW1W120 inlined BW1M119 01005540 (LHCombined Release)
	unsigned short GetDataLen() { return header.length; }
	// BW1W120 inlined BW1M119 0103f180 (LHCombined Release)
	void SetDataLen(unsigned short length) { header.length = length; }
	// BW1W120 inlined BW1M119 01005590 (LHCombined Release)
	unsigned char* GetDataPtr() { return (unsigned char*)&header.NeteventType; }
};
static_assert(sizeof(LHPacket) == 0x8, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_PACKET_INCLUDED_H */
