#include "TShadowInfo.h"

#include <ddraw.h> /* For DDSURFACEDESC2, DDLOCK_* */
#include <string.h>

#include "LH3DMaterial.h"
#include "LH3DMem.h"
#include "LH3DRender.h"
#include "LH3DTech.h"
#include "LH3DTexture.h"
#include "LH3DVRAMTex.h"
#include "SoftTri.h"

#define LH3D_SHADOW_SURFACE_LOCK (DDLOCK_WAIT | DDLOCK_WRITEONLY | DDLOCK_NOSYSLOCK)
#define LH3D_SHADOW_PIXEL_BYTES  2
#define LH3D_SHADOW_UV_SCALE     256.0f
#define LH3D_SHADOW_TEXEL_CENTER 0.5f
#define LH3D_SHADOW_UV_LIMIT     32.0f

TShadowInfo* TShadowInfo::g_first;

static float g_corner_u[4] = {0.0f, 0.125f, 0.0f, 0.125f};
static float g_corner_v[4] = {0.0f, 0.0f, 0.125f, 0.125f};
static float g_vertex_u[4] = {0.0f, 0.125f, 0.0f, 0.125f};
static float g_vertex_v[4] = {0.0f, 0.0f, 0.125f, 0.125f};

int SoftTri::CLIPX = 0x80;
int SoftTri::CLIPY = 0x40;

static uint16_t g_corner_indices[6] = {0, 1, 2, 2, 1, 3};
static uint8_t  bit_mask[9] = {0x00, 0x01, 0x03, 0x07, 0x0f, 0x1f, 0x3f, 0x7f, 0xff};

uint8_t  SoftTri::char2bit[SOFT_TRI_TABLE_SIZE];
uint8_t  SoftTri::bit2char[SOFT_TRI_TABLE_SIZE];
uint16_t SoftTri::bit2col[SOFT_TRI_TABLE_SIZE];
int      SoftTri::right[SOFT_TRI_MAX_ROWS];
int      SoftTri::left[SOFT_TRI_MAX_ROWS];
int      SoftTri::maxy;
int      SoftTri::miny;

TShadowInfo* TShadowInfo::Create()
{
	TextureFormat format;
	format.Type = LH3D_TEXTURE_FORMAT_32X32_4444;

	TShadowInfo* shadow = (TShadowInfo*)LH3DMem::AllocClear(sizeof(TShadowInfo));
	shadow->Texture = LH3DTexture::Create(
		NULL, LH3D_TEXTURE_TYPE_SYSTEM_MEMORY | LH3D_TEXTURE_FLAGS_ALPHA | LH3D_TEXTURE_FLAGS_ALLOC_VRAM, 0xffffffff,
		&format);

	LH3DSurfDesc surface;
	shadow->Texture->Lock(&surface);
	if (surface.Surface != NULL)
	{
		for (unsigned y = 0; y < format.GetHeight(); y++)
		{
			for (unsigned x = 0; x < format.GetWidth(); x++)
			{
				((uint16_t*)surface.Surface)[(surface.Pitch * y / LH3D_SHADOW_PIXEL_BYTES) + x] = 0;
			}
		}
	}
	shadow->Texture->Unlock();

	shadow->Material =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, shadow->Texture);

	LH3DVRAMTex* vram = shadow->Texture->VRAMTex;
	if (vram != NULL && vram->Alloc)
	{
		DDSURFACEDESC2 desc;
		memset(&desc, 0, sizeof(desc));
		desc.dwSize = sizeof(desc);
		GLock(vram->Surface, NULL, &desc, LH3D_SHADOW_SURFACE_LOCK, NULL);
		if (desc.lpSurface != NULL)
		{
			for (unsigned y = 0; y < desc.dwHeight; y++)
			{
				for (unsigned x = 0; x < desc.dwWidth; x++)
				{
					((uint16_t*)desc.lpSurface)[(desc.lPitch / LH3D_SHADOW_PIXEL_BYTES * y) + x] = 0;
				}
			}
		}
		vram->Surface->Unlock(NULL);
	}

	shadow->Next = g_first;
	shadow->BaseAlpha = LH3D_SHADOW_ALPHA_OPAQUE;
	shadow->Alpha = LH3D_SHADOW_ALPHA_OPAQUE;
	shadow->Enabled = true;
	shadow->DynamicShadow = false;
	shadow->Caster = NULL;
	g_first = shadow;
	return shadow;
}

void TShadowInfo::Release()
{
	TShadowInfo* previous = NULL;
	TShadowInfo* shadow = g_first;
	while (shadow != this)
	{
		previous = shadow;
		shadow = shadow->Next;
	}
	if (previous != NULL)
	{
		previous->Next = Next;
	}
	else
	{
		g_first = Next;
	}
	Texture->Release();
	delete Material;
	LH3DMem::Free(this);
}

bool32_t TShadowInfo::IsUseable()
{
	if (Enabled && Alpha)
	{
		return true;
	}
	return false;
}

static inline void TranslateMatrix(LHMatrix& matrix, float x, float y, float z)
{
	matrix._41 = matrix._41 + x;
	matrix._42 = matrix._42 + y;
	matrix._43 = matrix._43 + z;
}

void TShadowInfo::Prepare()
{
	Projection.Set(LH3DTech::g_clipping_to_world);
	ScaleU = 1.0f / (MaxX - MinX);
	ScaleV = 1.0f / (MaxZ - MinZ);
	TranslateMatrix(Projection, -Light.x, -Light.y, -Light.z);
	Projection._11 *= ScaleU;
	Projection._13 *= ScaleV;
	Projection._21 *= ScaleU;
	Projection._23 *= ScaleV;
	Projection._31 *= ScaleU;
	Projection._33 *= ScaleV;
	Projection._41 *= ScaleU;
	Projection._43 *= ScaleV;
	LightUV.Set((Light.x - MinX) * ScaleU, GroundHeight - Light.y, (Light.z - MinZ) * ScaleV);
}

void SoftTri::CalcColTab(short start, short count)
{
	for (int i = 0; i < SOFT_TRI_TABLE_SIZE; i++)
	{
		int count = 0;
		for (int value = i; value != 0; value &= value - 1)
		{
			count++;
		}
		uint8_t bits = count;
		bit2col[i] = (((uint32_t)bits * 8 >> 3) << count) | start;
		bit2char[i] = bits * 255 / 8;
		if (LH3DTexture::g_b_use_low_res)
		{
			bit2char[i] >>= 1;
		}
		int setBits = 0;
		for (int rest = i; rest != 0; rest &= rest - 1)
		{
			setBits++;
		}
		char2bit[i] = bit_mask[setBits];
	}
}

void __fastcall SoftTri::addedge(float x1, int y1, float x2, int y2)
{
	int* edge;
	if (y1 == y2)
	{
		return;
	}
	if (y1 > y2)
	{
		float tempX = x1;
		int   tempY = y1;
		y1 = y2;
		y2 = tempY;
		x1 = x2;
		x2 = tempX;
		edge = left;
	}
	else
	{
		edge = right;
	}
	if (y1 >= CLIPY || y2 <= 0)
	{
		return;
	}
	float slope = (x2 - x1) / (y2 - y1);
	if (y2 > CLIPY)
	{
		y2 = CLIPY;
	}
	if (y1 < 0)
	{
		x1 = x1 - slope * y1;
		y1 = 0;
	}
	if (y1 < miny)
	{
		miny = y1;
	}
	if (y2 > maxy)
	{
		maxy = y2;
	}
	y2 -= y1;
	if (y2 > 0)
	{
		int* row = &edge[y1];
		int  step = (int)(slope * 65536.0f);
		int  position = (int)(x1 * 65536.0f);
		int  count = y2;
		while (count--)
		{
			*row++ = position >> 16;
			position += step;
		}
	}
}

void __fastcall SoftTri::rendertri(void* buffer, int pitch, int color)
{
	int rows = maxy - miny;
	int y = miny;
	pitch >>= 2;
	if (rows > 0)
	{
		int*      leftEdge = &left[y];
		int*      rightEdge = &right[y];
		uint32_t* row = (uint32_t*)buffer + (y >> 1) * pitch;
		for (; rows > 0; rows--, y++)
		{
			int start = *leftEdge++;
			if (start < 0)
			{
				start = 0;
			}
			int end = *rightEdge++;
			if (end > CLIPX)
			{
				end = CLIPX;
			}
			if (end > start && start < CLIPX && end > 0)
			{
				int       first = start >> 4;
				int       last = end >> 4;
				uint32_t* word = row + first;
				if (y & 1)
				{
					if (first == last)
					{
						*word |= leftmask_bottom[start & 0xf] & rightmask_bottom[end & 0xf];
					}
					else
					{
						*word++ |= leftmask_bottom[start & 0xf];
						for (first++; first < last; first++)
						{
							*word++ |= fullmask_bottom;
						}
						*word |= rightmask_bottom[end & 0xf];
					}
				}
				else if (color == 0)
				{
					if (first == last)
					{
						*word |= leftmask_top[start & 0xf] & rightmask_top[end & 0xf];
					}
					else
					{
						*word++ |= leftmask_top[start & 0xf];
						for (first++; first < last; first++)
						{
							*word++ |= fullmask_top;
						}
						*word |= rightmask_top[end & 0xf];
					}
				}
			}
			if (y & 1)
			{
				row += pitch;
			}
		}
	}
}

void __fastcall TShadowInfo::renderbuffer(uint16_t* buffer, long pitch)
{
	if (buffer == NULL)
	{
		return;
	}
	int width = SoftTri::CLIPX / 4;
	int height = SoftTri::CLIPY / 2 - 2;
	pitch >>= 1;
	uint16_t* dest = buffer + pitch + 1;
	uint8_t*  source = &Buffer[width + 1];
	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width - 2; x++)
		{
			*dest++ = SoftTri::bit2col[*source++];
		}
		source += 2;
		dest += pitch - width + 2;
	}
}

float __fastcall TShadowInfo::CalcShadowUV_Clipping(LHPoint& point, float& u, float& v)
{
	LHPoint transformed = Projection * point;
	u = transformed.x + LightUV.x;
	v = transformed.z + LightUV.z;
	return (transformed.z / ScaleV + Light.z) * Direction.z + (transformed.x / ScaleU + Light.x) * Direction.x;
}

void TShadowInfo::CalcShadowUV_World(LHPoint& point, float* u, float* v, float* depth)
{
	*depth = point.z * Direction.z + Direction.x * point.x;
	float scale = LightUV.y / (point.y - Light.y);
	*u = (point.x - Light.x) * ScaleU * scale + LightUV.x;
	*v = (point.z - Light.z) * ScaleV * scale + LightUV.z;
}

long TShadowInfo::CalcShadow_Clipping(LHPoint& point)
{
	LHPoint transformed = Projection * point;
	if ((transformed.z / ScaleV + Light.z) * Direction.z + (transformed.x / ScaleU + Light.x) * Direction.x < MinDepth)
	{
		return 0;
	}
	float scale = LightUV.y / transformed.y;
	float u = (scale * transformed.x + LightUV.x) * LH3D_SHADOW_UV_SCALE - LH3D_SHADOW_TEXEL_CENTER;
	float v = (scale * transformed.z + LightUV.z) * LH3D_SHADOW_UV_SCALE - LH3D_SHADOW_TEXEL_CENTER;
	if (u < 0.0f || v < 0.0f || u >= LH3D_SHADOW_UV_LIMIT || v >= LH3D_SHADOW_UV_LIMIT)
	{
		return 0;
	}
	int   x = (int)u;
	int   y = (int)v;
	float fractionX = u - x;
	float fractionY = v - y;
	int   a = SoftTri::bit2char[Buffer[y * LH3D_SHADOW_SIZE + x]];
	int   b = SoftTri::bit2char[Buffer[(y + 1) * LH3D_SHADOW_SIZE + x]];
	int   c = SoftTri::bit2char[Buffer[y * LH3D_SHADOW_SIZE + x + 1]];
	int   d = SoftTri::bit2char[Buffer[(y + 1) * LH3D_SHADOW_SIZE + x + 1]];
	int   top = (int)((c - a) * fractionX + a);
	int   bottom = (int)((d - b) * fractionX + b);
	return (int)((bottom - top) * fractionY + top);
}

long TShadowInfo::CalcShadow_World(LHPoint& point)
{
	if (Direction.z * point.z + Direction.x * point.x < MinDepth)
	{
		return 0;
	}
	float scale = LightUV.y / (point.y - Light.y);
	float u = ((point.x - Light.x) * ScaleU * scale + LightUV.x) * LH3D_SHADOW_UV_SCALE - LH3D_SHADOW_TEXEL_CENTER;
	if (u < 0.0f || u >= LH3D_SHADOW_UV_LIMIT)
	{
		return 0;
	}
	float v = ((point.z - Light.z) * ScaleV * scale + LightUV.z) * LH3D_SHADOW_UV_SCALE - LH3D_SHADOW_TEXEL_CENTER;
	if (v < 0.0f || v >= LH3D_SHADOW_UV_LIMIT)
	{
		return 0;
	}
	int   x = (int)u;
	int   y = (int)v;
	float fractionX = u - x;
	float fractionY = v - y;
	int   a = SoftTri::bit2char[Buffer[y * LH3D_SHADOW_SIZE + x]];
	int   b = SoftTri::bit2char[Buffer[(y + 1) * LH3D_SHADOW_SIZE + x]];
	int   c = SoftTri::bit2char[Buffer[y * LH3D_SHADOW_SIZE + x + 1]];
	int   d = SoftTri::bit2char[Buffer[(y + 1) * LH3D_SHADOW_SIZE + x + 1]];
	int   top = (int)((c - a) * fractionX + a);
	int   bottom = (int)((d - b) * fractionX + b);
	return (int)((bottom - top) * fractionY + top);
}

const uint32_t SoftTri::leftmask_top[SOFT_TRI_MASK_COUNT] = {
	0x0f0f0f0f, 0x0f0f0f0e, 0x0f0f0f0c, 0x0f0f0f08, 0x0f0f0f00, 0x0f0f0e00, 0x0f0f0c00, 0x0f0f0800,
	0x0f0f0000, 0x0f0e0000, 0x0f0c0000, 0x0f080000, 0x0f000000, 0x0e000000, 0x0c000000, 0x08000000,
};
const uint32_t SoftTri::rightmask_top[SOFT_TRI_MASK_COUNT] = {
	0x00000000, 0x00000001, 0x00000003, 0x00000007, 0x0000000f, 0x0000010f, 0x0000030f, 0x0000070f,
	0x00000f0f, 0x00010f0f, 0x00030f0f, 0x00070f0f, 0x000f0f0f, 0x010f0f0f, 0x030f0f0f, 0x070f0f0f,
};
const uint32_t SoftTri::leftmask_bottom[SOFT_TRI_MASK_COUNT] = {
	0xf0f0f0f0, 0xf0f0f0e0, 0xf0f0f0c0, 0xf0f0f080, 0xf0f0f000, 0xf0f0e000, 0xf0f0c000, 0xf0f08000,
	0xf0f00000, 0xf0e00000, 0xf0c00000, 0xf0800000, 0xf0000000, 0xe0000000, 0xc0000000, 0x80000000,
};
const uint32_t SoftTri::rightmask_bottom[SOFT_TRI_MASK_COUNT] = {
	0x00000000, 0x00000010, 0x00000030, 0x00000070, 0x000000f0, 0x000010f0, 0x000030f0, 0x000070f0,
	0x0000f0f0, 0x0010f0f0, 0x0030f0f0, 0x0070f0f0, 0x00f0f0f0, 0x10f0f0f0, 0x30f0f0f0, 0x70f0f0f0,
};
const uint32_t SoftTri::fullmask_top = 0x0f0f0f0f;
const uint32_t SoftTri::fullmask_bottom = 0xf0f0f0f0;
