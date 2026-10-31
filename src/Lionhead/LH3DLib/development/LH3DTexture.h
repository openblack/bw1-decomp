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
	// BW1W120 00838560 BW1M119 010c8b30 (LHCombined Release)
	int GetMaxMipMapLevel();
};
static_assert(sizeof(TextureFormat) == 0x4, "Data type is of wrong size");

enum LH3D_TEXTURE_FORMAT
{
	LH3D_TEXTURE_FORMAT_4444,
	LH3D_TEXTURE_FORMAT_555,
	LH3D_TEXTURE_FORMAT_32X32_4444,
	LH3D_TEXTURE_FORMAT_ALWAYS_256X256_4444,
	LH3D_TEXTURE_FORMAT_256X256_8888,
};

#define LH3D_TEXTURE_FORMAT_MESH_SKIN LH3D_TEXTURE_FORMAT_555

enum LH3D_TEXTURE_TYPE
{
	LH3D_TEXTURE_TYPE_FILE = 0x1,
	LH3D_TEXTURE_TYPE_PACKED = 0x2,
	LH3D_TEXTURE_TYPE_SYSTEM_MEMORY = 0x4,
	LH3D_TEXTURE_TYPE_NAMED = 0x8,
	LH3D_TEXTURE_TYPE_CT_FILE = 0x10,
	LH3D_TEXTURE_TYPE_CT = 0x20,
};

enum LH3D_TEXTURE_PACK_TYPE
{
	LH3D_TEXTURE_PACK_TYPE_RAW = 0x0,
	LH3D_TEXTURE_PACK_TYPE_CT = 0x1,
	LH3D_TEXTURE_PACK_TYPE_CT_ALPHA = 0x2,
};

enum LH3D_TEXTURE_FLAGS
{
	LH3D_TEXTURE_FLAGS_UNCOMPRESSED_TYPE_MASK = 0x1f,
	LH3D_TEXTURE_FLAGS_TYPE_MASK = 0x3f,
	LH3D_TEXTURE_FLAGS_ALPHA = 0x40,
	LH3D_TEXTURE_FLAGS_ALLOC_VRAM = 0x80,
};

class LHReleasedFile;
struct LH3DColor;
struct LH3DCT;
struct LH3DVRAMTex;

class LH3DSurfDesc
{
public:
	void* Surface;
	long  Pitch;
	long  Width;
	long  Height;

	// BW1W120 00839680 BW1M119 010c7970 (LHCombined Release)
	void Set(DDSURFACEDESC2* desc);
};
static_assert(sizeof(LH3DSurfDesc) == 0x10, "Data type is of wrong size");

struct LH3DTexture;

struct LH3DSRAMTex
{
	LH3DTexture*  Texture;
	uint32_t      field_0x4;
	uint16_t*     SoftSurface;
	uint32_t      field_0xc;
	TextureFormat Format;

	// Static methods

	// BW1W120 008701f0 BW1M119 010b6560 (LHCombined Release)
	static bool32_t Open();
	// BW1W120 00870230 BW1M119 010b64b0 (LHCombined Release)
	static void Close();
	// BW1W120 00870310 BW1M119 010b6220 (LHCombined Release)
	static LH3DSRAMTex* Create(LH3DTexture* texture);

	// Non-virtual methods

	// BW1W120 00870610 BW1M119 010b5d00 (LHCombined Release)
	void Release();
	// BW1W120 008704c0 BW1M119 010b52c0 (LHCombined Release)
	void __fastcall Copy(IDirectDrawSurface7* surface);
	// BW1W120 008709d0 BW1M119 010b50a0 (LHCombined Release)
	void CopyInto(uint16_t* source, long width, long height);
	// BW1W120 00870640 BW1M119 010b5bb0 (LHCombined Release)
	void __fastcall Blend(unsigned long blend, LH3DSRAMTex* from, LH3DSRAMTex* to);
	// BW1W120 008707a0 BW1M119 010b5a50 (LHCombined Release)
	void __fastcall OrganicBlend(LH3DSRAMTex* from, LH3DSRAMTex* to, float blend);
	// BW1W120 00870910 BW1M119 01034cf0 (LHCombined Release)
	uint16_t* GetSoftSurface();
};

struct LH3DTexture
{
	// BW1W120 00edd46c BW1M119 013404c4 (LHCombined Release)
	static bool32_t g_b_use_565;
	// BW1W120 00edd470 BW1M119 013404c0 (LHCombined Release)
	static int g_b_use_low_res;
	// BW1W120 00edd460 BW1M119 013404d0 (LHCombined Release)
	static LH3DTexture* g_first;
	// BW1W120 00edd45c BW1M119 013404d4 (LHCombined Release)
	static int g_count;
	// BW1W120 00edd458 BW1M119 013404d8 (LHCombined Release)
	static bool32_t g_b_open;
	// BW1W120 00edd464 BW1M119 013404cc (LHCombined Release)
	static int g_count_pack;
	// BW1W120 00edd468 BW1M119 013404c8 (LHCombined Release)
	static LH3DTexture** g_pack;
	// BW1W120 00edd474 BW1M119 013404bc (LHCombined Release)
	static IDirectDrawSurface7* g_surface_for_load_4444;
	// BW1W120 00edd478 BW1M119 013404b8 (LHCombined Release)
	static IDirectDrawSurface7* g_surface_for_load_555;

	LH3DSRAMTex*         SRAMTex;
	LH3DVRAMTex*         VRAMTex;
	uint32_t             LastUsedTime;
	LH3DTexture*         next;
	uint32_t             Flags;
	TextureFormat        format;
	uint32_t             id;
	char                 Name[0x100];
	int                  PackIndex;
	LH3DCT*              CT;
	IDirectDrawSurface7* Surface;
	bool32_t             WasLocked;
	uint8_t*             MaskCollide;
	bool32_t             Locked;
	bool32_t(__fastcall* ProcessFunc)(uint16_t* dest, unsigned long pitch, void* data); /* 0x134 */
	bool32_t ReloadPending;
	bool32_t AllocVRAM;

	// Static methods

	// BW1W120 008378c0 BW1M119 010c9ac0 (LHCombined Release)
	static bool32_t Open();
	// BW1W120 00837930 BW1M119 010c9990 (LHCombined Release)
	static bool32_t Close();
	// BW1W120 008379e0 BW1M119 010c9310 (LHCombined Release)
	static LH3DTexture* Create(void* source, unsigned long flags, unsigned long id, TextureFormat* format);
	// BW1W120 00837400 BW1M119 010c9d00 (LHCombined Release)
	static void LoadFromHD(LH3DSurfDesc* desc, char* name, unsigned long format_type, int alpha);
	// BW1W120 008377e0 BW1M119 inlined
	static void SetPackedTexture();
	// BW1W120 00837cf0 BW1M119 010c9940 (LHCombined Release)
	static bool32_t __fastcall ProcessTextureNULL(uint16_t* dest, unsigned long pitch, void* data);
	// BW1W120 00837d00 BW1M119 010c9280 (LHCombined Release)
	static void ReleaseAll();
	// BW1W120 00838480 BW1M119 010c8ce0 (LHCombined Release)
	static LH3DTexture* GetThisTexture(unsigned long id);
	// BW1W120 008384d0 BW1M119 010c8c40 (LHCombined Release)
	static LH3DTexture* __fastcall RequestPartialTexture(unsigned long x, unsigned long y, float* u, float* v);
#ifndef VERSION_BW1W100
	// BW1W120 00838660 BW1M119 null
	static void __fastcall SavePack(void* textures, const char* filename);
#endif
	// BW1W120 008396a0 BW1M119 010c7790 (LHCombined Release)
	static void CreateBufferSurcfaces();
	// BW1W120 008397f0 BW1M119 010c7660 (LHCombined Release)
	static void ReleaseBufferSurfaces();

	// Non-virtual methods

	// BW1W120 00837d40 BW1M119 010c9130 (LHCombined Release)
	void Release();
	// BW1W120 00837df0 BW1M119 0102df60 (LHCombined Release)
	void Activate(int stage);
	// BW1W120 00838430 BW1M119 010c8e30 (LHCombined Release)
	void YouLostYourVRAM();
	// BW1W120 00838450 BW1M119 010c8dc0 (LHCombined Release)
	void YouLostYourSRAM();
	// BW1W120 00838580 BW1M119 010c89f0 (LHCombined Release)
	void RequestAndUpdateCT();
	// BW1W120 00838a70 BW1M119 010003e0 (LHCombined Release)
	bool32_t IsCollide(float u, float v);
	// BW1W120 00838f00 BW1M119 010004d0 (LHCombined Release)
	uint8_t* GetMaskCollide();
	// BW1W120 00838af0 BW1M119 01034850 (LHCombined Release)
	bool32_t Lock(LH3DSurfDesc* desc);
	// BW1W120 00838eb0 BW1M119 01034db0 (LHCombined Release)
	void Unlock();
	// BW1W120 00839010 BW1M119 01034800 (LHCombined Release)
	LH3DSRAMTex* GetSRamTex();
	// BW1W120 00839020 BW1M119 010c8480 (LHCombined Release)
	void Compress();
	// BW1W120 00839190 BW1M119 010c79e0 (LHCombined Release)
	void DrawPlayerSymbol(uint8_t* mask, LH3DColor* color, float x, float y, float size);
	// BW1W120 inlined BW1M119 010107b0 (LHCombined Release)
	uint32_t GetType() { return Flags & LH3D_TEXTURE_FLAGS_TYPE_MASK; }
	// BW1W120 inlined BW1M119 010b61e0 (LHCombined Release)
	TextureFormat GetFormat() { return format; }
	// BW1W120 inlined BW1M119 inlined
	uint32_t GetId() { return id; }
};
static_assert(sizeof(LH3DTexture) == 0x140, "Data type is of wrong size");

// Set by LHScreen for the 3dfx Voodoo2 and Banshee, which only draw one texture at a time.
// BW1W120 00edd450 BW1M119 013404e0 (LHCombined Release)
extern bool32_t g_b_voodoo2;
// BW1W120 00edd44c BW1M119 013404e4 (LHCombined Release)
extern bool32_t g_b_banshee;
// BW1W120 00edd3e0 BW1M119 013404e8 (LHCombined Release)
extern LHReleasedFile g_cached_tex_file;
// BW1W120 00e9cd94 BW1M119 01200484 (LHCombined Release)
extern bool32_t g_b_dont_do_d3d_activated_texture;

// BW1W120 00871170 BW1M119 010b4fb0 (LHCombined Release)
HRESULT GLock(IDirectDrawSurface7* surface, RECT* rect, DDSURFACEDESC2* desc, unsigned long flags, HANDLE event);

// BW1W120 00837300 BW1M119 010ca150 (LHCombined Release)
bool32_t IsRawFile(char* name);

#endif /* BW1_DECOMP_LH3D_TEXTURE_INCLUDED_H */
