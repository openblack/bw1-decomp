#ifndef BW1_DECOMP_ANIMATED_GESTURE_INCLUDED_H
#define BW1_DECOMP_ANIMATED_GESTURE_INCLUDED_H

#include <chlasm/Enum.h> /* For enum GESTURE_TYPE */

struct LHPoint;

class AnimatedGesture
{
public:
	// BW1W120 0068c1d0 BW1M119 0140e130
	void GetPointAtFrac(float frac, LHPoint* point);
};

class AnimatedGestures
{
public:
	// BW1W120 0068c650 BW1M119 0140d950
	static AnimatedGesture* GetGesture(GESTURE_TYPE type);
	// BW1W120 0068c110 BW1M119 0140e1e0
	static float RelativeTotalDistance(GESTURE_TYPE type);
};

#endif /* BW1_DECOMP_ANIMATED_GESTURE_INCLUDED_H */
