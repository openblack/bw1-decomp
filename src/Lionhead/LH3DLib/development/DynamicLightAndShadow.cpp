#include "DynamicLightAndShadow.h"

#include "LH3DExtraDotLight.h" /* For struct LH3DExtraDotLight */
#include "LH3DIsland.h"        /* For struct LandBlock, class LH3DIsland */
#include "LH3DMath.h"          /* For FloatToInt */

#define DYNAMIC_LIGHT_AND_SHADOW_MAX_LIGHTS 200
#define DYNAMIC_LIGHT_FRAC_ONE              255.0f
#define DYNAMIC_LIGHT_CENTRE_SCALE          5.0f
#define DYNAMIC_LIGHT_MAP_SIZE              512
#define DYNAMIC_LIGHT_BLOCK_CELLS           16
#define DYNAMIC_LIGHT_FRAC_MASK             0xff
#define DYNAMIC_LIGHT_PIXEL_SIZE_1          1
#define DYNAMIC_LIGHT_PIXEL_SIZE_3          3
#define DYNAMIC_LIGHT_PIXEL_SIZE_4          4

static uint32_t                         g_current_nb_stored;
static DynamicLightAndShadow::StoreInfo g_info[DYNAMIC_LIGHT_AND_SHADOW_MAX_LIGHTS];

void __fastcall DynamicLightAndShadow::FillStoreInfo(StoreInfo* info, LHPoint* pos, uint8_t* map, long size,
                                                     bool32_t centred, float intensity, LightType type,
                                                     bool32_t interpolate)
{
	float scaled = intensity * DYNAMIC_LIGHT_FRAC_ONE;
	if (scaled < 0.0f)
	{
		scaled = 0.0f;
	}
	else if (scaled > DYNAMIC_LIGHT_FRAC_ONE)
	{
		scaled = DYNAMIC_LIGHT_FRAC_ONE;
	}
	info->Pos = *pos;
	info->Map = map;
	info->Pitch = size;
	info->Intensity = (uint32_t)scaled;
	info->Type = type;
	info->MaxBlend = interpolate;
	if (centred)
	{
		float offset = (size - 1) * DYNAMIC_LIGHT_CENTRE_SCALE;
		info->Pos.x -= offset;
		info->Pos.z -= offset;
	}
}

void __fastcall DynamicLightAndShadow::AddLight(LHPoint* pos, uint8_t* map, long size, bool32_t centred,
                                                float intensity, LightType type, bool32_t interpolate)
{
	if (g_current_nb_stored < DYNAMIC_LIGHT_AND_SHADOW_MAX_LIGHTS)
	{
		FillStoreInfo(&g_info[g_current_nb_stored], pos, map, size, centred, intensity, type, interpolate);
		g_current_nb_stored++;
	}
}

static inline int GetPitchScale(DynamicLightAndShadow::LightType type)
{
	switch (type)
	{
	case DynamicLightAndShadow::LIGHT_TYPE_LIGHT:
		return DYNAMIC_LIGHT_PIXEL_SIZE_3;
	case DynamicLightAndShadow::LIGHT_TYPE_SHADOW:
		return DYNAMIC_LIGHT_PIXEL_SIZE_1;
	case DynamicLightAndShadow::LIGHT_TYPE_4:
		return DYNAMIC_LIGHT_PIXEL_SIZE_1;
	case DynamicLightAndShadow::LIGHT_TYPE_8:
		return DYNAMIC_LIGHT_PIXEL_SIZE_4;
	}
	return DYNAMIC_LIGHT_PIXEL_SIZE_1;
}

void __fastcall DynamicLightAndShadow::Draw(StoreInfo* info)
{
	uint8_t* map = info->Map;
	info->Visible = true;
	int   pitchScale = GetPitchScale(info->Type);
	float fx = info->Pos.x / LAND_CELL_SIZE;
	float fz = info->Pos.z / LAND_CELL_SIZE;
	info->SizeZ = info->Pitch - 1;
	info->SizeX = info->Pitch - 1;
	info->X = (int)fx;
	info->Z = (int)fz;
	int fracZ;
	if (fz >= 0.0f)
	{
		fracZ = FloatToInt(DYNAMIC_LIGHT_FRAC_ONE - (fz - info->Z) * DYNAMIC_LIGHT_FRAC_ONE);
	}
	else
	{
		fracZ = FloatToInt((info->Z - fz) * DYNAMIC_LIGHT_FRAC_ONE);
		info->Z--;
	}
	int fracX;
	if (fx >= 0.0f)
	{
		fracX = FloatToInt(DYNAMIC_LIGHT_FRAC_ONE - (fx - info->X) * DYNAMIC_LIGHT_FRAC_ONE);
	}
	else
	{
		fracX = FloatToInt((info->X - fx) * DYNAMIC_LIGHT_FRAC_ONE);
		info->X--;
	}
	fracZ &= DYNAMIC_LIGHT_FRAC_MASK;
	fracX &= DYNAMIC_LIGHT_FRAC_MASK;
	if (info->X > DYNAMIC_LIGHT_MAP_SIZE - info->Pitch)
	{
		if (info->X >= DYNAMIC_LIGHT_MAP_SIZE)
		{
			info->Visible = false;
		}
		info->SizeX = DYNAMIC_LIGHT_MAP_SIZE - info->X;
	}
	else if (info->X < 0)
	{
		int sizeX = info->SizeX + info->X;
		if (sizeX < 0)
		{
			info->Visible = false;
		}
		map -= info->X * info->Pitch * pitchScale;
		info->SizeX = sizeX;
		info->X = info->Visible - info->Visible;
	}
	if (info->Z > DYNAMIC_LIGHT_MAP_SIZE - info->Pitch)
	{
		if (info->Z >= DYNAMIC_LIGHT_MAP_SIZE)
		{
			info->Visible = false;
		}
		info->SizeZ = DYNAMIC_LIGHT_MAP_SIZE - info->Z;
	}
	else if (info->Z < 0)
	{
		int sizeZ = info->SizeZ + info->Z;
		if (sizeZ < 0)
		{
			info->Visible = false;
		}
		map -= info->Z * pitchScale;
		info->SizeZ = sizeZ;
		info->Z = 0;
	}
	if (info->Visible)
	{
		int startZ = info->Z / DYNAMIC_LIGHT_BLOCK_CELLS;
		int endX = (info->X + info->SizeX) / DYNAMIC_LIGHT_BLOCK_CELLS + 1;
		int endZ = (info->Z + info->SizeZ) / DYNAMIC_LIGHT_BLOCK_CELLS + 1;
		int startX = info->X / DYNAMIC_LIGHT_BLOCK_CELLS;
		for (int blockX = startX; blockX < endX; blockX++)
		{
			for (int blockZ = startZ; blockZ < endZ; blockZ++)
			{
				int        index = LH3DIsland::GetIndex(blockX, blockZ);
				LandBlock* block = index != 0 ? LH3DIsland::g_ptr_blocks[index] : NULL;
				if (block != NULL && (block->Flags & LAND_BLOCK_IN_FRUSTUM))
				{
					switch (info->Type)
					{
					case LIGHT_TYPE_LIGHT:
						block->DrawSpecular(info, map, fracZ, fracX);
						break;
					case LIGHT_TYPE_SHADOW:
						block->DrawShadow(info, map, fracZ, fracX);
						break;
					}
				}
			}
		}
	}
}

void DynamicLightAndShadow::Draw()
{
	for (uint32_t i = 0; i < g_current_nb_stored; i++)
	{
		Draw(&g_info[i]);
	}
	LH3DExtraDotLight::Draw();
}

void __fastcall DynamicLightAndShadow::Clear(StoreInfo* info)
{
	if (info->Visible && info->Type > 0 && info->Type <= LIGHT_TYPE_SHADOW)
	{
		int startZ = info->Z / DYNAMIC_LIGHT_BLOCK_CELLS;
		int endX = (info->X + info->SizeX) / DYNAMIC_LIGHT_BLOCK_CELLS;
		int endZ = (info->Z + info->SizeZ) / DYNAMIC_LIGHT_BLOCK_CELLS;
		int startX = info->X / DYNAMIC_LIGHT_BLOCK_CELLS;
		for (int blockX = startX; blockX <= endX; blockX++)
		{
			for (int blockZ = startZ; blockZ <= endZ; blockZ++)
			{
				int        index = LH3DIsland::GetIndex(blockX, blockZ);
				LandBlock* block = index != 0 ? LH3DIsland::g_ptr_blocks[index] : NULL;
				if (block != NULL && (block->Flags & LAND_BLOCK_IN_FRUSTUM))
				{
					block->ClearLight();
				}
			}
		}
	}
}

void DynamicLightAndShadow::Clear()
{
	for (uint32_t i = 0; i < g_current_nb_stored; i++)
	{
		Clear(&g_info[i]);
	}
	g_current_nb_stored = 0;
	LH3DExtraDotLight::Clear();
}
