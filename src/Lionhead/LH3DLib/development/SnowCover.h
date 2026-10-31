#ifndef BW1_DECOMP_SNOW_COVER_INCLUDED_H
#define BW1_DECOMP_SNOW_COVER_INCLUDED_H

#include <assert.h>
#include <stdint.h> /* For uint16_t */

struct LHPoint;

class SnowCover
{
public:
	float      Depth[0x4000];
	float      field_0x10000[0x400];
	float      field_0x11000;
	int        field_0x11004;
	SnowCover* Previous;

	// Original Mac symbol: g_snowcover__9SnowCover.
	// BW1W120 00fa2918 BW1M119 012d3690 (LHCombined Release)
	static SnowCover* g_snowcover;
	// BW1W120 0086c960 BW1M119 010b3c30 (LHCombined Release)
	void Init();
	// BW1W120 0086ca40 BW1M119 010b3b80 (LHCombined Release)
	void Close();
	// BW1W120 0086c560 BW1M119 010b4160 (LHCombined Release)
	static void Reset();
	// BW1W120 0086c7a0 BW1M119 0103a9d0 (LHCombined Release)
	void Melt(float time);
	// BW1W120 0086cb80 BW1M119 01027e20 (LHCombined Release)
	float GetDepth(LHPoint& point);
	// BW1W120 0086cba0 BW1M119 010b35e0 (LHCombined Release)
	void DrawSnowLoc(int grid_z, int grid_x, uint16_t* dest, int size);
};

static_assert(sizeof(SnowCover) == 0x1100c, "SnowCover size is incorrect");

#endif /* BW1_DECOMP_SNOW_COVER_INCLUDED_H */
