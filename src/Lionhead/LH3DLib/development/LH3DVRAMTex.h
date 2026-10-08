#ifndef BW1_DECOMP_LH3D_VRAM_TEX_INCLUDED_H
#define BW1_DECOMP_LH3D_VRAM_TEX_INCLUDED_H

#include <stdint.h> /* For uint32_t */

// Forward Declares

struct LH3DTexture;

struct LH3DVRAMTex
{
	uint32_t     field_0x0;
	LH3DTexture* Texture;
};

#endif /* BW1_DECOMP_LH3D_VRAM_TEX_INCLUDED_H */
