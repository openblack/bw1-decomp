#ifndef BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H
#define BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

enum TextureFormat
{
	TextureFormat_0x0 = 0x0,
	_TextureFormat__COUNT = 0x1
};

struct LH3DTexture
{
	uint32_t      field_0x0;
	uint32_t      field_0x4;
	uint32_t      field_0x8;
	LH3DTexture*  next;
	uint32_t      field_0x10;
	TextureFormat format;
	uint32_t      id;
	uint8_t       field_0x1c[0x104];
	int*          field_0x120;
	void*         surface;
	uint32_t      field_0x128;
	uint32_t      MaskCollide;
	uint32_t      field_0x130;
	void*         field_0x134;
	uint32_t      field_0x138;

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
};

#endif /* BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H */
