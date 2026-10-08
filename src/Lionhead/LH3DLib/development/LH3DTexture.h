#ifndef BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H
#define BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

enum TextureFormat
{
	TextureFormat_0x0 = 0x0,
	_TextureFormat__COUNT = 0x1
};

enum LH3D_TEXTURE_TYPE
{
	LH3D_TEXTURE_TYPE_SYSTEM_MEMORY = 0x4,
	LH3D_TEXTURE_TYPE_NAMED = 0x8,
};

struct LH3DVRAMTex;

struct LH3DTexture
{
	// BW1W120 00edd470
	static int g_b_use_low_res;
	// BW1W120 00edd460 BW1M119 013404d0 (LHCombined Release)
	static LH3DTexture* g_first;

	uint32_t      field_0x0;
	LH3DVRAMTex*  VRAMTex;
	uint32_t      field_0x8;
	LH3DTexture*  next;
	uint32_t      Flags;
	TextureFormat format;
	uint32_t      id;
	uint8_t       field_0x1c[0x104];
	int*          field_0x120;
	void*         surface;
	uint32_t      field_0x128;
	uint32_t      MaskCollide;
	uint32_t      field_0x130;
	void*         field_0x134;
	uint32_t      ReloadPending;

	// Static methods

	// BW1W120 008379e0 BW1M119 010c9310 (LHCombined Release)
	static LH3DTexture* Create(void* param_0, unsigned long param_1, unsigned long param_2, TextureFormat* param_3);
	// BW1W120 008377e0 BW1M119 inlined
	static void SetPackedTexture();
	// BW1W120 00838480 BW1M119 010c8ce0 (LHCombined Release)
	static LH3DTexture* GetThisTexture(unsigned long id);

	// Non-virtual methods

	// BW1W120 00837d40 BW1M119 010c9130 (LHCombined Release)
	void Release();
	// BW1W120 00838430 BW1M119 010c8e30 (LHCombined Release)
	void YouLostYourVRAM();
	// BW1W120 inlined BW1M119 010107b0 (LHCombined Release)
	uint32_t GetType() { return Flags & 0x3f; }
};

#endif /* BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H */
