#ifndef BW1_DECOMP_SUB_COLLIDE_DATA_RENDER_INCLUDED_H
#define BW1_DECOMP_SUB_COLLIDE_DATA_RENDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint8_t */
#include <string.h> /* For memset */

#include "LHPoint.h" /* For struct LHPoint */

// The render target of a software rasteriser.
struct SubCollideDataRender
{
	uint8_t*  Buffer;
	uint16_t* Pixels;
	uint8_t*  Texture; /* 0x8 */
	int       Width;
	int       Height; /* 0x10 */
	int       MinBlockX;
	int       MaxBlockX;
	int       MinBlockZ;
	int       MaxBlockZ;
	LHPoint   Min;
	LHPoint   Max;

	// BW1W120 inlined BW1M119 inlined
	SubCollideDataRender() { memset(this, 0, sizeof(SubCollideDataRender)); }
	// BW1W120 00881050 BW1M119 0100c500 (LHCombined Release)
	~SubCollideDataRender();
};
static_assert(sizeof(SubCollideDataRender) == 0x3c, "Data type is of wrong size");

#endif /* BW1_DECOMP_SUB_COLLIDE_DATA_RENDER_INCLUDED_H */
