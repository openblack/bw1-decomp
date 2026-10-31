#include "LH3DTexture.h"

#include <ddraw.h>  /* For DDSURFACEDESC2, DDSD_*, DDSCAPS_*, DDLOCK_*, DDBLT_WAIT */
#include <stdio.h>  /* For sprintf */
#include <stdlib.h> /* For malloc, free */
#include <string.h> /* For memset, memcpy, strcpy, strcat, strlen */

#include "LH3DColor.h"   /* For struct LH3DColor */
#include "LH3DCT.h"      /* For struct LH3DCT */
#include "LH3DMem.h"     /* For struct LH3DMem */
#include "LH3DRender.h"  /* For struct LH3DRender */
#include "LH3DTech.h"    /* For struct LH3DTech, Report3D */
#include "LH3DVRAMTex.h" /* For struct LH3DVRAMTex */

#include <Lionhead/LHFile/ver3.0/LHOSFile.h>       /* For LHFileLength, LHLoadData */
#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h> /* For class LHReleasedFile */
#include <Lionhead/LHLib/ver5.0/LHScreen.h>        /* For LHSetFPUExceptions */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>        /* For struct LHSys */
#include <Lionhead/LHLib/ver5.0/LHTimer.h>         /* For struct LHTimer */

#define LH3D_RAW_TEXTURE_SIZE             256
#define LH3D_RAW_TEXTURE_BYTES            (LH3D_RAW_TEXTURE_SIZE * LH3D_RAW_TEXTURE_SIZE * 3)
#define LH3D_RAW_TEXTURE_ALPHA_BYTES      (LH3D_RAW_TEXTURE_SIZE * LH3D_RAW_TEXTURE_SIZE)
#define LH3D_RAW_TEXTURE_ALPHA_SUFFIX     "a.raw"
#define LH3D_RAW_TEXTURE_EXTENSION_LENGTH 4
#define LH3D_TEXTURE_CACHED_SRAM_COUNT    10
#define LH3D_TEXTURE_NAME_UNDEFINED       "UNDEF"
#define LH3D_TEXTURE_CACHE_PATH           "Data\\AllMeshes.g3d"
#define LH3D_TEXTURE_INFO_SEGMENT         "INFO"
#define LH3D_TEXTURE_SURFACE_LOCK         (DDLOCK_WAIT | DDLOCK_WRITEONLY | DDLOCK_NOSYSLOCK)
#define LH3D_TEXTURE_SURFACE_LOCK_READ    (DDLOCK_WAIT | DDLOCK_NOSYSLOCK)
#define LH3D_TEXTURE_SYSTEM_DESC_FLAGS    (DDSD_CAPS | DDSD_HEIGHT | DDSD_WIDTH | DDSD_PIXELFORMAT)
#define LH3D_TEXTURE_SYSTEM_CAPS          (DDSCAPS_TEXTURE | DDSCAPS_SYSTEMMEMORY)
#define LH3D_TEXTURE_BUFFER_CAPS                                                                                       \
	(DDSCAPS_NONLOCALVIDMEM | DDSCAPS_MIPMAP | DDSCAPS_VIDEOMEMORY | DDSCAPS_TEXTURE | DDSCAPS_COMPLEX)
#define LH3D_TEXTURE_BUFFER_SYSTEM_CAPS      (DDSCAPS_MIPMAP | DDSCAPS_TEXTURE | DDSCAPS_SYSTEMMEMORY | DDSCAPS_COMPLEX)
#define LH3D_TEXTURE_MASK_SIZE               64
#define LH3D_TEXTURE_SMALL_SIZE              32
#define LH3D_TEXTURE_LOW_RES_SIZE            128
#define LH3D_TEXTURE_PIXEL_FORMAT_4444       0
#define LH3D_TEXTURE_PIXEL_FORMAT_555        1
#define LH3D_TEXTURE_ACTIVE_DELAY            2000
#define LH3D_TEXTURE_PACK_HEADER_SIZE        0x1004
#define LH3D_TEXTURE_PACK_ENTRY_UNCOMPRESSED 1
#define LH3D_TEXTURE_SYMBOL_SIZE             64
#define LH3D_TEXTURE_SYMBOL_LEVEL_0_MIN      48
#define LH3D_TEXTURE_SYMBOL_LEVEL_1_MIN      24
#define LH3D_TEXTURE_SYMBOL_LEVEL_2_MIN      12
#define LH3D_TEXTURE_SYMBOL_LEVEL_3_MIN      6
#define LH3D_TATTOO_ROTATE_90                1
#define LH3D_TATTOO_ROTATE_180               2
#define LH3D_TATTOO_ROTATE_270               3
#define LH3D_TEXTURE_SYMBOL_LEVEL_MAX        4
#define LH3D_TEXTURE_BLEND_MAX               LH3D_PIXEL_4444_LEVEL_MAX
#define LH3D_TEXTURE_PIXEL_BYTES             2
#define LH3D_TEXTURE_CT_HEADER_SIZE          0xc
#define LH3D_TEXTURE_CT_HEADER_LONGS         3
#define LH3D_TEXTURE_PACK_INFO_LONGS         2
#define LH3D_TEXTURE_MIP_LEVELS_LOW_RES      4
#define LH3D_TEXTURE_MIP_LEVELS              8
#define LH3D_TEXTURE_SMALL_MIP_LEVELS        4
#define LH3D_TEXTURE_FPU_EXCEPTIONS_ALL      ((unsigned int)-1)
#define LH3D_RAW_PIXEL_BYTES                 3
#define LH3D_RAW_LOW_RES_STEP                (LH3D_RAW_PIXEL_BYTES * 2)
#define LH3D_RAW_ALPHA_LOW_RES_STEP          2

#define LH3D_PIXEL_4444_BLUE               0x000f
#define LH3D_PIXEL_4444_GREEN              0x00f0
#define LH3D_PIXEL_4444_RED                0x0f00
#define LH3D_PIXEL_4444_ALPHA_BITS         0xf000
#define LH3D_PIXEL_4444_LEVEL_MAX          0xf
#define LH3D_PIXEL_4444(red, green, blue)  (((blue) >> 4) + ((green) & 0xfff0) + (((red) & 0xff0) << 4))
#define LH3D_PIXEL_4444_ALPHA(alpha)       (((alpha) & 0xf0) << 8)
#define LH3D_PIXEL_565(red, green, blue)   (((((green) & 0x1ff8) + (((red) & 0xf8) << 5)) << 3) + ((blue) >> 3))
#define LH3D_PIXEL_555(red, green, blue)   (((((green) & 0x3ff8) + (((red) & 0x1f8) << 5)) << 2) + ((blue) >> 3))
#define LH3D_PIXEL_555_TO_565(pixel)       ((((pixel) & 0xffe0) << 1) | ((pixel) & 0x1f))
#define LH3D_PIXEL_4444_ALPHA_LEVEL(pixel) ((pixel) >> 12)
#define LH3D_PIXEL_4444_MASK(pixel)        (((pixel) >> 8) & 0xf0)

#ifndef VERSION_BW1W100
struct TexturePackEntry
{
	uint16_t Pixels[LH3D_RAW_TEXTURE_SIZE * LH3D_RAW_TEXTURE_SIZE]; /* 0x0 */
	uint8_t  field_0x20000[8];
	uint8_t  Flags; /* 0x20008 */
	uint8_t  field_0x20009[7];
	uint32_t Id; /* 0x20010 */
	uint8_t  field_0x20014[0x2c];
};
static_assert(sizeof(TexturePackEntry) == 0x20040, "Data type is of wrong size");

struct TexturePack
{
	long             Count; /* 0x0 */
	uint8_t          field_0x4[0x34];
	TexturePackEntry Entries[1]; /* 0x38 */

	long GetCount() { return Count; }
};
#endif

long                 g_rotate_tattoo;
long                 g_flip_tattoo;
long                 g_unused_tattoo;
IDirectDrawSurface7* g_surface_for_load_256x2568888;
IDirectDrawSurface7* g_surface_for_load_32x324444;
IDirectDrawSurface7* g_surface_for_load_ALWAYS_256x256_4444;
IDirectDrawSurface7* LH3DTexture::g_surface_for_load_555;
IDirectDrawSurface7* LH3DTexture::g_surface_for_load_4444;
int                  LH3DTexture::g_b_use_low_res;
bool32_t             LH3DTexture::g_b_use_565;
LH3DTexture**        LH3DTexture::g_pack;
int                  LH3DTexture::g_count_pack;
LH3DTexture*         LH3DTexture::g_first;
int                  LH3DTexture::g_count;
bool32_t             LH3DTexture::g_b_open;
int                  count_load_in_vram;
bool32_t             g_b_voodoo2;
#ifndef VERSION_BW1W100
bool32_t g_b_banshee;
#endif
LHReleasedFile g_cached_tex_file(LH3D_TEXTURE_CACHE_PATH);

bool32_t IsRawFile(char* name)
{
	uint32_t length;
	LHFileLength(name, &length);
	return length == LH3D_RAW_TEXTURE_BYTES;
}

void LH3DTexture::LoadFromHD(LH3DSurfDesc* desc, char* name, unsigned long format_type, int alpha)
{
	if (!IsRawFile(name) || desc->Surface == NULL)
	{
		return;
	}
	static uint8_t* buffer = (uint8_t*)LH3DMem::AllocClear(LH3D_RAW_TEXTURE_BYTES);
	uint32_t        read;
	if (LHLoadData(name, buffer, LH3D_RAW_TEXTURE_BYTES, &read))
	{
		char message[0x800];
		sprintf(message, "can't Load: %s.", name);
	}
	uint16_t* pixels = (uint16_t*)desc->Surface;
	int       step = LH3D_RAW_PIXEL_BYTES;
	int       row_step = 0;
	if (g_b_use_low_res && format_type != LH3D_TEXTURE_FORMAT_ALWAYS_256X256_4444)
	{
		step = LH3D_RAW_LOW_RES_STEP;
		row_step = LH3D_RAW_TEXTURE_SIZE * LH3D_RAW_PIXEL_BYTES;
	}
	int source = 0;
	int y;
	int x;
	if (alpha)
	{
		for (y = 0; y < desc->Height; y++)
		{
			for (x = 0; x < desc->Width; x++)
			{
				uint16_t pixel = LH3D_PIXEL_4444(buffer[source], buffer[source + 1], buffer[source + 2]);
				pixels[desc->Pitch * y / LH3D_TEXTURE_PIXEL_BYTES + x] = pixel;
				source += step;
			}
			source += row_step;
		}
		char alpha_name[0x800] = "";
		strcat(alpha_name, name);
		alpha_name[strlen(name) - LH3D_RAW_TEXTURE_EXTENSION_LENGTH] = '\0';
		strcat(alpha_name, LH3D_RAW_TEXTURE_ALPHA_SUFFIX);
		if (LHLoadData(alpha_name, buffer, LH3D_RAW_TEXTURE_ALPHA_BYTES, &read))
		{
			Report3D__FPCce("Can't load %s\n", alpha_name);
		}
		step = 1;
		row_step = 0;
		if (g_b_use_low_res && format_type != LH3D_TEXTURE_FORMAT_ALWAYS_256X256_4444)
		{
			step = LH3D_RAW_ALPHA_LOW_RES_STEP;
			row_step = LH3D_RAW_TEXTURE_SIZE;
		}
		source = 0;
		for (y = 0; y < desc->Height; y++)
		{
			for (x = 0; x < desc->Width; x++)
			{
				pixels[desc->Pitch * y / LH3D_TEXTURE_PIXEL_BYTES + x] |= LH3D_PIXEL_4444_ALPHA(buffer[source]);
				source += step;
			}
			source += row_step;
		}
	}
	else if (g_b_use_565)
	{
		for (y = 0; y < desc->Height; y++)
		{
			for (x = 0; x < desc->Width; x++)
			{
				pixels[desc->Pitch * y / LH3D_TEXTURE_PIXEL_BYTES + x] =
					LH3D_PIXEL_565(buffer[source], buffer[source + 1], buffer[source + 2]);
				source += step;
			}
			source += row_step;
		}
	}
	else
	{
		for (y = 0; y < desc->Height; y++)
		{
			for (x = 0; x < desc->Width; x++)
			{
				pixels[desc->Pitch * y / LH3D_TEXTURE_PIXEL_BYTES + x] =
					LH3D_PIXEL_555(buffer[source], buffer[source + 1], buffer[source + 2]);
				source += step;
			}
			source += row_step;
		}
	}
}

LH3DSRAMTex* g_list_cached_sram[LH3D_TEXTURE_CACHED_SRAM_COUNT];

void LH3DTexture::SetPackedTexture()
{
	LHSegment segment;
	if (g_cached_tex_file.GetSegment(LH3D_TEXTURE_INFO_SEGMENT, &segment, true) != LH_FILE_RESULT_NOT_FOUND)
	{
		TextureFormat format;
		format.Type = LH3D_TEXTURE_FORMAT_555;
		long* data = (long*)segment.buffer;
		g_count_pack = *data;
		long* entry = data + 1;
		g_pack = (LH3DTexture**)LH3DMem::AllocClear(g_count_pack * sizeof(LH3DTexture*));
		for (int i = 0; i < g_count_pack; i++, entry += LH3D_TEXTURE_PACK_INFO_LONGS)
		{
			g_pack[i] = Create(NULL, LH3D_TEXTURE_TYPE_PACKED, entry[0],
			                   entry[1] == LH3D_TEXTURE_PACK_TYPE_RAW ? &format : NULL);
		}
	}
}

bool32_t LH3DTexture::Open()
{
	if (g_b_open)
	{
		Report3D__FPCce("LH3DTexture::Open already open.\n");
		return false;
	}
	g_b_open = true;
	g_count = 0;
	g_first = NULL;
	g_count_pack = 0;
	g_pack = NULL;
	bool32_t result = LH3DSRAMTex::Open();
	if (!result)
	{
		Close();
		return result;
	}
	result = LH3DVRAMTex::Open();
	if (!result)
	{
		Close();
		return result;
	}
	CreateBufferSurcfaces();
	return true;
}

bool32_t LH3DTexture::Close()
{
	if (!g_b_open)
	{
		Report3D__FPCce("RV: LH3DTexture::Close without open.\n");
		return false;
	}
	if (g_pack != NULL)
	{
		for (int i = 0; i < g_count_pack; i++)
		{
			g_pack[i]->Release();
		}
		LH3DMem::Free(g_pack);
		g_pack = NULL;
		g_count_pack = 0;
	}
	if (g_count != 0 || g_first != NULL)
	{
		Report3D__FPCce("RV: LH3DTexture Close: bad release\n");
		ReleaseAll();
	}
	LH3DSRAMTex::Close();
	LH3DVRAMTex::Close();
	ReleaseBufferSurfaces();
	return true;
}

LH3DTexture* LH3DTexture::Create(void* source, unsigned long flags, unsigned long id, TextureFormat* format)
{
	TextureFormat defaultFormat;
	defaultFormat.Type = LH3D_TEXTURE_FORMAT_4444;
	LH3DTexture* texture = (LH3DTexture*)LH3DMem::AllocClear(sizeof(LH3DTexture));
	if (format == NULL)
	{
		format = &defaultFormat;
	}
	texture->SRAMTex = NULL;
	texture->VRAMTex = NULL;
	texture->MaskCollide = NULL;
	texture->Locked = false;
	texture->next = g_first;
	texture->id = id;
	strcpy(texture->Name, LH3D_TEXTURE_NAME_UNDEFINED);
	texture->AllocVRAM = flags & LH3D_TEXTURE_FLAGS_ALLOC_VRAM;
	texture->LastUsedTime = 0;
	texture->Flags = flags;
	texture->ReloadPending = false;
	texture->ProcessFunc = ProcessTextureNULL;
	texture->format = *format;
	texture->PackIndex = -1;
	switch (flags & LH3D_TEXTURE_FLAGS_TYPE_MASK)
	{
	case LH3D_TEXTURE_TYPE_FILE:
	case LH3D_TEXTURE_TYPE_CT_FILE:
		strcpy(texture->Name, (char*)source);
		break;
	case LH3D_TEXTURE_TYPE_PACKED:
		texture->PackIndex = id;
		break;
	case LH3D_TEXTURE_TYPE_SYSTEM_MEMORY:
		texture->SRAMTex = LH3DSRAMTex::Create(texture);
		if (source != NULL)
		{
			LH3DSRAMTex* sram = texture->GetSRamTex();
			if (sram->Format.GetWidth() == LH3D_RAW_TEXTURE_SIZE)
			{
				memcpy(texture->GetSRamTex()->GetSoftSurface(), source,
				       texture->format.GetHeight() * texture->format.GetWidth() * LH3D_TEXTURE_PIXEL_BYTES);
			}
			else
			{
				texture->GetSRamTex()->CopyInto((uint16_t*)source, LH3D_RAW_TEXTURE_SIZE, LH3D_RAW_TEXTURE_SIZE);
			}
		}
		else
		{
			memset(texture->GetSRamTex()->GetSoftSurface(), 0,
			       texture->format.GetHeight() * texture->format.GetWidth() * LH3D_TEXTURE_PIXEL_BYTES);
		}
		if (texture->format.Type == LH3D_TEXTURE_FORMAT_555 && g_b_use_565)
		{
			uint16_t* surface = texture->GetSRamTex()->GetSoftSurface();
			for (unsigned y = 0; y < texture->format.GetHeight(); y++)
			{
				for (unsigned x = 0; x < texture->format.GetWidth(); x++)
				{
					int      index = texture->format.GetWidth() * y + x;
					uint16_t pixel = surface[index];
					surface[index] = LH3D_PIXEL_555_TO_565(pixel);
				}
			}
		}
		break;
	case LH3D_TEXTURE_TYPE_NAMED:
		if (source != NULL)
		{
			strcpy(texture->Name, (char*)source);
		}
		texture->ReloadPending = true;
		break;
	}
	g_first = texture;
	g_count++;
	if (texture->AllocVRAM)
	{
		texture->VRAMTex = LH3DVRAMTex::GetElderOrFree(*format, true);
		if (texture->VRAMTex != NULL)
		{
			if (texture->VRAMTex->Texture != NULL)
			{
				texture->VRAMTex->Texture->YouLostYourVRAM();
			}
			if (texture->VRAMTex->Alloc)
			{
				texture->VRAMTex->Loaded = false;
			}
			texture->VRAMTex->Texture = texture;
		}
	}
	return texture;
}

bool32_t __fastcall LH3DTexture::ProcessTextureNULL(uint16_t* dest, unsigned long pitch, void* data)
{
	return true;
}

void LH3DTexture::ReleaseAll()
{
	Report3D__FPCce("LH3DTexture RELEASE ALL: %d bad thing...\n", g_count);
	while (g_first != NULL)
	{
		g_first->Release();
	}
	g_first = NULL;
}

void LH3DTexture::Release()
{
	if (SRAMTex != NULL)
	{
		SRAMTex->Texture = NULL;
		SRAMTex->Release();
		SRAMTex = NULL;
	}
	if (VRAMTex != NULL)
	{
		VRAMTex->Texture = NULL;
		VRAMTex = NULL;
	}
	if (MaskCollide != NULL)
	{
		LH3DMem::Free(MaskCollide);
		MaskCollide = NULL;
	}
	if (CT != NULL)
	{
		CT->Release();
		CT = NULL;
	}
	if (Surface != NULL)
	{
		Surface->Release();
		Surface = NULL;
	}
	LH3DTexture* previous = NULL;
	LH3DTexture* current = g_first;
	while (current != this)
	{
		previous = current;
		current = current->next;
	}
	if (previous != NULL)
	{
		previous->next = next;
	}
	else
	{
		g_first = next;
	}
	g_count--;
	next = NULL;
	LH3DMem::Free(this);
}

void LH3DTexture::Activate(int stage)
{
	IDirectDrawSurface7* load_surface = NULL;
	bool32_t             loaded = false;
	switch (format.Type)
	{
	case LH3D_TEXTURE_FORMAT_4444:
		load_surface = g_surface_for_load_4444;
		break;
	case LH3D_TEXTURE_FORMAT_555:
		load_surface = g_surface_for_load_555;
		break;
	case LH3D_TEXTURE_FORMAT_32X32_4444:
		load_surface = g_surface_for_load_32x324444;
		break;
	case LH3D_TEXTURE_FORMAT_ALWAYS_256X256_4444:
		load_surface = g_surface_for_load_ALWAYS_256x256_4444;
		break;
	case LH3D_TEXTURE_FORMAT_256X256_8888:
		load_surface = g_surface_for_load_256x2568888;
		break;
	}
	switch (GetType())
	{
	case LH3D_TEXTURE_TYPE_CT:
		if (VRAMTex != NULL)
		{
			break;
		}
		if (CT == NULL)
		{
			return;
		}
		VRAMTex = LH3DVRAMTex::AssignTexture(this, false);
		if (g_b_voodoo2)
		{
			if (VRAMTex != NULL)
			{
				g_surface_for_load_4444->Blt(NULL, CT->Surface, NULL, DDBLT_WAIT, NULL);
				VRAMTex->Surface->Blt(NULL, g_surface_for_load_4444, NULL, DDBLT_WAIT, NULL);
			}
		}
		else
		{
			if (VRAMTex != NULL)
			{
				VRAMTex->Surface->Blt(NULL, CT->Surface, NULL, DDBLT_WAIT, NULL);
			}
		}
		break;
	case LH3D_TEXTURE_TYPE_SYSTEM_MEMORY:
		if (SRAMTex == NULL)
		{
			return;
		}
		if (VRAMTex == NULL || ReloadPending)
		{
			loaded = true;
			SRAMTex->Copy(load_surface);
		}
		break;
	case LH3D_TEXTURE_TYPE_NAMED:
		if (ReloadPending)
		{
			DDSURFACEDESC2 desc;
			loaded = true;
			memset(&desc, 0, sizeof(desc));
			desc.dwSize = sizeof(desc);
			load_surface->Lock(NULL, &desc, LH3D_TEXTURE_SURFACE_LOCK, NULL);
			bool32_t processed;
			if (desc.lpSurface != NULL)
			{
				processed =
					ProcessFunc((uint16_t*)desc.lpSurface, desc.lPitch / LH3D_TEXTURE_PIXEL_BYTES, (void*)GetId());
			}
			else
			{
				loaded = false;
			}
			load_surface->Unlock(NULL);
			if (!processed)
			{
				if (VRAMTex != NULL)
				{
					LH3DRender::SetTexture(VRAMTex->Surface, stage);
				}
				else
				{
					LH3DRender::SetTexture(NULL, stage);
				}
				ReloadPending = !loaded;
				return;
			}
			loaded = true;
		}
		else if (VRAMTex == NULL)
		{
			return;
		}
		break;
	case LH3D_TEXTURE_TYPE_FILE:
		if (VRAMTex != NULL)
		{
			break;
		}
		loaded = true;
		if (SRAMTex == NULL)
		{
			uint32_t length = 0;
			LHFileLength(Name, &length);
			if (length != 0)
			{
				if (IsRawFile(Name))
				{
					DDSURFACEDESC2 desc;
					memset(&desc, 0, sizeof(desc));
					desc.dwSize = sizeof(desc);
					GLock(load_surface, NULL, &desc, LH3D_TEXTURE_SURFACE_LOCK, NULL);
					if (desc.lpSurface != NULL)
					{
						LH3DSurfDesc surfaceDesc;
						surfaceDesc.Set(&desc);
						LoadFromHD(&surfaceDesc, Name, GetFormat().Type, Flags & LH3D_TEXTURE_FLAGS_ALPHA);
					}
					load_surface->Unlock(NULL);
				}
				else
				{
					LH3DCT* ct = LH3DCT::CreateFromDisk(Name);
					if (ct != NULL)
					{
						if (load_surface != NULL)
						{
							if (load_surface->Blt(NULL, ct->Surface, NULL, DDBLT_WAIT, NULL))
							{
								Report3D__FPCce("Uncompress Blt failed\n");
							}
						}
						ct->Release();
					}
				}
			}
			else
			{
				DDSURFACEDESC2 desc;
				memset(&desc, 0, sizeof(desc));
				desc.dwSize = sizeof(desc);
				GLock(load_surface, NULL, &desc, LH3D_TEXTURE_SURFACE_LOCK, NULL);
				uint16_t* pixels = (uint16_t*)desc.lpSurface;
				if (pixels != NULL)
				{
					for (unsigned y = 0; y < desc.dwHeight; y++)
					{
						for (unsigned x = 0; x < desc.dwWidth; x++)
						{
							pixels[(desc.lPitch * y / LH3D_TEXTURE_PIXEL_BYTES) + x] = 0;
						}
					}
				}
				load_surface->Unlock(NULL);
			}
		}
		else
		{
			SRAMTex->Copy(load_surface);
		}
		break;
	case LH3D_TEXTURE_TYPE_CT_FILE:
		if (VRAMTex != NULL)
		{
			break;
		}
		if (CT == NULL)
		{
			CT = LH3DCT::CreateFromDisk(Name);
		}
		VRAMTex = LH3DVRAMTex::AssignTexture(this, false);
		if (g_b_voodoo2)
		{
			if (VRAMTex != NULL)
			{
				g_surface_for_load_4444->Blt(NULL, CT->Surface, NULL, DDBLT_WAIT, NULL);
				VRAMTex->Surface->Blt(NULL, g_surface_for_load_4444, NULL, DDBLT_WAIT, NULL);
			}
		}
		else
		{
			if (VRAMTex != NULL)
			{
				VRAMTex->Surface->Blt(NULL, CT->Surface, NULL, DDBLT_WAIT, NULL);
			}
		}
		break;
	case LH3D_TEXTURE_TYPE_PACKED:
		if (VRAMTex != NULL)
		{
			break;
		}
		if (CT == NULL)
		{
			Report3D__FPCce("TEXTURE: %d\n", PackIndex);
			RequestAndUpdateCT();
		}
		VRAMTex = LH3DVRAMTex::AssignTexture(this, false);
		if (g_b_voodoo2)
		{
			if (VRAMTex != NULL)
			{
				g_surface_for_load_4444->Blt(NULL, CT->Surface, NULL, DDBLT_WAIT, NULL);
				VRAMTex->Surface->Blt(NULL, g_surface_for_load_4444, NULL, DDBLT_WAIT, NULL);
			}
		}
		else
		{
			if (VRAMTex != NULL)
			{
				VRAMTex->Surface->Blt(NULL, CT->Surface, NULL, DDBLT_WAIT, NULL);
			}
		}
		break;
	}
	if (g_b_dont_do_d3d_activated_texture)
	{
		return;
	}
	if (VRAMTex == NULL)
	{
		VRAMTex = LH3DVRAMTex::AssignTexture(this, false);
		if (VRAMTex == NULL)
		{
			LH3DRender::SetTexture(NULL, stage);
			return;
		}
		loaded = true;
	}
	if (loaded)
	{
		if (VRAMTex != NULL)
		{
			VRAMTex->LoadInVRAM(load_surface);
		}
		count_load_in_vram++;
	}
	LastUsedTime =
		(unsigned long)((float)(GetTickCount() - LH3DTech::g_timer.TickCount) * LH3DTech::g_timer.SpeedUpFactor +
	                    (float)(uint32_t)LH3DTech::g_timer.ElapsedTime);
	if (GetType() == LH3D_TEXTURE_TYPE_NAMED)
	{
		LastUsedTime += LH3D_TEXTURE_ACTIVE_DELAY;
	}
	if (VRAMTex != NULL)
	{
		LH3DRender::SetTexture(VRAMTex->Surface, stage);
		VRAMTex->ActivateCount++;
	}
	else
	{
		LH3DRender::SetTexture(NULL, stage);
	}
	if (VRAMTex == NULL)
	{
		ReloadPending = true;
	}
	else
	{
		ReloadPending = false;
	}
}

void LH3DTexture::YouLostYourVRAM()
{
	VRAMTex = NULL;
	if (GetType() == LH3D_TEXTURE_TYPE_NAMED)
	{
		ReloadPending = true;
	}
}

void LH3DTexture::YouLostYourSRAM()
{
	if (GetType() == LH3D_TEXTURE_TYPE_NAMED && VRAMTex == NULL)
	{
		ReloadPending = true;
	}
	SRAMTex = NULL;
}

LH3DTexture* LH3DTexture::GetThisTexture(unsigned long id)
{
	LH3DTexture* texture = g_first;
	LH3DTexture* current = g_first;
	while (current != NULL)
	{
		if (current->id == id)
		{
			texture = current;
			break;
		}
		current = current->next;
		if (current == NULL)
		{
			break;
		}
	}
	if (texture != NULL)
	{
		if (texture->id != id)
		{
			Report3D__FPCce("#### GetThisTexture: can't found this texture %x bad id\n", id);
		}
		return texture;
	}
	Report3D__FPCce("#### GetThisTexture: can't found this texture %x\n", id);
	return g_first;
}

LH3DTexture* __fastcall LH3DTexture::RequestPartialTexture(unsigned long x, unsigned long y, float* u, float* v)
{
	LH3DTexture* texture = Create(NULL, LH3D_TEXTURE_TYPE_SYSTEM_MEMORY, 0, NULL);
	*u = 0.0f;
	*v = 0.0f;
	return texture;
}

int TextureFormat::GetWidth()
{
	if (Type == LH3D_TEXTURE_FORMAT_32X32_4444)
	{
		return LH3D_TEXTURE_SMALL_SIZE;
	}
	if (Type == LH3D_TEXTURE_FORMAT_ALWAYS_256X256_4444)
	{
		return LH3D_RAW_TEXTURE_SIZE;
	}
	return LH3DTexture::g_b_use_low_res ? LH3D_TEXTURE_LOW_RES_SIZE : LH3D_RAW_TEXTURE_SIZE;
}

int TextureFormat::GetHeight()
{
	if (Type == LH3D_TEXTURE_FORMAT_32X32_4444)
	{
		return LH3D_TEXTURE_SMALL_SIZE;
	}
	if (Type == LH3D_TEXTURE_FORMAT_ALWAYS_256X256_4444)
	{
		return LH3D_RAW_TEXTURE_SIZE;
	}
	return LH3DTexture::g_b_use_low_res ? LH3D_TEXTURE_LOW_RES_SIZE : LH3D_RAW_TEXTURE_SIZE;
}

int TextureFormat::GetMaxMipMapLevel()
{
	if (Type == LH3D_TEXTURE_FORMAT_32X32_4444)
	{
		return LH3D_TEXTURE_SMALL_MIP_LEVELS;
	}
	return LH3DTexture::g_b_use_low_res ? LH3D_TEXTURE_MIP_LEVELS_LOW_RES : LH3D_TEXTURE_MIP_LEVELS;
}

void LH3DTexture::RequestAndUpdateCT()
{
	if (GetType() == LH3D_TEXTURE_TYPE_PACKED && CT == NULL)
	{
		char      message[0x100];
		LHSegment segment;
		char      name[0x20];
		if (g_b_use_low_res)
		{
			sprintf(name, "LOW%x", id);
		}
		else
		{
			sprintf(name, "%x", id);
		}
		if (g_cached_tex_file.GetSegment(name, &segment, true) == LH_FILE_RESULT_NOT_FOUND)
		{
			sprintf(message, "Cannot load segment %s", name);
#ifdef VERSION_BW1WCI
			sprintf(name, "%x", id);
			g_cached_tex_file.GetSegment(name, &segment, true);
#else
			return;
#endif
		}
		LH3DCT::DataOnDisk* data = (LH3DCT::DataOnDisk*)(segment.buffer + LH3D_TEXTURE_CT_HEADER_SIZE);
		CT = LH3DCT::Create(data, false);
		g_cached_tex_file.FreeLastSeg();
	}
}

#ifndef VERSION_BW1W100
void __fastcall LH3DTexture::SavePack(void* textures, const char* filename)
{
	TexturePack*   pack = (TexturePack*)textures;
	LHReleasedFile file(filename);
	file.Open(LH_FILE_MODE_READ_WRITE);
	LHSegment segment;
	char      name[0x20];
	long*     header = (long*)malloc(LH3D_TEXTURE_PACK_HEADER_SIZE);
	header[0] = pack->Count;
	long* infos = header + 1;
	int   i;
	for (i = 0; i < pack->GetCount(); i++)
	{
		TexturePackEntry* entry = &pack->Entries[i];
		bool32_t          alpha = false;
		long              type = LH3D_TEXTURE_PACK_TYPE_CT;
		LH3DCT*           ct = NULL;
		long*             data;
		long              size;
		if (entry->Flags & LH3D_TEXTURE_PACK_ENTRY_UNCOMPRESSED)
		{
			size = sizeof(long) * LH3D_TEXTURE_CT_HEADER_LONGS + sizeof(entry->Pixels);
			type = LH3D_TEXTURE_PACK_TYPE_RAW;
			data = (long*)LH3DMem::AllocClear(size);
			long* raw = data + LH3D_TEXTURE_CT_HEADER_LONGS;
			memcpy(raw, entry->Pixels, sizeof(entry->Pixels));
		}
		else
		{
			uint16_t* pixels = pack->Entries[i].Pixels;
			for (int y = 0; y < LH3D_RAW_TEXTURE_SIZE; y++)
			{
				for (int x = 0; x < LH3D_RAW_TEXTURE_SIZE; x++)
				{
					uint32_t level = LH3D_PIXEL_4444_ALPHA_LEVEL(pixels[y * LH3D_RAW_TEXTURE_SIZE + x]);
					if (level != 0 && level != LH3D_PIXEL_4444_LEVEL_MAX)
					{
						alpha = true;
					}
				}
			}
			if (alpha)
			{
				type = LH3D_TEXTURE_PACK_TYPE_CT_ALPHA;
			}
			ct = LH3DCT::Create(NULL, alpha);
			DDSURFACEDESC2 desc;
			memset(&desc, 0, sizeof(desc));
			desc.dwSize = sizeof(desc);
			GLock(LH3DTexture::g_surface_for_load_4444, NULL, &desc, LH3D_TEXTURE_SURFACE_LOCK_READ, NULL);
			long      pitch = desc.lPitch / LH3D_TEXTURE_PIXEL_BYTES;
			uint16_t* dest = (uint16_t*)desc.lpSurface;
			if (dest != NULL)
			{
				for (int y = 0; y < (int)desc.dwHeight; y++)
				{
					for (int x = 0; x < (int)desc.dwWidth; x++)
					{
						dest[y * pitch + x] = pixels[y * LH3D_RAW_TEXTURE_SIZE + x];
					}
				}
			}
			LH3DTexture::g_surface_for_load_4444->Unlock(NULL);
			ct->Surface->Blt(NULL, LH3DTexture::g_surface_for_load_4444, NULL, DDBLT_WAIT, NULL);
			LH3DCT::DataOnDisk* saving = ct->CreateSavingData();
			size = saving->Size + LH3D_TEXTURE_CT_HEADER_SIZE;
			data = (long*)LH3DMem::AllocClear(size);
			memcpy(data + LH3D_TEXTURE_CT_HEADER_LONGS, saving, saving->Size);
			free(saving);
		}
		long* info = &infos[i * LH3D_TEXTURE_PACK_INFO_LONGS];
		data[0] = size;
		data[1] = info[0] = entry->Id;
		data[2] = info[1] = type;
		sprintf(name, "%x", entry->Id);
		strcpy((char*)segment.name, name);
		segment.size = size;
		segment.buffer = (uint8_t*)data;
		file.WriteSegment(&segment);
		LH3DMem::Free(data);
		ct->Release();
	}
#ifdef VERSION_BW1WCI
	g_b_use_low_res = true;
	for (i = 0; i < pack->Count; i++)
	{
		TexturePackEntry* entry = &pack->Entries[i];
		bool32_t          alpha = false;
		long              type = LH3D_TEXTURE_PACK_TYPE_CT;
		LH3DCT*           ct = NULL;
		long*             data;
		long              size;
		if (entry->Flags & LH3D_TEXTURE_PACK_ENTRY_UNCOMPRESSED)
		{
			size = sizeof(long) * LH3D_TEXTURE_CT_HEADER_LONGS + sizeof(entry->Pixels);
			type = LH3D_TEXTURE_PACK_TYPE_RAW;
			data = (long*)LH3DMem::AllocClear(size);
			long* raw = data + LH3D_TEXTURE_CT_HEADER_LONGS;
			memcpy(raw, entry->Pixels, sizeof(entry->Pixels));
		}
		else
		{
			uint16_t* pixels = pack->Entries[i].Pixels;
			for (int y = 0; y < LH3D_RAW_TEXTURE_SIZE; y++)
			{
				for (int x = 0; x < LH3D_RAW_TEXTURE_SIZE; x++)
				{
					uint32_t level = LH3D_PIXEL_4444_ALPHA_LEVEL(pixels[y * LH3D_RAW_TEXTURE_SIZE + x]);
					if (level != 0 && level != LH3D_PIXEL_4444_LEVEL_MAX)
					{
						alpha = true;
					}
				}
			}
			if (alpha)
			{
				type = LH3D_TEXTURE_PACK_TYPE_CT_ALPHA;
			}
			ct = LH3DCT::Create(NULL, alpha);
			DDSURFACEDESC2 desc;
			memset(&desc, 0, sizeof(desc));
			desc.dwSize = sizeof(desc);
			GLock(LH3DTexture::g_surface_for_load_4444, NULL, &desc, LH3D_TEXTURE_SURFACE_LOCK_READ, NULL);
			long      pitch = desc.lPitch / LH3D_TEXTURE_PIXEL_BYTES;
			uint16_t* dest = (uint16_t*)desc.lpSurface;
			if (dest != NULL)
			{
				for (int y = 0; y < (int)desc.dwHeight; y++)
				{
					for (int x = 0; x < (int)desc.dwWidth; x++)
					{
						dest[y * pitch + x] = pixels[y * LH3D_RAW_TEXTURE_SIZE + x];
					}
				}
			}
			LH3DTexture::g_surface_for_load_4444->Unlock(NULL);
			ct->Surface->Blt(NULL, LH3DTexture::g_surface_for_load_4444, NULL, DDBLT_WAIT, NULL);
			LH3DCT::DataOnDisk* saving = ct->CreateSavingData();
			size = saving->Size + LH3D_TEXTURE_CT_HEADER_SIZE;
			data = (long*)LH3DMem::AllocClear(size);
			memcpy(data + LH3D_TEXTURE_CT_HEADER_LONGS, saving, saving->Size);
			free(saving);
		}
		long* info = &infos[i * LH3D_TEXTURE_PACK_INFO_LONGS];
		data[0] = size;
		data[1] = info[0] = entry->Id;
		data[2] = info[1] = type;
		sprintf(name, "LOW%x", entry->Id);
		strcpy((char*)segment.name, name);
		segment.size = size;
		segment.buffer = (uint8_t*)data;
		file.WriteSegment(&segment);
		LH3DMem::Free(data);
		ct->Release();
	}
	g_b_use_low_res = false;
#endif
	strcpy((char*)segment.name, LH3D_TEXTURE_INFO_SEGMENT);
	segment.size = LH3D_TEXTURE_PACK_HEADER_SIZE;
	segment.buffer = (uint8_t*)header;
	file.WriteSegment(&segment);
	free(header);
	file.Close();
}
#endif

bool32_t LH3DTexture::IsCollide(float u, float v)
{
	if (GetType() != LH3D_TEXTURE_TYPE_PACKED)
	{
		return true;
	}
	int x = (int)(u * LH3D_TEXTURE_MASK_SIZE);
	if (x < 0)
	{
		x = 0;
	}
	else if (x > LH3D_TEXTURE_MASK_SIZE - 1)
	{
		x = LH3D_TEXTURE_MASK_SIZE - 1;
	}
	int y = (int)(v * LH3D_TEXTURE_MASK_SIZE);
	if (y < 0)
	{
		y = 0;
	}
	else if (y > LH3D_TEXTURE_MASK_SIZE - 1)
	{
		y = LH3D_TEXTURE_MASK_SIZE - 1;
	}
	return GetMaskCollide()[y * LH3D_TEXTURE_MASK_SIZE + x];
}

bool32_t LH3DTexture::Lock(LH3DSurfDesc* desc)
{
	memset(desc, 0, sizeof(*desc));
	switch (GetType())
	{
	case LH3D_TEXTURE_TYPE_PACKED: {
		LHSetFPUExceptions(LH3D_TEXTURE_FPU_EXCEPTIONS_ALL);
		WasLocked = true;
		RequestAndUpdateCT();
		Locked = true;
		DDSURFACEDESC2 surface;
		memset(&surface, 0, sizeof(surface));
		surface.dwSize = sizeof(surface);
		surface.dwFlags = LH3D_TEXTURE_SYSTEM_DESC_FLAGS;
		surface.dwWidth = format.GetWidth();
		surface.dwHeight = format.GetHeight();
		surface.ddsCaps.dwCaps = LH3D_TEXTURE_SYSTEM_CAPS;
		surface.ddpfPixelFormat = LH3DVRAMTex::g_pixel_format[LH3D_TEXTURE_PIXEL_FORMAT_4444].Format;
		LHSys::TheSystem.screen.PDirectDraw->CreateSurface(&surface, &Surface, NULL);
		Surface->Blt(NULL, CT->Surface, NULL, DDBLT_WAIT, NULL);
		memset(&surface, 0, sizeof(surface));
		surface.dwSize = sizeof(surface);
		GLock(Surface, NULL, &surface, LH3D_TEXTURE_SURFACE_LOCK_READ, NULL);
		desc->Pitch = surface.lPitch;
		desc->Surface = surface.lpSurface;
		desc->Width = surface.dwWidth;
		desc->Height = surface.dwHeight;
		break;
	}
	case LH3D_TEXTURE_TYPE_SYSTEM_MEMORY:
		desc->Width = format.GetWidth();
		desc->Height = format.GetHeight();
		desc->Pitch = format.GetWidth() * LH3D_TEXTURE_PIXEL_BYTES;
		desc->Surface = GetSRamTex()->GetSoftSurface();
		Locked = true;
		break;
	case LH3D_TEXTURE_TYPE_FILE: {
		WasLocked = true;
		Locked = true;
		DDSURFACEDESC2 surface;
		memset(&surface, 0, sizeof(surface));
		surface.dwSize = sizeof(surface);
		surface.dwFlags |= LH3D_TEXTURE_SYSTEM_DESC_FLAGS;
		surface.dwWidth = format.GetWidth();
		surface.dwHeight = format.GetHeight();
		surface.ddsCaps.dwCaps = LH3D_TEXTURE_SYSTEM_CAPS;
		surface.ddpfPixelFormat = LH3DVRAMTex::g_pixel_format[LH3D_TEXTURE_PIXEL_FORMAT_4444].Format;
		LHSys::TheSystem.screen.PDirectDraw->CreateSurface(&surface, &Surface, NULL);
		memset(&surface, 0, sizeof(surface));
		surface.dwSize = sizeof(surface);
		GLock(Surface, NULL, &surface, LH3D_TEXTURE_SURFACE_LOCK, NULL);
		desc->Set(&surface);
		LoadFromHD(desc, Name, GetFormat().Type, Flags & LH3D_TEXTURE_FLAGS_ALPHA);
		break;
	}
	case LH3D_TEXTURE_TYPE_CT: {
		Locked = true;
		DDSURFACEDESC2 surface;
		memset(&surface, 0, sizeof(surface));
		surface.dwSize = sizeof(surface);
		surface.dwFlags |= LH3D_TEXTURE_SYSTEM_DESC_FLAGS;
		surface.dwWidth = format.GetWidth();
		surface.dwHeight = format.GetHeight();
		surface.ddsCaps.dwCaps = LH3D_TEXTURE_SYSTEM_CAPS;
		surface.ddpfPixelFormat = LH3DVRAMTex::g_pixel_format[LH3D_TEXTURE_PIXEL_FORMAT_4444].Format;
		LHSys::TheSystem.screen.PDirectDraw->CreateSurface(&surface, &Surface, NULL);
		Surface->Blt(NULL, CT->Surface, NULL, DDBLT_WAIT, NULL);
		memset(&surface, 0, sizeof(surface));
		surface.dwSize = sizeof(surface);
		GLock(Surface, NULL, &surface, LH3D_TEXTURE_SURFACE_LOCK_READ, NULL);
		desc->Pitch = surface.lPitch;
		desc->Surface = surface.lpSurface;
		desc->Width = surface.dwWidth;
		desc->Height = surface.dwHeight;
		break;
	}
	default:
		memset(desc, 1, sizeof(*desc));
		desc->Surface = NULL;
		break;
	}
	return Locked;
}

void LH3DTexture::Unlock()
{
	if (Locked)
	{
		Locked = false;
		switch (GetType())
		{
		case LH3D_TEXTURE_TYPE_FILE:
			Surface->Unlock(NULL);
			Surface->Release();
			Surface = NULL;
			break;
		case LH3D_TEXTURE_TYPE_PACKED:
			Surface->Unlock(NULL);
			Surface->Release();
			Surface = NULL;
			break;
		case LH3D_TEXTURE_TYPE_CT:
			Surface->Unlock(NULL);
			Surface->Release();
			Surface = NULL;
			break;
		}
	}
}

uint8_t* LH3DTexture::GetMaskCollide()
{
	if (MaskCollide == NULL)
	{
		MaskCollide = (uint8_t*)LH3DMem::AllocClear(LH3D_TEXTURE_MASK_SIZE * LH3D_TEXTURE_MASK_SIZE);
		LH3DSurfDesc desc;
		Lock(&desc);
		float scaleX = desc.Width * (1.0f / LH3D_TEXTURE_MASK_SIZE);
		long  pitch = desc.Pitch / LH3D_TEXTURE_PIXEL_BYTES;
		float scaleY = desc.Height * (1.0f / LH3D_TEXTURE_MASK_SIZE);
		if (desc.Surface != NULL)
		{
			for (int y = 0; y < LH3D_TEXTURE_MASK_SIZE; y++)
			{
				for (int x = 0; x < LH3D_TEXTURE_MASK_SIZE; x++)
				{
					MaskCollide[y * LH3D_TEXTURE_MASK_SIZE + x] =
						LH3D_PIXEL_4444_MASK(((uint16_t*)desc.Surface)[(int)(y * scaleY) * pitch + (int)(x * scaleX)]);
				}
			}
		}
		Unlock();
	}
	return MaskCollide;
}

LH3DSRAMTex* LH3DTexture::GetSRamTex()
{
	if (GetType() != LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
	{
		return NULL;
	}
	return SRAMTex;
}

void LH3DTexture::Compress()
{
	if (GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY && CT == NULL && format.Type == LH3D_TEXTURE_FORMAT_4444 &&
	    SRAMTex != NULL)
	{
		CT = LH3DCT::Create(NULL, true);
		DDSURFACEDESC2 desc;
		memset(&desc, 0, sizeof(desc));
		desc.dwSize = sizeof(desc);
		GLock(g_surface_for_load_4444, NULL, &desc, LH3D_TEXTURE_SURFACE_LOCK, NULL);
		uint16_t* surface = (uint16_t*)desc.lpSurface;
		long      pitch = desc.lPitch / LH3D_TEXTURE_PIXEL_BYTES;
		if (surface != NULL)
		{
			for (int y = 0; y < format.GetHeight(); y++)
			{
				uint16_t* dest = surface + pitch * y;
				for (int x = 0; x < format.GetWidth(); x++)
				{
					dest[x] = SRAMTex->SoftSurface[format.GetWidth() * y + x];
				}
			}
		}
		g_surface_for_load_4444->Unlock(NULL);
		CT->Surface->Blt(NULL, g_surface_for_load_4444, NULL, DDBLT_WAIT, NULL);
		SRAMTex->Texture = NULL;
		SRAMTex->Release();
		SRAMTex = NULL;
		Flags = (Flags & ~LH3D_TEXTURE_FLAGS_UNCOMPRESSED_TYPE_MASK) | LH3D_TEXTURE_TYPE_CT;
	}
}

void LH3DTexture::DrawPlayerSymbol(uint8_t* data, LH3DColor* color, float x, float y, float scale)
{
	if (data == NULL)
	{
		return;
	}
	if (scale > 1.0f)
	{
		scale = 1.0f;
	}
	else if (scale < 0.0f)
	{
		return;
	}
	int levels = (int)(scale * LH3D_TEXTURE_SYMBOL_SIZE);
	if (levels >= LH3D_TEXTURE_SYMBOL_LEVEL_1_MIN)
	{
		levels = levels < LH3D_TEXTURE_SYMBOL_LEVEL_0_MIN;
	}
	else if (levels >= LH3D_TEXTURE_SYMBOL_LEVEL_3_MIN)
	{
		levels = (levels < LH3D_TEXTURE_SYMBOL_LEVEL_2_MIN) + 2;
	}
	else
	{
		levels = LH3D_TEXTURE_SYMBOL_LEVEL_MAX;
	}
	uint32_t stride = LH3D_TEXTURE_SYMBOL_SIZE;
	uint32_t size = stride;
	while (levels != 0)
	{
		scale += scale;
		data += stride * stride;
		stride >>= 1;
		size >>= 1;
		levels--;
	}
	if (g_b_use_low_res)
	{
		x *= 0.5f;
		y *= 0.5f;
		scale *= 0.5f;
	}
	uint8_t* symbol = (uint8_t*)malloc(size * size);
	int      row;
	int      column;
	if (g_rotate_tattoo != 0)
	{
		switch (g_rotate_tattoo)
		{
		case LH3D_TATTOO_ROTATE_90:
			for (row = 0; row < (int)size; row++)
			{
				for (column = 0; column < (int)size; column++)
				{
					symbol[stride * (column + 1) - row - 1] = data[row * stride + column];
				}
			}
			break;
		case LH3D_TATTOO_ROTATE_180:
			for (row = 0; row < (int)size; row++)
			{
				for (column = 0; column < (int)size; column++)
				{
					symbol[(stride - row) * stride - 1 - column] = data[row * stride + column];
				}
			}
			break;
		case LH3D_TATTOO_ROTATE_270:
			for (row = 0; row < (int)size; row++)
			{
				for (column = 0; column < (int)size; column++)
				{
					symbol[(stride - 1) * stride + row - column * stride] = data[row * stride + column];
				}
			}
			break;
		}
	}
	else
	{
		memcpy(symbol, data, size * size);
	}
	if (g_flip_tattoo)
	{
		for (row = 0; row < (int)size; row++)
		{
			if ((int)size / 2 > 0)
			{
				uint8_t* left = symbol + row * stride;
				uint8_t* right = left + stride - 1;
				column = (int)size / 2;
				do
				{
					uint8_t swap = *left;
					*left = *right;
					*right = swap;
					left++;
					right--;
				} while (--column);
			}
		}
	}
	LH3DSurfDesc desc;
	Lock(&desc);
	if (desc.Surface != NULL)
	{
		int   width = format.GetWidth();
		int   count = (int)((float)size * scale);
		int   pitch = desc.Pitch / LH3D_TEXTURE_PIXEL_BYTES;
		float v = 0.0f;
		float step = (float)size / (float)count;
		float half = (float)(count / 2);
		if (x - half < 0.0f || x + half >= (float)desc.Width || y - half < 0.0f || y + half >= (float)desc.Height)
		{
			Unlock();
			return;
		}
		uint16_t* dest =
			(uint16_t*)desc.Surface + (int)(y - half) * desc.Pitch / LH3D_TEXTURE_PIXEL_BYTES + (int)(x - half);
		uint32_t red = (color->r & ~LH3D_PIXEL_4444_BLUE) << 4;
		uint32_t green = color->g & ~LH3D_PIXEL_4444_BLUE;
		uint32_t blue = color->b >> 4;
		for (int line = count; line > 0; line--)
		{
			float u = 0.0f;
			for (int pixels = count; pixels > 0; pixels--)
			{
				uint32_t mask = symbol[(int)u + (int)v * stride];
				u += step;
				uint32_t pixel = *dest;
				uint32_t inverse = LH3D_TEXTURE_BLEND_MAX - mask;
				uint32_t g = ((pixel & LH3D_PIXEL_4444_GREEN) * inverse + mask * green) / LH3D_TEXTURE_BLEND_MAX;
				uint32_t b = ((pixel & LH3D_PIXEL_4444_BLUE) * inverse + mask * blue) / LH3D_TEXTURE_BLEND_MAX;
				uint32_t r = ((pixel & LH3D_PIXEL_4444_RED) * inverse + mask * red) / LH3D_TEXTURE_BLEND_MAX;
				*dest++ = (g & LH3D_PIXEL_4444_GREEN) | (b & LH3D_PIXEL_4444_BLUE) |
				          (r & (LH3D_PIXEL_4444_RED | LH3D_PIXEL_4444_ALPHA_BITS)) | LH3D_PIXEL_4444_ALPHA_BITS;
			}
			dest += pitch - count;
			v += step;
		}
	}
	Unlock();
	if (GetType() == LH3D_TEXTURE_TYPE_NAMED || GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
	{
		ReloadPending = true;
	}
	if (symbol != NULL)
	{
		free(symbol);
	}
}

void LH3DSurfDesc::Set(DDSURFACEDESC2* desc)
{
	Width = desc->dwWidth;
	Height = desc->dwHeight;
	Pitch = desc->lPitch;
	Surface = desc->lpSurface;
}

void LH3DTexture::CreateBufferSurcfaces()
{
	ReleaseBufferSurfaces();
	DDSURFACEDESC2 desc;
	memset(&desc, 0, sizeof(desc));
	desc.dwSize = sizeof(desc);
	desc.dwFlags = LH3D_TEXTURE_SYSTEM_DESC_FLAGS | DDSD_MIPMAPCOUNT;
	int size = LH3D_RAW_TEXTURE_SIZE;
	if (g_b_use_low_res)
	{
		desc.dwWidth = LH3D_TEXTURE_LOW_RES_SIZE;
		desc.dwHeight = LH3D_TEXTURE_LOW_RES_SIZE;
	}
	else
	{
		desc.dwWidth = size;
		desc.dwHeight = size;
	}
	desc.ddsCaps.dwCaps = LH3D_TEXTURE_BUFFER_CAPS;
	desc.dwMipMapCount = 1;
	desc.ddpfPixelFormat = LH3DVRAMTex::g_pixel_format[LH3D_TEXTURE_PIXEL_FORMAT_4444].Format;
	LHSys::TheSystem.screen.PDirectDraw->CreateSurface(&desc, &g_surface_for_load_4444, NULL);
	if (g_surface_for_load_4444 == NULL)
	{
		desc.ddsCaps.dwCaps = LH3D_TEXTURE_BUFFER_SYSTEM_CAPS;
		LHSys::TheSystem.screen.PDirectDraw->CreateSurface(&desc, &g_surface_for_load_4444, NULL);
	}
	desc.ddpfPixelFormat = LH3DVRAMTex::g_pixel_format[LH3D_TEXTURE_PIXEL_FORMAT_555].Format;
	LHSys::TheSystem.screen.PDirectDraw->CreateSurface(&desc, &g_surface_for_load_555, NULL);
	if (g_b_use_low_res)
	{
		desc.ddpfPixelFormat = LH3DVRAMTex::g_pixel_format[LH3D_TEXTURE_PIXEL_FORMAT_4444].Format;
		desc.dwWidth = size;
		desc.dwHeight = size;
		LHSys::TheSystem.screen.PDirectDraw->CreateSurface(&desc, &g_surface_for_load_ALWAYS_256x256_4444, NULL);
	}
	desc.dwWidth = LH3D_TEXTURE_SMALL_SIZE;
	desc.dwHeight = LH3D_TEXTURE_SMALL_SIZE;
	desc.ddpfPixelFormat = LH3DVRAMTex::g_pixel_format[LH3D_TEXTURE_PIXEL_FORMAT_4444].Format;
	LHSys::TheSystem.screen.PDirectDraw->CreateSurface(&desc, &g_surface_for_load_32x324444, NULL);
}

void LH3DTexture::ReleaseBufferSurfaces()
{
	if (g_surface_for_load_555 != NULL)
	{
		g_surface_for_load_555->Release();
		g_surface_for_load_555 = NULL;
	}
	if (g_surface_for_load_4444 != NULL)
	{
		g_surface_for_load_4444->Release();
		g_surface_for_load_4444 = NULL;
	}
	if (g_surface_for_load_32x324444 != NULL)
	{
		g_surface_for_load_32x324444->Release();
		g_surface_for_load_32x324444 = NULL;
	}
	if (g_surface_for_load_ALWAYS_256x256_4444 != NULL)
	{
		g_surface_for_load_ALWAYS_256x256_4444->Release();
		g_surface_for_load_ALWAYS_256x256_4444 = NULL;
	}
	if (g_surface_for_load_256x2568888 != NULL)
	{
		g_surface_for_load_256x2568888->Release();
		g_surface_for_load_256x2568888 = NULL;
	}
}
