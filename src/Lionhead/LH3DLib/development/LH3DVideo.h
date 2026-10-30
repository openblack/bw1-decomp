#ifndef BW1_DECOMP_LH3D_VIDEO_INCLUDED_H
#define BW1_DECOMP_LH3D_VIDEO_INCLUDED_H

#include <stdint.h> /* For uint8_t, uint16_t */

class LH3DVideo
{
public:
	struct Col
	{
		uint8_t r;
		uint8_t g;
		uint8_t b;
		uint8_t a;
	};

	// BW1W120 00ef64e0 BW1M119 01342190 (LHCombined Release)
	static uint16_t* nextline;
	// BW1W120 00ef6524 BW1M119 013421d4 (LHCombined Release)
	static long (*RGB16)(long r, long g, long b);
	// BW1W120 00ef6530 BW1M119 013421dc (LHCombined Release)
	static long screen_width;
	// BW1W120 00ef6534 BW1M119 013421d8 (LHCombined Release)
	static long screen_height;

	// Static methods

	// BW1W120 00842970 BW1M119 010cb540 (LHCombined Release)
	static void SetUpColours();
	// BW1W120 00842ae0 BW1M119 010cb4f0 (LHCombined Release)
	static long RGB565(long r, long g, long b);
	// BW1W120 00842b10 BW1M119 010cb4a0 (LHCombined Release)
	static long RGB1555(long r, long g, long b);
	// BW1W120 00842b40 BW1M119 010cb3d0 (LHCombined Release)
	static void SetupVideo(long red_shift, long green_shift, long blue_shift);
	// BW1W120 00842b90 BW1M119 010cb380 (LHCombined Release)
	static void Dot(long x, long y, long colour);
	// BW1W120 00842bb0 BW1M119 010cb220 (LHCombined Release)
	static void RectFill(long x1, long y1, long x2, long y2, long colour);
	// BW1W120 00842c00 BW1M119 010cb0c0 (LHCombined Release)
	static void HLine(long x1, long y, long x2, long colour);
	// BW1W120 00842c30 BW1M119 010cafc0 (LHCombined Release)
	static void Horizln(long x1, long x2);
	// BW1W120 00842c80 BW1M119 010caf70 (LHCombined Release)
	static void Setvert(long y);
	// BW1W120 00842ca0 BW1M119 010caf20 (LHCombined Release)
	static void Dropline();
	// BW1W120 00842cc0 BW1M119 010caed0 (LHCombined Release)
	static void Setfillcol(long colour);
};

#endif /* BW1_DECOMP_LH3D_VIDEO_INCLUDED_H */
