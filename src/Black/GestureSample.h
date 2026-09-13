#ifndef BW1_DECOMP_GESTURE_SAMPLE_INCLUDED_H
#define BW1_DECOMP_GESTURE_SAMPLE_INCLUDED_H

#include <stdint.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>

struct GestureSampleBase
{
	LHPoint  Position;
	float    Turn;
	uint32_t Direction;
};

struct GestureSample : public GestureSampleBase
{
	uint32_t field_0x14;
	uint32_t field_0x18;
	uint32_t field_0x1c;
	uint32_t Flags;
	uint32_t field_0x24;
};

#endif /* BW1_DECOMP_GESTURE_SAMPLE_INCLUDED_H */
