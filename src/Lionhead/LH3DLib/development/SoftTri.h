#ifndef BW1_DECOMP_SOFT_TRI_INCLUDED_H
#define BW1_DECOMP_SOFT_TRI_INCLUDED_H

#include <stdint.h> /* For uint8_t */

#define SOFT_TRI_TABLE_SIZE 256
#define SOFT_TRI_MAX_ROWS   513
#define SOFT_TRI_MASK_COUNT 16

// A software triangle rasteriser.
struct SoftTri
{
	// BW1W120 00c39b08 BW1M119 011d1198 (LHCombined Release)
	static int CLIPX;
	// BW1W120 00c39b0c BW1M119 011d119c (LHCombined Release)
	static int CLIPY;
	// BW1W120 00fa93c4 BW1M119 012d1f6c (LHCombined Release)
	static uint8_t char2bit[SOFT_TRI_TABLE_SIZE];
	// A darkness for each shadow value.
	// BW1W120 00fa94c4 BW1M119 012d206c (LHCombined Release)
	static uint8_t bit2char[SOFT_TRI_TABLE_SIZE];
	// BW1W120 00fa95c4 BW1M119 012d216c (LHCombined Release)
	static uint16_t bit2col[SOFT_TRI_TABLE_SIZE];
	// BW1W120 00faa7cc BW1M119 012d236c (LHCombined Release)
	static int maxy;
	// BW1W120 00faa7d0 BW1M119 012d2370 (LHCombined Release)
	static int miny;
	// BW1W120 00fa97c4 BW1M119 012d2374 (LHCombined Release)
	static int right[SOFT_TRI_MAX_ROWS];
	// BW1W120 00fa9fc8 BW1M119 012d2b78 (LHCombined Release)
	static int left[SOFT_TRI_MAX_ROWS];

	// BW1W120 009a3c74 BW1M119 011adc24 (LHCombined Release)
	static const uint32_t leftmask_top[SOFT_TRI_MASK_COUNT];
	// BW1W120 009a3cb4 BW1M119 011adc64 (LHCombined Release)
	static const uint32_t rightmask_top[SOFT_TRI_MASK_COUNT];
	// BW1W120 009a3cf4 BW1M119 011adca4 (LHCombined Release)
	static const uint32_t leftmask_bottom[SOFT_TRI_MASK_COUNT];
	// BW1W120 009a3d34 BW1M119 011adce4 (LHCombined Release)
	static const uint32_t rightmask_bottom[SOFT_TRI_MASK_COUNT];
	// BW1W120 009a3d74 BW1M119 011add24 (LHCombined Release)
	static const uint32_t fullmask_top;
	// BW1W120 009a3d78 BW1M119 011add28 (LHCombined Release)
	static const uint32_t fullmask_bottom;

	// BW1W120 00880f20 BW1M119 010ad540 (LHCombined Release)
	static void CalcColTab(short start, short count);
	// BW1W120 0087ff70 BW1M119 0100df70 (LHCombined Release)
	static void __fastcall addedge(float x1, int y1, float x2, int y2);
	// BW1W120 00880050 BW1M119 0100d930 (LHCombined Release)
	static void __fastcall rendertri(void* buffer, int pitch, int color);
	// BW1W120 inlined BW1M119 010aeb30 (LHCombined Release)
	static void addedge_123(float x1, int y1, float x2, int y2, float x3, int y3, float x4, int y4, float x5, int y5,
	                        float x6, int y6)
	{
		addedge(x1, y1, x2, y2);
		addedge(x3, y3, x4, y4);
		addedge(x5, y5, x6, y6);
	}
};

#endif /* BW1_DECOMP_SOFT_TRI_INCLUDED_H */
