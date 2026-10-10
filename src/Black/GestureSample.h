#ifndef BW1_DECOMP_GESTURE_SAMPLE_INCLUDED_H
#define BW1_DECOMP_GESTURE_SAMPLE_INCLUDED_H

#include <stdint.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>

enum
{
	GESTURE_SYSTEM_MAX_SAMPLES = 0x50,
	GESTURE_DIRECTION_COUNT = 8
};

enum GESTURE_KEY_POINT_TYPE
{
	GESTURE_KEY_POINT_TYPE_NONE = 0,
	GESTURE_KEY_POINT_TYPE_START = 1 << 0,
	GESTURE_KEY_POINT_TYPE_JUNCTION = 1 << 1,
	GESTURE_KEY_POINT_TYPE_0x4 = 1 << 2,
	GESTURE_KEY_POINT_TYPE_END = 1 << 3,
};

struct GestureSampleBase
{
	LHPoint  Position;
	float    Turn;
	uint32_t Direction;

	// BW1W120 00579680 BW1M119 011ac240
	GestureSampleBase() {}
};

struct GestureSample : public GestureSampleBase
{
	LHPoint  WorldPosition; /* 0x14 */
	uint32_t Flags;
	float    KeyAngle; /* 0x24 */
};

#endif /* BW1_DECOMP_GESTURE_SAMPLE_INCLUDED_H */
