#ifndef BW1_DECOMP_LHSPRITE_INCLUDED_H
#define BW1_DECOMP_LHSPRITE_INCLUDED_H

#include <stdint.h> /* For uint16_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHColor.h> /* For struct LHColor */
#include <Lionhead/LHLib/ver5.0/LHDraw.h>         /* For class LHPixel16 */

struct LHSprite
{
	uint16_t Width;
	uint16_t Height;
	uint8_t* PixelData;

	// BW1W120 00e91edc BW1M119 01380f28 (LHCombined Release)
	static LHPixel16 TransparentColor16;
	// BW1W120 00e91ee0 BW1M119 01380f24 (LHCombined Release)
	static LHColor TransparentColor24;
};

#endif /* BW1_DECOMP_LHSPRITE_INCLUDED_H */
