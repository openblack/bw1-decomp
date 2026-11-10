#ifndef BW1_DECOMP_P5_GLOVE_INCLUDED_H
#define BW1_DECOMP_P5_GLOVE_INCLUDED_H

#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#define P5_GLOVE_FINGERS 5

enum P5_GLOVE_FINGER
{
	P5_GLOVE_FINGER_THUMB,
	P5_GLOVE_FINGER_INDEX,
	P5_GLOVE_FINGER_MIDDLE,
	P5_GLOVE_FINGER_RING,
	P5_GLOVE_FINGER_LITTLE,
};

struct P5Glove
{
	// BW1W120 null BW1M119 null
	static int FingerClicks[P5_GLOVE_FINGERS];
	// BW1W120 null BW1M119 null
	static LHCoord Position;
	// BW1W120 null BW1M119 null
	static LHPoint Movement;

	// BW1W120 null BW1M119 null
	static void UpdateFingers();
	// BW1W120 null BW1M119 null
	static void UpdatePosition();
};

#endif /* BW1_DECOMP_P5_GLOVE_INCLUDED_H */
