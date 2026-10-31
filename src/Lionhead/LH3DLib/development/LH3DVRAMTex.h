#ifndef BW1_DECOMP_LH3D_VRAM_TEX_INCLUDED_H
#define BW1_DECOMP_LH3D_VRAM_TEX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <ddraw.h>  /* For DDPIXELFORMAT, IDirectDrawSurface7 */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include "LH3DTexture.h" /* For struct TextureFormat */

// Forward Declares

struct LH3DTexture;

#define LH3D_VRAM_TEX_PIXEL_FORMATS 3

struct LH3DVRAMTex
{
	// A texture format the device can use.
	struct PixelFormat
	{
		DDPIXELFORMAT Format;
		uint32_t      field_0x20;
	};

	// BW1W120 00f05190 BW1M119 01342234 (LHCombined Release)
	static PixelFormat g_pixel_format[LH3D_VRAM_TEX_PIXEL_FORMATS];

	IDirectDrawSurface7* Surface;
	LH3DTexture*         Texture;
	LH3DVRAMTex*         Next;
	uint32_t             field_0xc;
	bool32_t             Alloc;
	bool32_t             Loaded;
	uint32_t             ActivateCount;
	uint32_t             FormatType;

	// Static methods

	// BW1W120 0085d7f0 BW1M119 010d15b0 (LHCombined Release)
	static bool32_t Open();
	// BW1W120 0085d9c0 BW1M119 010d14c0 (LHCombined Release)
	static void Close();
	// BW1W120 0085da00 BW1M119 010d1310 (LHCombined Release)
	static LH3DVRAMTex* GetElderOrFree(TextureFormat format, int alloc);
	// BW1W120 0085dac0 BW1M119 010d1220 (LHCombined Release)
	static LH3DVRAMTex* AssignTexture(LH3DTexture* texture, int alloc);

	// Non-virtual methods

	// BW1W120 0085dc00 BW1M119 0100c7b0 (LHCombined Release)
	void LoadInVRAM(IDirectDrawSurface7* surface);
};
static_assert(sizeof(LH3DVRAMTex::PixelFormat) == 0x24, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_VRAM_TEX_INCLUDED_H */
