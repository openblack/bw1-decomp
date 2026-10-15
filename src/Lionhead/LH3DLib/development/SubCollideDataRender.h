#ifndef BW1_DECOMP_SUB_COLLIDE_DATA_RENDER_INCLUDED_H
#define BW1_DECOMP_SUB_COLLIDE_DATA_RENDER_INCLUDED_H

#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

// The render target of a software rasteriser.
struct SubCollideDataRender
{
	uint32_t  field_0x0;
	uint16_t* Pixels;
	uint8_t*  Texture; /* 0x8 */
	int       Width;
	int       Height; /* 0x10 */
};

#endif /* BW1_DECOMP_SUB_COLLIDE_DATA_RENDER_INCLUDED_H */
