#ifndef BW1_DECOMP_LH_COLOR_INCLUDED_H
#define BW1_DECOMP_LH_COLOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

// Memory order is B, G, R, A. Confirmed by LHScreen::Clear, which packs
// b | (g << 8) | (r << 16) into a 0x00RRGGBB DDBLTFX colour-fill value.
struct LHColor
{
	uint8_t b; /* 0x0 */
	uint8_t g; /* 0x1 */
	uint8_t r; /* 0x2 */
	uint8_t a; /* 0x3 */
};
static_assert(sizeof(LHColor) == 0x4, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_COLOR_INCLUDED_H */
