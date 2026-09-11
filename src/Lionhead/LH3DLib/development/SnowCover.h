#ifndef BW1_DECOMP_SNOW_COVER_INCLUDED_H
#define BW1_DECOMP_SNOW_COVER_INCLUDED_H

#include <assert.h>

class SnowCover
{
public:
	float      Depth[0x4000];
	float      field_0x10000[0x400];
	float      field_0x11000;
	int        field_0x11004;
	SnowCover* Previous;

	// BW1W120 00fa2918. Original Mac symbol: g_snowcover__9SnowCover.
	static SnowCover* g_snowcover;
	// BW1W120 0086c960 BW1M100 imported SnowCover::Init(void)
	void Init();
	// BW1W120 0086ca40 BW1M100 imported SnowCover::Close(void)
	void Close();
	// BW1W120 0086c560 BW1M100 imported SnowCover::Reset(void)
	static void Reset();
};

static_assert(sizeof(SnowCover) == 0x1100c, "SnowCover size is incorrect");

#endif /* BW1_DECOMP_SNOW_COVER_INCLUDED_H */
