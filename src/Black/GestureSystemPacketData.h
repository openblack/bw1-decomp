#ifndef BW1_DECOMP_GESTURE_SYSTEM_PACKET_DATA_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_PACKET_DATA_INCLUDED_H

#include <stdint.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>

struct MapCoords;

struct GestureSystemPacketData
{
	uint8_t  Gesture;
	uint32_t field_0x4;
	LHPoint  Position;
	float    Size; /* 0x14 */

	// BW1W120 inlined BW1M119 0101b560
	void Clear()
	{
		Gesture = 0;
		field_0x4 = 0;
	}
	GestureSystemPacketData() { Clear(); }
	// BW1W120 0057c960 BW1M119 013352b0
	void SetCastPosition(const MapCoords& coords);
};

#endif /* BW1_DECOMP_GESTURE_SYSTEM_PACKET_DATA_INCLUDED_H */
