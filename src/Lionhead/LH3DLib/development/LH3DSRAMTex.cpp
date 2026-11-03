#include "LH3DTexture.h"

#include <ddraw.h>  /* For DDSURFACEDESC2, DDLOCK_* */
#include <stdio.h>  /* For sprintf */
#include <stdlib.h> /* For free */
#include <string.h> /* For memset, memcpy */

#include "LH3DMem.h"  /* For struct LH3DMem */
#include "LH3DMesh.h" /* For g_b_from_l3d */
#include "LH3DTech.h" /* For Report3D__FPCce */
#include "LHTGA.h"    /* For struct LHTGA */

#include <Lionhead/LHFile/ver3.0/LHOSFile.h> /* For LHSaveData */

#define LH3D_SRAM_TEX_SIZE          256
#define LH3D_SRAM_TEX_HALF_SIZE     128
#define LH3D_SRAM_TEX_BYTES         (LH3D_SRAM_TEX_SIZE * LH3D_SRAM_TEX_SIZE * sizeof(uint16_t))
#define LH3D_SRAM_TEX_LOCK_WRITE    (DDLOCK_WAIT | DDLOCK_WRITEONLY | DDLOCK_NOSYSLOCK)
#define LH3D_SRAM_TEX_LOCK_READ     (DDLOCK_WAIT | DDLOCK_READONLY | DDLOCK_NOSYSLOCK)
#define LH3D_SRAM_TEX_CHANNEL_MAX   255
#define LH3D_SRAM_TEX_SURFACE_PITCH 0x200

// BW1W120 00fa51e0 BW1M119 null
bool32_t g_b_sram_open;
// BW1W120 00fa51e4 BW1M119 null
int g_sram_count;
// BW1W120 00fa51e8 BW1M119 null
LH3DSRAMTex* g_first_sram;
// BW1W120 00fa51ec BW1M119 null
bool32_t g_b_sram_alloc_failed;
// BW1W120 00fa51f0 BW1M119 null
int g_sram_copy_count;
// BW1W120 00fa51f4 BW1M119 null
int g_sram_lock_count;

bool32_t LH3DSRAMTex::Open()
{
	if (g_b_sram_open != false)
	{
		Report3D__FPCce("LH3DSRAMTex::Open already open!\n");
		return false;
	}
	g_sram_count = 0;
	g_first_sram = NULL;
	g_b_sram_alloc_failed = false;
	g_b_sram_open = true;
	return true;
}

bool32_t LH3DSRAMTex::Close()
{
	if (!g_b_sram_open)
	{
		Report3D__FPCce("LH3DSRAMTex::Close not open!\n");
		return false;
	}
	if (g_sram_count != 0 || g_first_sram != NULL)
	{
		ReleaseAll();
	}
	g_b_sram_open = false;
	return true;
}

LH3DSRAMTex* LH3DSRAMTex::GetElderOrFree()
{
	LH3DSRAMTex* elder = g_first_sram;
	for (LH3DSRAMTex* sram = g_first_sram; sram != NULL; sram = sram->Next)
	{
		LH3DTexture* texture = sram->GetTexture();
		if (texture == NULL)
		{
			elder = sram;
			break;
		}
		bool32_t is_static = texture->IsStatic();
		if (!is_static && texture->VRAMTex != NULL)
		{
			return sram;
		}
		if (texture->LastUsedTime < elder->GetTexture()->LastUsedTime)
		{
			if (!is_static)
			{
				elder = sram;
			}
			else
			{
				Report3D__FPCce("can't delete this static sram.\n");
			}
		}
	}
	if (elder != NULL)
	{
		if (elder->GetTexture() != NULL && elder->GetTexture()->IsStatic())
		{
			Report3D__FPCce("######## GetElderOrFree: give a static texture.\n");
		}
	}
	else
	{
		Report3D__FPCce("######## GetElderOrFree: return NULL.\n");
	}
	return elder;
}

LH3DSRAMTex* LH3DSRAMTex::Create(LH3DTexture* texture)
{
	LH3DSRAMTex* sram = new LH3DSRAMTex(texture);
	if (sram == NULL)
	{
		return g_first_sram;
	}
	sram->Texture = texture;
	return sram;
}

LH3DSRAMTex::LH3DSRAMTex(LH3DTexture* texture)
{
	Format.Type = 0;
	Format = texture->GetFormat();
	int size = Format.GetHeight() * Format.GetWidth() * sizeof(uint16_t);
	SoftSurface = NULL;
	Buffer = NULL;
	Texture = NULL;
	Next = g_first_sram;
	g_first_sram = this;
	g_sram_count = g_sram_count + 1;
	SoftSurface = (uint16_t*)LH3DMem::Alloc(size);
	if (SoftSurface == NULL)
	{
		Report3D__FPCce("Create SRAM Surface FAILED %d\n", g_sram_count);
		g_b_sram_alloc_failed = true;
	}
}

LH3DSRAMTex::~LH3DSRAMTex()
{
	LH3DSRAMTex* prev = NULL;
	LH3DSRAMTex* sram = g_first_sram;
	while (sram != this)
	{
		prev = sram;
		sram = sram->Next;
	}
	if (prev != NULL)
	{
		prev->Next = Next;
	}
	else
	{
		g_first_sram = Next;
	}
	Next = NULL;
	g_sram_count--;
	if (SoftSurface != NULL)
	{
		LH3DMem::Free(SoftSurface);
		SoftSurface = NULL;
	}
	if (Texture != NULL)
	{
		Texture->YouLostYourSRAM();
		Texture = NULL;
	}
}

void LH3DSRAMTex::ReleaseAll()
{
	Report3D__FPCce("LH3DSRAMTex::ReleaseAll %d\n", g_sram_count);
	while (g_first_sram != NULL)
	{
		g_first_sram->Release();
	}
}

void __fastcall LH3DSRAMTex::Copy(IDirectDrawSurface7* surface)
{
	DDSURFACEDESC2 desc;
	memset(&desc, 0, sizeof(desc));
	desc.dwSize = sizeof(desc);
	GLock(surface, NULL, &desc, LH3D_SRAM_TEX_LOCK_WRITE, NULL);
	uint8_t*  dest = (uint8_t*)desc.lpSurface;
	uint16_t* source = SoftSurface;
	if (dest != NULL && source != NULL)
	{
		int height = Format.GetHeight();
		int width = Format.GetWidth();
		if (desc.lPitch == LH3D_SRAM_TEX_SURFACE_PITCH && width == LH3D_SRAM_TEX_HALF_SIZE)
		{
			uint16_t* out = (uint16_t*)desc.lpSurface;
			uint16_t* pixels = SoftSurface;
			for (int y = 0; y < LH3D_SRAM_TEX_SIZE; y++)
			{
				for (int x = 0; x < LH3D_SRAM_TEX_SIZE; x++)
				{
					out[desc.lPitch / 2 * y + x] = pixels[y / 2 * LH3D_SRAM_TEX_HALF_SIZE + x / 2];
				}
			}
		}
		else
		{
			width = Format.GetWidth() * sizeof(uint16_t);
			for (; height > 0; height--)
			{
				memcpy(dest, source, width);
				dest += desc.lPitch;
				source = (uint16_t*)((uint8_t*)source + width);
			}
		}
		surface->Unlock(NULL);
		g_sram_copy_count++;
	}
	else
	{
		surface->Unlock(NULL);
	}
}

void LH3DSRAMTex::Release()
{
	if (Texture != NULL)
	{
		Report3D__FPCce("LH3DSRAMTex::Release contains a LH3DTexture.\n");
	}
	delete this;
}

void __fastcall LH3DSRAMTex::Blend(unsigned long blend, LH3DSRAMTex* from, LH3DSRAMTex* to)
{
	uint16_t* dest = GetSoftSurface();
	uint16_t* from_pixel = from->GetSoftSurface();
	uint16_t* to_pixel = to->GetSoftSurface();
	if (blend > LH3D_SRAM_TEX_CHANNEL_MAX)
	{
		blend = LH3D_SRAM_TEX_CHANNEL_MAX;
	}
	unsigned long inverse = LH3D_SRAM_TEX_CHANNEL_MAX - blend;
	int           width = Format.GetWidth();
	int           count = Format.GetWidth() * width;
	for (; count > 0; count--)
	{
		uint16_t a = *from_pixel;
		uint16_t b = *to_pixel;
		*dest = ((((a & 0xf0) * inverse + (b & 0xf0) * blend) / LH3D_SRAM_TEX_CHANNEL_MAX) & 0xf0) |
		        ((((a & 0xf) * inverse + (b & 0xf) * blend) / LH3D_SRAM_TEX_CHANNEL_MAX) & 0xf) |
		        ((((a & 0xf000) * inverse + (b & 0xf000) * blend) / LH3D_SRAM_TEX_CHANNEL_MAX) & 0xf000) |
		        ((((a & 0xf00) * inverse + (b & 0xf00) * blend) / LH3D_SRAM_TEX_CHANNEL_MAX) & 0xf00);
		dest++;
		from_pixel++;
		to_pixel++;
	}
}

void __fastcall LH3DSRAMTex::OrganicBlend(LH3DSRAMTex* from, LH3DSRAMTex* to, float blend)
{
	uint16_t*     dest = GetSoftSurface();
	uint16_t*     from_pixel = from->GetSoftSurface();
	uint16_t*     to_pixel = to->GetSoftSurface();
	unsigned long amount = (unsigned long)(blend * (float)LH3D_SRAM_TEX_CHANNEL_MAX);
	if (amount > LH3D_SRAM_TEX_CHANNEL_MAX)
	{
		amount = LH3D_SRAM_TEX_CHANNEL_MAX;
	}
	unsigned long inverse = LH3D_SRAM_TEX_CHANNEL_MAX - amount;
	int           width = Format.GetWidth();
	int           count = Format.GetWidth() * width;
	for (; count > 0; count--)
	{
		uint16_t a = *from_pixel;
		uint16_t b = *to_pixel;
		*dest = ((((a & 0xf0) * inverse + (b & 0xf0) * amount) / LH3D_SRAM_TEX_CHANNEL_MAX) & 0xf0) |
		        ((((a & 0xf) * inverse + (b & 0xf) * amount) / LH3D_SRAM_TEX_CHANNEL_MAX) & 0xf) |
		        ((((a & 0xf000) * inverse + (b & 0xf000) * amount) / LH3D_SRAM_TEX_CHANNEL_MAX) & 0xf000) |
		        ((((a & 0xf00) * inverse + (b & 0xf00) * amount) / LH3D_SRAM_TEX_CHANNEL_MAX) & 0xf00);
		dest++;
		from_pixel++;
		to_pixel++;
	}
}

uint16_t* LH3DSRAMTex::GetSoftSurface()
{
	return SoftSurface;
}

uint16_t* LH3DSRAMTex::Lock256x256(bool32_t discard)
{
	if (Format.GetWidth() == LH3D_SRAM_TEX_SIZE)
	{
		return GetSoftSurface();
	}
	g_sram_lock_count++;
	if (Buffer != NULL)
	{
		LH3DMem::Free(Buffer);
		Buffer = NULL;
	}
	Buffer = (uint16_t*)LH3DMem::Alloc(LH3D_SRAM_TEX_BYTES);
	if (!discard)
	{
		Copy(Buffer, LH3D_SRAM_TEX_SIZE, LH3D_SRAM_TEX_SIZE);
	}
	return Buffer;
}

void LH3DSRAMTex::UnlockLock256x256()
{
	if (Format.GetWidth() != LH3D_SRAM_TEX_SIZE && Buffer != NULL)
	{
		CopyInto(Buffer, LH3D_SRAM_TEX_SIZE, LH3D_SRAM_TEX_SIZE);
		LH3DMem::Free(Buffer);
		Buffer = NULL;
	}
}

void LH3DSRAMTex::CopyInto(uint16_t* source, long width, long pitch)
{
	int       sram_width = Format.GetWidth();
	int       sram_height = Format.GetHeight();
	uint16_t* dest = GetSoftSurface();
	if (width == sram_width)
	{
		for (int y = 0; y < sram_height; y++)
		{
			memcpy(dest, source, sram_width * sizeof(uint16_t));
			dest = (uint16_t*)((uint8_t*)dest + pitch * 4);
			source = (uint16_t*)((uint8_t*)source + pitch * 4);
		}
	}
	else if (sram_width == LH3D_SRAM_TEX_HALF_SIZE && width == LH3D_SRAM_TEX_SIZE)
	{
		if (Format.Type == LH3D_TEXTURE_FORMAT_555)
		{
			if (LH3DTexture::g_b_use_565)
			{
				if (g_b_from_l3d)
				{
					uint16_t* row = source;
					uint16_t* row_bottom = source + pitch + 1;
					for (int y = 0; y < sram_height; y++)
					{
						uint16_t* top = row;
						uint16_t* bottom = row_bottom;
						for (int x = 0; x < LH3D_SRAM_TEX_HALF_SIZE; x++)
						{
							uint32_t p0 = top[0];
							uint32_t p1 = top[1];
							uint32_t p3 = bottom[0];
							uint32_t p2 = bottom[-1];
							*dest = (((p3 & 0x7c00) + (p2 & 0x7c00) + (p1 & 0x7c00) + (p0 & 0x7c00)) >> 2 & 0xfc00) |
							        (((p2 & 0x3e0) + (p3 & 0x3e0) + (p1 & 0x3e0) + (p0 & 0x3e0)) >> 2 & 0x3e0) |
							        (((p2 & 0x1f) + (p3 & 0x1f) + (p1 & 0x1f) + (p0 & 0x1f)) >> 2 & 0x1f) | 0x8000;
							dest++;
							top += 2;
							bottom += 2;
						}
						row = (uint16_t*)((uint8_t*)row + pitch * 4);
						row_bottom = (uint16_t*)((uint8_t*)row_bottom + pitch * 4);
					}
				}
				else
				{
					uint16_t* row = source;
					uint16_t* row_bottom = source + pitch + 1;
					for (int y = 0; y < sram_height; y++)
					{
						uint16_t* top = row;
						uint16_t* bottom = row_bottom;
						for (int x = 0; x < LH3D_SRAM_TEX_HALF_SIZE; x++)
						{
							uint32_t p0 = top[0];
							uint32_t p1 = top[1];
							uint32_t p3 = bottom[0];
							uint32_t p2 = bottom[-1];
							*dest = (((p2 & 0x1f) + (p3 & 0x1f) + (p1 & 0x1f) + (p0 & 0x1f)) >> 2 & 0x1f) |
							        (((p2 & 0xf800) + (p3 & 0xf800) + (p1 & 0xf800) + (p0 & 0xf800)) >> 2 & 0xf800) |
							        (((p2 & 0x7e0) + (p3 & 0x7e0) + (p1 & 0x7e0) + (p0 & 0x7e0)) >> 2 & 0x7e0);
							dest++;
							top += 2;
							bottom += 2;
						}
						row = (uint16_t*)((uint8_t*)row + pitch * 4);
						row_bottom = (uint16_t*)((uint8_t*)row_bottom + pitch * 4);
					}
				}
			}
			else
			{
				uint16_t* row = source;
				uint16_t* row_bottom = source + pitch + 1;
				for (int y = 0; y < sram_height; y++)
				{
					uint16_t* top = row;
					uint16_t* bottom = row_bottom;
					for (int x = 0; x < LH3D_SRAM_TEX_HALF_SIZE; x++)
					{
						uint32_t p0 = top[0];
						uint32_t p1 = top[1];
						uint32_t p3 = bottom[0];
						uint32_t p2 = bottom[-1];
						*dest = (((p2 & 0x3e0) + (p3 & 0x3e0) + (p1 & 0x3e0) + (p0 & 0x3e0)) >> 2 & 0x3e0) |
						        (((p0 & 0x7c00) + (p3 & 0x7c00) + (p2 & 0x7c00) + (p1 & 0x7c00)) >> 2 & 0xfc00) |
						        (((p2 & 0x1f) + (p3 & 0x1f) + (p1 & 0x1f) + (p0 & 0x1f)) >> 2 & 0x1f) | 0x8000;
						dest++;
						top += 2;
						bottom += 2;
					}
					row = (uint16_t*)((uint8_t*)row + pitch * 4);
					row_bottom = (uint16_t*)((uint8_t*)row_bottom + pitch * 4);
				}
			}
		}
		else
		{
			uint16_t* row = source;
			uint16_t* row_bottom = source + pitch + 1;
			for (int y = 0; y < sram_height; y++)
			{
				uint16_t* top = row;
				uint16_t* bottom = row_bottom;
				for (int x = 0; x < LH3D_SRAM_TEX_HALF_SIZE; x++)
				{
					uint32_t p0 = top[0];
					uint32_t p1 = top[1];
					uint32_t p3 = bottom[0];
					uint32_t p2 = bottom[-1];
					*dest = (((p2 & 0xf) + (p3 & 0xf) + (p1 & 0xf) + (p0 & 0xf)) >> 2 & 0xf) |
					        (((p2 & 0xf000) + (p3 & 0xf000) + (p1 & 0xf000) + (p0 & 0xf000)) >> 2 & 0xf000) |
					        (((p2 & 0xf00) + (p3 & 0xf00) + (p1 & 0xf00) + (p0 & 0xf00)) >> 2 & 0xf00) |
					        (((p2 & 0xf0) + (p3 & 0xf0) + (p1 & 0xf0) + (p0 & 0xf0)) >> 2 & 0xf0);
					dest++;
					top += 2;
					bottom += 2;
				}
				row = (uint16_t*)((uint8_t*)row + pitch * 4);
				row_bottom = (uint16_t*)((uint8_t*)row_bottom + pitch * 4);
			}
		}
	}
}

void LH3DSRAMTex::Copy(uint16_t* dest, long height, long width)
{
	int       sram_width = Format.GetWidth();
	int       sram_height = Format.GetHeight();
	uint16_t* source = GetSoftSurface();
	if (sram_width == LH3D_SRAM_TEX_HALF_SIZE && sram_height == sram_width && height == LH3D_SRAM_TEX_SIZE)
	{
		long     stride = width * sizeof(uint16_t);
		uint8_t* row = (uint8_t*)dest;
		for (int y = 0; y < LH3D_SRAM_TEX_SIZE; y++, row += stride)
		{
			uint16_t* out = (uint16_t*)row;
			for (int x = 0; x < LH3D_SRAM_TEX_SIZE; x++, out++)
			{
				*out = source[y / 2 * LH3D_SRAM_TEX_HALF_SIZE + x / 2];
			}
		}
	}
}

void LH3DSRAMTex::LoadInSRAM(IDirectDrawSurface7* surface)
{
	DDSURFACEDESC2 desc;
	memset(&desc, 0, sizeof(desc));
	desc.dwSize = sizeof(desc);
	GLock(surface, NULL, &desc, LH3D_SRAM_TEX_LOCK_READ, NULL);
	if (desc.lpSurface != NULL)
	{
		CopyInto((uint16_t*)desc.lpSurface, desc.dwWidth, desc.lPitch / 2);
	}
	surface->Unlock(NULL);
}

void LH3DSRAMTex::SaveAllToTGA()
{
	int index = 0;
	for (LH3DSRAMTex* sram = g_first_sram; sram != NULL; sram = sram->Next)
	{
		char   path[0x20];
		LHTGA* tga = LHTGA::GetTGA(sram->SoftSurface, sram->Format.GetWidth(), sram->Format.GetHeight(),
		                           LHTGA_FORMAT_ARGB4444, true);
		if (index > 99)
		{
			sprintf(path, "c:\\tmp\\%d.tga", index);
		}
		else if (index > 9)
		{
			sprintf(path, "c:\\tmp\\0%d.tga", index);
		}
		else
		{
			sprintf(path, "c:\\tmp\\00%d.tga", index);
		}
		LHSaveData(path, tga, LHTGA::GetSize(tga->Width, tga->Height), NULL);
		index++;
		free(tga);
	}
}

HRESULT GLock(IDirectDrawSurface7* surface, RECT* rect, DDSURFACEDESC2* desc, unsigned long flags, HANDLE event)
{
	if (surface == NULL)
	{
		return TRUE;
	}
	if (surface->IsLost())
	{
		surface->Restore();
	}
	return surface->Lock(rect, desc, flags, event);
}
