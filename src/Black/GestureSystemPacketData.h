#ifndef BW1_DECOMP_GESTURE_SYSTEM_PACKET_DATA_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_PACKET_DATA_INCLUDED_H

#include <stdint.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>

struct GestureSystemPacketData
{
	uint8_t  Gesture;
	uint32_t field_0x4;
	LHPoint  Position;

	// BW1M100 100189c0 GestureSystemPacketData::Clear(void)
	void Clear()
	{
		Gesture = 0;
		field_0x4 = 0;
	}
	GestureSystemPacketData() { Clear(); }
};

#endif /* BW1_DECOMP_GESTURE_SYSTEM_PACKET_DATA_INCLUDED_H */
