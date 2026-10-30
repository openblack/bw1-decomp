#ifndef BW1_DECOMP_LH3D_VIDEO_INCLUDED_H
#define BW1_DECOMP_LH3D_VIDEO_INCLUDED_H

#include <stdint.h> /* For uint8_t */

class LH3DVideo
{
public:
	struct Col
	{
		uint8_t r;
		uint8_t g;
		uint8_t b;
		uint8_t field_0x3;
	};

	// BW1W120 00ef6524 BW1M119 013421d4 (LHCombined Release)
	static long (*RGB16)(long r, long g, long b);
	// BW1W120 00ef6530 BW1M119 013421dc (LHCombined Release)
	static long screen_width;
	// BW1W120 00ef6534 BW1M119 013421d8 (LHCombined Release)
	static long screen_height;

	// Static methods

	// BW1W120 00842bb0 BW1M119 010cb220 (LHCombined Release)
	static void RectFill(long x1, long y1, long x2, long y2, long colour);
};

#endif /* BW1_DECOMP_LH3D_VIDEO_INCLUDED_H */
