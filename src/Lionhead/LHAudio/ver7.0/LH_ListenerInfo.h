#ifndef BW1_DECOMP_LH_LISTENER_INFO_INCLUDED_H
#define BW1_DECOMP_LH_LISTENER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHAudioPoint.h" /* For LHAudioPoint */

#define LH_LISTENER_MIN_DIRECTION 0.0001f

class LH_ListenerInfo
{
public:
	LHAudioPoint Pos;
	LHAudioPoint Front;        /* 0xc */
	LHAudioPoint Direction;    /* 0x18 */
	LHAudioPoint Top;          /* 0x24 */
	float        Matrix[4][3]; /* 0x30 */

	// BW1W120 100037e0 BW1M119 0111ed50 (LHCombined Release)
	LH_ListenerInfo();

	// BW1W120 10003780 BW1M119 0111edf0 (LHCombined Release)
	void Transform(LHAudioPoint* out, LHAudioPoint* in);
	// BW1W120 100039c0 BW1M119 010122f0 (LHCombined Release)
	void UpdateListener(LHAudioPoint* pos, LHAudioPoint* front, LHAudioPoint* top);
};
static_assert(sizeof(LH_ListenerInfo) == 0x60, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_LISTENER_INFO_INCLUDED_H */
