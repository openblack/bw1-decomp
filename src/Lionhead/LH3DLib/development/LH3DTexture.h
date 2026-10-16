#ifndef BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H
#define BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <ddraw.h>  /* For DDSURFACEDESC2, IDirectDrawSurface7 */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

struct TextureFormat
{
	uint32_t Type; /* 0x0 */

	// BW1W120 00838500 BW1M119 01034c80 (LHCombined Release)
	int GetWidth();
	// BW1W120 00838530 BW1M119 01034790 (LHCombined Release)
	int GetHeight();
};
static_assert(sizeof(TextureFormat) == 0x4, "Data type is of wrong size");

enum LH3D_TEXTURE_TYPE
{
	LH3D_TEXTURE_TYPE_SYSTEM_MEMORY = 0x4,
	LH3D_TEXTURE_TYPE_NAMED = 0x8,
};

struct LH3DVRAMTex;

class LH3DSurfDesc
{
public:
	void*         Surface; /* 0x0 */
	long          Pitch;   /* 0x4 */
	unsigned long Width;   /* 0x8 */
	unsigned long Height;  /* 0xc */
};
static_assert(sizeof(LH3DSurfDesc) == 0x10, "Data type is of wrong size");

struct LH3DSRAMTex
{
	uint32_t      field_0x0;   /* 0x0 */
	uint32_t      field_0x4;   /* 0x4 */
	uint16_t*     SoftSurface; /* 0x8 */
	uint32_t      field_0xc;   /* 0xc */
	TextureFormat Format;      /* 0x10 */

	// BW1W120 00870910 BW1M119 01034cf0 (LHCombined Release)
	uint16_t* GetSoftSurface();
};

struct LH3DTexture
{
	// BW1W120 00edd470 BW1M119 013404c0 (LHCombined Release)
	static int g_b_use_low_res;
	// BW1W120 00edd460 BW1M119 013404d0 (LHCombined Release)
	static LH3DTexture* g_first;

	LH3DSRAMTex*  SRAMTex;
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
	bool32_t(__fastcall* ProcessFunc)(uint16_t* dest, unsigned long pitch, void* data); /* 0x134 */
	uint32_t ReloadPending;

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
	// BW1W120 00838a70 BW1M119 010003e0 (LHCombined Release)
	bool32_t IsCollide(float u, float v);
	// BW1W120 00838f00 BW1M119 010004d0 (LHCombined Release)
	uint8_t* GetMaskCollide();
	// BW1W120 00838af0 BW1M119 01034850 (LHCombined Release)
	bool32_t Lock(LH3DSurfDesc* desc);
	// BW1W120 00838eb0 BW1M119 01034db0 (LHCombined Release)
	void Unlock();
	// BW1W120 00839020 BW1M119 010c8480 (LHCombined Release)
	void Compress();
	// BW1W120 inlined BW1M119 010107b0 (LHCombined Release)
	uint32_t GetType() { return Flags & 0x3f; }
};

// BW1W120 00871170 BW1M119 010b4fb0 (LHCombined Release)
HRESULT GLock(IDirectDrawSurface7* surface, RECT* rect, DDSURFACEDESC2* desc, unsigned long flags, HANDLE event);

#endif /* BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H */
