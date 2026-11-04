#ifndef BW1_DECOMP_SNOW_COVER_INCLUDED_H
#define BW1_DECOMP_SNOW_COVER_INCLUDED_H

#include <assert.h>
#include <stdint.h> /* For uint16_t */

struct LHPoint;
struct LandBlock;

#define SNOW_COVER_SIZE        128
#define SNOW_COVER_BLOCK_SIZE  4
#define SNOW_COVER_BLOCKS_SIDE (SNOW_COVER_SIZE / SNOW_COVER_BLOCK_SIZE)
#define SNOW_COVER_MELT_STEPS  8
#define SNOW_COVER_MAX_TOP     16
#define SNOW_COVER_MUL_LEVELS  16
#define SNOW_COVER_MAP_SIZE    256

class SnowCover
{
public:
	float      Depth[SNOW_COVER_SIZE * SNOW_COVER_SIZE];
	float      BlockMelt[SNOW_COVER_BLOCKS_SIDE * SNOW_COVER_BLOCKS_SIDE];
	float      MeltTimer;
	int        MeltStep;
	SnowCover* Previous;

	// Original Mac symbol: g_snowcover__9SnowCover.
	// BW1W120 00fa2918 BW1M119 012d3690 (LHCombined Release)
	static SnowCover* g_snowcover;
	static int        numinq;
	static float      topblockn[SNOW_COVER_MAX_TOP];
	static LandBlock* topblock[SNOW_COVER_MAX_TOP];
	static uint8_t    instances;
	static uint8_t*   shademap;
	static uint8_t*   alphamap;
	static uint8_t    multab[SNOW_COVER_MUL_LEVELS + 1][SNOW_COVER_MUL_LEVELS];
	// BW1W120 0086c960 BW1M119 010b3c30 (LHCombined Release)
	void Init();
	// BW1W120 0086ca40 BW1M119 010b3b80 (LHCombined Release)
	void Close();
	// BW1W120 0086c560 BW1M119 010b4160 (LHCombined Release)
	static void Reset();
	// BW1W120 0086c7a0 BW1M119 0103a9d0 (LHCombined Release)
	void Melt(float time);
	// BW1W120 0086c5d0 BW1M119 01030a70 (LHCombined Release)
	void UpdateTextures(int start_row, int row_count);
	// BW1W120 0086ca80 BW1M119 01027d10 (LHCombined Release)
	float GetDepth(float x, float z);
	// BW1W120 0086cb80 BW1M119 01027e20 (LHCombined Release)
	float GetDepth(LHPoint& point);
	// BW1W120 0086cba0 BW1M119 010b35e0 (LHCombined Release)
	void DrawSnowLoc(int grid_z, int grid_x, uint16_t* dest, int size);
};

static_assert(sizeof(SnowCover) == 0x1100c, "SnowCover size is incorrect");

#endif /* BW1_DECOMP_SNOW_COVER_INCLUDED_H */
