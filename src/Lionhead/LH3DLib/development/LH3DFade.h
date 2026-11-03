#ifndef BW1_DECOMP_LH3D_FADE_INCLUDED_H
#define BW1_DECOMP_LH3D_FADE_INCLUDED_H

#include <stdint.h> /* For uint32_t */

struct LH3DMaterial;

class LH3DFade
{
public:
	// BW1W120 00fa51dc BW1M119 011f6174 (LHCombined Release)
	static LH3DMaterial* g_material;
	// BW1W120 00fa51d8 BW1M119 011f6178 (LHCombined Release)
	static uint32_t g_color;

	// Static methods

	// BW1W120 0086fee0 BW1M119 0100a600 (LHCombined Release)
	static void Draw();
};

#endif /* BW1_DECOMP_LH3D_FADE_INCLUDED_H */
