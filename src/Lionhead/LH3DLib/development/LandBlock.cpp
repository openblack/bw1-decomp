#include "LH3DIsland.h"

#include <math.h> /* For sqrt */

#include "LH3DColor.h"     /* For LH3D_SCALE_COLOR */
#include "LH3DMaterial.h"  /* For LH3DMaterial */
#include "LH3DMath.h"      /* For FloatToInt */
#include "LH3DMem.h"       /* For LH3DMem */
#include "LH3DObject.h"    /* For LH3DObject */
#include "LH3DP3.h"        /* For LH3DP3 */
#include "LH3DPrimitive.h" /* For GetLightLevel */
#include "LH3DRender.h"    /* For LH3DRender */
#include "LH3DTech.h"      /* For LH3DTech */
#include "LH3DTexture.h"   /* For LH3DTexture */
#include "MeshLodInfo.h"   /* For MeshLodInfo */
#include "TShadowInfo.h"   /* For TShadowInfo */

#define LAND_LOW_RES_TILE_SCALE     (62.0f / 256.0f)
#define LAND_SMALL_BUMP_TILING      12.0f
#define LAND_LIGHT_MAP_PIXEL_SIZE   3
#define LAND_CELL_METRES            10
#define LAND_LIGHTING_SAMPLE_OFFSET 0.1f
#define LAND_LIGHT_AXES             3.0

inline float Reciprocal(float value)
{
	return 1.0f / value;
}

#define LOW_RES_TILE_INSET Reciprocal(LOW_RES_TEXTURE_SIZE - 1)

inline bool32_t IsFrontFacing(uint16_t a, uint16_t b, uint16_t c)
{
	Vertex3D* points = LH3DTech::g_cache_t_points;
	return (points[c].y - points[a].y) * (points[b].x - points[a].x) -
	           (points[b].y - points[a].y) * (points[c].x - points[a].x) >
	       0.0f;
}

inline void AddTriangle(uint16_t a, uint16_t b, uint16_t c)
{
	LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
	LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
	LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
}

#define ADD_TRIANGLE(v0, v1, v2) AddTriangle(v0, v1, v2);

#define ADD_TRIANGLE_IF_FRONT(v0, v1, v2)                                                                              \
	if (IsFrontFacing(v0, v1, v2))                                                                                     \
	{                                                                                                                  \
		ADD_TRIANGLE(v0, v1, v2)                                                                                       \
	}

#define ADD_TRIANGLE_CLIPPED(v0, v1, v2)                                                                               \
	if (LH3DTech::g_cache_flags[v0] | LH3DTech::g_cache_flags[v1] | LH3DTech::g_cache_flags[v2])                       \
	{                                                                                                                  \
		if ((LH3DTech::g_cache_flags[v0] & LH3DTech::g_cache_flags[v1] & LH3DTech::g_cache_flags[v2]) == 0)            \
		{                                                                                                              \
			LH3DTech::ClipTriangle(v0, v1, v2, LH3DTech::CLIP_CODE_NEAR);                                              \
		}                                                                                                              \
	}                                                                                                                  \
	else                                                                                                               \
	{                                                                                                                  \
		ADD_TRIANGLE_IF_FRONT(v0, v1, v2)                                                                              \
	}

#define ADD_CELL(a, b, c, d)                                                                                           \
	ADD_TRIANGLE_IF_FRONT(a, b, d)                                                                                     \
	ADD_TRIANGLE_IF_FRONT(a, d, c)

#define ADD_CELL_CLIPPED(a, b, c, d)                                                                                   \
	if (LH3DTech::g_cache_flags[a] | LH3DTech::g_cache_flags[b] | LH3DTech::g_cache_flags[c] |                         \
	    LH3DTech::g_cache_flags[d])                                                                                    \
	{                                                                                                                  \
		if ((LH3DTech::g_cache_flags[a] & LH3DTech::g_cache_flags[b] & LH3DTech::g_cache_flags[d]) == 0)               \
		{                                                                                                              \
			LH3DTech::ClipTriangle(a, b, d, LH3DTech::CLIP_CODE_NEAR);                                                 \
		}                                                                                                              \
		if ((LH3DTech::g_cache_flags[a] & LH3DTech::g_cache_flags[c] & LH3DTech::g_cache_flags[d]) == 0)               \
		{                                                                                                              \
			LH3DTech::ClipTriangle(a, d, c, LH3DTech::CLIP_CODE_NEAR);                                                 \
		}                                                                                                              \
	}                                                                                                                  \
	else                                                                                                               \
	{                                                                                                                  \
		ADD_CELL(a, b, c, d)                                                                                           \
	}

#define SELECT_BORDER(list, count)                                                                                     \
	if (MeshLod == LAND_MESH_LOD_0)                                                                                    \
	{                                                                                                                  \
		if (MeshLodType & MESH_LOD_NORTH)                                                                              \
		{                                                                                                              \
			if (MeshLodType & MESH_LOD_EAST)                                                                           \
			{                                                                                                          \
				list = MeshLodInfo::g_NORTH_EAST_01[0];                                                                \
				count = ARRAY_SIZE(MeshLodInfo::g_NORTH_EAST_01);                                                      \
			}                                                                                                          \
			else if (MeshLodType & MESH_LOD_WEST)                                                                      \
			{                                                                                                          \
				list = MeshLodInfo::g_NORTH_WEST_01[0];                                                                \
				count = ARRAY_SIZE(MeshLodInfo::g_NORTH_WEST_01);                                                      \
			}                                                                                                          \
			else                                                                                                       \
			{                                                                                                          \
				list = MeshLodInfo::g_NORTH_01[0];                                                                     \
				count = ARRAY_SIZE(MeshLodInfo::g_NORTH_01);                                                           \
			}                                                                                                          \
		}                                                                                                              \
		else if (MeshLodType & MESH_LOD_SOUTH)                                                                         \
		{                                                                                                              \
			if (MeshLodType & MESH_LOD_EAST)                                                                           \
			{                                                                                                          \
				list = MeshLodInfo::g_SOUTH_EAST_01[0];                                                                \
				count = ARRAY_SIZE(MeshLodInfo::g_SOUTH_EAST_01);                                                      \
			}                                                                                                          \
			else if (MeshLodType & MESH_LOD_WEST)                                                                      \
			{                                                                                                          \
				list = MeshLodInfo::g_SOUTH_WEST_01[0];                                                                \
				count = ARRAY_SIZE(MeshLodInfo::g_SOUTH_WEST_01);                                                      \
			}                                                                                                          \
			else                                                                                                       \
			{                                                                                                          \
				list = MeshLodInfo::g_SOUTH_01[0];                                                                     \
				count = ARRAY_SIZE(MeshLodInfo::g_SOUTH_01);                                                           \
			}                                                                                                          \
		}                                                                                                              \
		else if (MeshLodType & MESH_LOD_EAST)                                                                          \
		{                                                                                                              \
			count = ARRAY_SIZE(MeshLodInfo::g_EAST_01);                                                                \
			list = MeshLodInfo::g_EAST_01[0];                                                                          \
		}                                                                                                              \
		else if (MeshLodType & MESH_LOD_WEST)                                                                          \
		{                                                                                                              \
			count = ARRAY_SIZE(MeshLodInfo::g_WEST_01);                                                                \
			list = MeshLodInfo::g_WEST_01[0];                                                                          \
		}                                                                                                              \
	}                                                                                                                  \
	else if (MeshLod == LAND_MESH_LOD_1)                                                                               \
	{                                                                                                                  \
		if (MeshLodType & MESH_LOD_NORTH)                                                                              \
		{                                                                                                              \
			if (MeshLodType & MESH_LOD_EAST)                                                                           \
			{                                                                                                          \
				count = ARRAY_SIZE(MeshLodInfo::g_NORTH_EAST_12);                                                      \
				list = MeshLodInfo::g_NORTH_EAST_12[0];                                                                \
			}                                                                                                          \
			else if (MeshLodType & MESH_LOD_WEST)                                                                      \
			{                                                                                                          \
				count = ARRAY_SIZE(MeshLodInfo::g_NORTH_WEST_12);                                                      \
				list = MeshLodInfo::g_NORTH_WEST_12[0];                                                                \
			}                                                                                                          \
			else                                                                                                       \
			{                                                                                                          \
				list = MeshLodInfo::g_NORTH_12[0];                                                                     \
				count = ARRAY_SIZE(MeshLodInfo::g_NORTH_12);                                                           \
			}                                                                                                          \
		}                                                                                                              \
		else if (MeshLodType & MESH_LOD_SOUTH)                                                                         \
		{                                                                                                              \
			if (MeshLodType & MESH_LOD_EAST)                                                                           \
			{                                                                                                          \
				count = ARRAY_SIZE(MeshLodInfo::g_SOUTH_EAST_12);                                                      \
				list = MeshLodInfo::g_SOUTH_EAST_12[0];                                                                \
			}                                                                                                          \
			else if (MeshLodType & MESH_LOD_WEST)                                                                      \
			{                                                                                                          \
				count = ARRAY_SIZE(MeshLodInfo::g_SOUTH_WEST_12);                                                      \
				list = MeshLodInfo::g_SOUTH_WEST_12[0];                                                                \
			}                                                                                                          \
			else                                                                                                       \
			{                                                                                                          \
				list = MeshLodInfo::g_SOUTH_12[0];                                                                     \
				count = ARRAY_SIZE(MeshLodInfo::g_SOUTH_12);                                                           \
			}                                                                                                          \
		}                                                                                                              \
		else if (MeshLodType & MESH_LOD_EAST)                                                                          \
		{                                                                                                              \
			count = ARRAY_SIZE(MeshLodInfo::g_EAST_12);                                                                \
			list = MeshLodInfo::g_EAST_12[0];                                                                          \
		}                                                                                                              \
		else if (MeshLodType & MESH_LOD_WEST)                                                                          \
		{                                                                                                              \
			count = ARRAY_SIZE(MeshLodInfo::g_WEST_12);                                                                \
			list = MeshLodInfo::g_WEST_12[0];                                                                          \
		}                                                                                                              \
	}

#define LAND_BLEND_8(from, to, fraction) (((((to) - (from)) * (fraction) >> 8) + (from)) & 0xff)

#define LAND_LIGHT_CHANNEL(light, map, row, channel, frac_z, frac_x, intensity)                                        \
	{                                                                                                                  \
		unsigned long top = LAND_BLEND_8((map)[channel], (map)[(channel) + LAND_LIGHT_MAP_PIXEL_SIZE], frac_z);        \
		unsigned long bottom =                                                                                         \
			LAND_BLEND_8((map)[(row) + (channel)], (map)[(row) + (channel) + LAND_LIGHT_MAP_PIXEL_SIZE], frac_z);      \
		light = LAND_BLEND_8(top, bottom, frac_x) * (intensity) / LAND_CELL_MAX_DARKNESS;                              \
	}

LandBlock* LandBlock::g_first_sorting = NULL;
bool32_t   LandBlock::g_draw_reflection = false;

bool32_t LandBlock::Draw()
{
	if (LH3DTech::g_b_P3)
	{
		return LH3DP3::DrawLandBlock(this);
	}
	int            step = 1 << MeshLod;
	Vertex3D*      vertex = LH3DTech::g_cache_t_points;
	unsigned long* clip = LH3DTech::g_cache_flags;
	float          startV = 0.0f;
	float          meterStep = step * MAP_COORDS_METRES_PER_CELL;
	float          uvStep = step * (1.0f / LAND_MESH_LOD_0_CELLS);
	float          startU = 0.0f;
	int            rowSkip = LAND_BLOCK_SIDE_POINTS * step - (step + LAND_MESH_LOD_0_CELLS);
	if (TextureLod == LAND_TEXTURE_LOD_LOW)
	{
		uvStep *= LAND_LOW_RES_TILE_SCALE;
		startV = LowResV + LOW_RES_TILE_INSET;
		startU = LowResU + LOW_RES_TILE_INSET;
	}
	float     x = X;
	LandCell* cell = &Cells[0][0];
	int       xi = 0;
	int       zi;
	float     y;
	float     z;
	LH3DColor fogColor;
	uint32_t  fadeWeight;
	if (FogMode != LAND_FOG_NONE)
	{
		for (; xi < LAND_BLOCK_SIDE_POINTS; xi += step)
		{
			z = Z;
			float tu = startU;
			for (zi = 0; zi < LAND_BLOCK_SIDE_POINTS;)
			{
				vertex->specular = *(uint32_t*)cell | 0xff000000;
				vertex->color = LandCell::g_darkness_to_color[cell->darkness];
				int altitude = cell->altitude;
				y = altitude * LH3DIsland::g_height_unit;
				if (altitude <= LAND_CELL_SEA_ALTITUDE)
				{
					y = 0.0f;
					if (DrawSmallBump && altitude <= LAND_CELL_SHORE_ALTITUDE)
					{
						vertex->specular &= 0x00ffffff;
					}
				}
				vertex->x = LH3DTech::g_world_to_clipping._21 * y + LH3DTech::g_world_to_clipping._31 * z +
				            LH3DTech::g_world_to_clipping._11 * x + LH3DTech::g_world_to_clipping._41;
				vertex->y = LH3DTech::g_world_to_clipping._22 * y + LH3DTech::g_world_to_clipping._32 * z +
				            LH3DTech::g_world_to_clipping._12 * x + LH3DTech::g_world_to_clipping._42;
				vertex->rhw = LH3DTech::g_world_to_clipping._23 * y + LH3DTech::g_world_to_clipping._33 * z +
				              LH3DTech::g_world_to_clipping._13 * x + LH3DTech::g_world_to_clipping._43;
				if (FogMode == LAND_FOG_FULL)
				{
					fogColor = LH3DIsland::g_max_color_fog;
					fadeWeight = LH3DIsland::g_max_fadefac;
				}
				else
				{
					float depth = vertex->rhw;
					if (depth < LH3DIsland::g_fog_min)
					{
						depth = LH3DIsland::g_fog_min;
					}
					else if (depth > LH3DIsland::g_fog_max)
					{
						depth = LH3DIsland::g_fog_max;
					}
					float fogAmount = (depth - LH3DIsland::g_fog_min) / LH3DIsland::g_fog_delta;
					fadeWeight = LAND_WEIGHT_ONE - (int)((LAND_WEIGHT_ONE - LH3DIsland::g_max_fadefac) * fogAmount);
					int red = FloatToInt(LH3DIsland::g_max_fogr * fogAmount);
					int green = FloatToInt(LH3DIsland::g_max_fogg * fogAmount);
					int blue = FloatToInt(LH3DIsland::g_max_fogb * fogAmount);
					fogColor = RGB_MAKE(red, green, blue);
				}
				if (vertex->specular != 0)
				{
					LH3DColor* specular = (LH3DColor*)&vertex->specular;
					uint32_t   red = specular->r + fogColor.r;
					if (red > 0xff)
					{
						red = 0xff;
					}
					uint32_t green = specular->g + fogColor.g;
					if (green > 0xff)
					{
						green = 0xff;
					}
					uint32_t blue = specular->b + fogColor.b;
					if (blue > 0xff)
					{
						blue = 0xff;
					}
					vertex->specular = RGBA_MAKE(red, green, blue, specular->a);
				}
				else
				{
					vertex->specular = fogColor.GetColor();
				}
				if (fadeWeight < LAND_WEIGHT_ONE)
				{
					vertex->color = LH3D_SCALE_COLOR(vertex->color, fadeWeight);
				}
				if (NeedClipping)
				{
					if (vertex->rhw < LH3DTech::g_info_transform.NearClip)
					{
						*clip = LH3DTech::CLIP_CODE_NEAR;
					}
					else
					{
						*clip = 0;
					}
					if (vertex->x > vertex->rhw)
					{
						*clip |= LH3DTech::CLIP_CODE_RIGHT;
					}
					else if (-vertex->rhw > vertex->x)
					{
						*clip |= LH3DTech::CLIP_CODE_LEFT;
					}
					if (vertex->y > vertex->rhw)
					{
						*clip |= LH3DTech::CLIP_CODE_TOP;
					}
					else if (-vertex->rhw > vertex->y)
					{
						*clip |= LH3DTech::CLIP_CODE_BOTTOM;
					}
					if (*clip == 0)
					{
						vertex->rhw = 1.0f / vertex->rhw;
						vertex->x = (vertex->x * vertex->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
						if (vertex->x < 0.0f)
						{
							vertex->x = 0.0f;
						}
						else if (vertex->x > LH3DTech::g_max_screen[0])
						{
							vertex->x = LH3DTech::g_max_screen[0];
						}
						vertex->y = LH3DTech::g_info_transform.HalfRes.y -
						            (vertex->rhw * vertex->y) * LH3DTech::g_info_transform.HalfRes.y;
						if (vertex->y < 0.0f)
						{
							vertex->y = 0.0f;
						}
						else if (vertex->y > LH3DTech::g_max_screen[1])
						{
							vertex->y = LH3DTech::g_max_screen[1];
						}
						vertex->rhw = LH3DTech::g_info_transform.NearClip * vertex->rhw;
						vertex->z = 1.0f - vertex->rhw;
					}
				}
				else
				{
					vertex->rhw = 1.0f / vertex->rhw;
					vertex->x = (vertex->x * vertex->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (vertex->x < 0.0f)
					{
						vertex->x = 0.0f;
					}
					else if (vertex->x > LH3DTech::g_max_screen[0])
					{
						vertex->x = LH3DTech::g_max_screen[0];
					}
					vertex->y = LH3DTech::g_info_transform.HalfRes.y -
					            (vertex->rhw * vertex->y) * LH3DTech::g_info_transform.HalfRes.y;
					if (vertex->y < 0.0f)
					{
						vertex->y = 0.0f;
					}
					else if (vertex->y > LH3DTech::g_max_screen[1])
					{
						vertex->y = LH3DTech::g_max_screen[1];
					}
					vertex->rhw = LH3DTech::g_info_transform.NearClip * vertex->rhw;
					vertex->z = 1.0f - vertex->rhw;
				}
				vertex->uv.Set(tu, startV);
				z += meterStep;
				tu += uvStep;
				cell += step;
				zi += step;
				clip++;
				vertex++;
			}
			x += meterStep;
			cell += rowSkip;
			startV += uvStep;
		}
	}
	else
	{
		for (; xi < LAND_BLOCK_SIDE_POINTS; xi += step)
		{
			z = Z;
			float tu = startU;
			for (zi = 0; zi < LAND_BLOCK_SIDE_POINTS;)
			{
				vertex->specular = *(uint32_t*)cell | 0xff000000;
				int altitude = cell->altitude;
				vertex->color = LandCell::g_darkness_to_color[cell->darkness];
				y = altitude * LH3DIsland::g_height_unit;
				if (altitude <= LAND_CELL_SEA_ALTITUDE)
				{
					y = 0.0f;
					if (DrawSmallBump && altitude <= LAND_CELL_SHORE_ALTITUDE)
					{
						vertex->specular &= 0x00ffffff;
					}
				}
				vertex->x = LH3DTech::g_world_to_clipping._21 * y + LH3DTech::g_world_to_clipping._31 * z +
				            LH3DTech::g_world_to_clipping._11 * x + LH3DTech::g_world_to_clipping._41;
				vertex->y = LH3DTech::g_world_to_clipping._22 * y + LH3DTech::g_world_to_clipping._32 * z +
				            LH3DTech::g_world_to_clipping._12 * x + LH3DTech::g_world_to_clipping._42;
				vertex->rhw = LH3DTech::g_world_to_clipping._23 * y + LH3DTech::g_world_to_clipping._33 * z +
				              LH3DTech::g_world_to_clipping._13 * x + LH3DTech::g_world_to_clipping._43;
				if (NeedClipping)
				{
					if (vertex->rhw < LH3DTech::g_info_transform.NearClip)
					{
						*clip = LH3DTech::CLIP_CODE_NEAR;
					}
					else
					{
						*clip = 0;
					}
					if (vertex->x > vertex->rhw)
					{
						*clip |= LH3DTech::CLIP_CODE_RIGHT;
					}
					else if (-vertex->rhw > vertex->x)
					{
						*clip |= LH3DTech::CLIP_CODE_LEFT;
					}
					if (vertex->y > vertex->rhw)
					{
						*clip |= LH3DTech::CLIP_CODE_TOP;
					}
					else if (-vertex->rhw > vertex->y)
					{
						*clip |= LH3DTech::CLIP_CODE_BOTTOM;
					}
					if (*clip == 0)
					{
						vertex->rhw = 1.0f / vertex->rhw;
						vertex->x = (vertex->x * vertex->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
						if (vertex->x < 0.0f)
						{
							vertex->x = 0.0f;
						}
						else if (vertex->x > LH3DTech::g_max_screen[0])
						{
							vertex->x = LH3DTech::g_max_screen[0];
						}
						vertex->y = LH3DTech::g_info_transform.HalfRes.y -
						            (vertex->rhw * vertex->y) * LH3DTech::g_info_transform.HalfRes.y;
						if (vertex->y < 0.0f)
						{
							vertex->y = 0.0f;
						}
						else if (vertex->y > LH3DTech::g_max_screen[1])
						{
							vertex->y = LH3DTech::g_max_screen[1];
						}
						vertex->rhw = LH3DTech::g_info_transform.NearClip * vertex->rhw;
						vertex->z = 1.0f - vertex->rhw;
					}
				}
				else
				{
					vertex->rhw = 1.0f / vertex->rhw;
					vertex->x = (vertex->x * vertex->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (vertex->x < 0.0f)
					{
						vertex->x = 0.0f;
					}
					else if (vertex->x > LH3DTech::g_max_screen[0])
					{
						vertex->x = LH3DTech::g_max_screen[0];
					}
					vertex->y = LH3DTech::g_info_transform.HalfRes.y -
					            (vertex->rhw * vertex->y) * LH3DTech::g_info_transform.HalfRes.y;
					if (vertex->y < 0.0f)
					{
						vertex->y = 0.0f;
					}
					else if (vertex->y > LH3DTech::g_max_screen[1])
					{
						vertex->y = LH3DTech::g_max_screen[1];
					}
					vertex->rhw = LH3DTech::g_info_transform.NearClip * vertex->rhw;
					vertex->z = 1.0f - vertex->rhw;
				}
				vertex->uv.Set(tu, startV);
				z += meterStep;
				tu += uvStep;
				cell += step;
				zi += step;
				clip++;
				vertex++;
			}
			x += meterStep;
			cell += rowSkip;
			startV += uvStep;
		}
	}
	int side = LAND_MESH_LOD_0_CELLS / step + 1;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = side * side;
	if (NeedClipping)
	{
		CreateListPoly(MeshLod);
	}
	else
	{
		CreateListPolyUnclipped(MeshLod);
	}
	bool32_t drawn = false;
	if (LH3DTech::g_index_count != 0)
	{
		if (DrawFlags & LAND_BLOCK_DRAW_FLAG_BEFORE)
		{
			DrawBefore();
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
		}
		drawn = true;
		if (TextureLod != LAND_TEXTURE_LOD_LOW)
		{
			LH3DRender::SetMaterial(Material, 0);
			if (LH3DIsland::g_ptr_blocks[Index]->UseLowResTexture)
			{
				LH3DRender::SetMaterial(LowRes->Material, 0);
				LowResU += LOW_RES_TILE_INSET;
				LowResV += LOW_RES_TILE_INSET;
				for (int i = 0; i < LH3DTech::g_points_count; i++)
				{
					Vertex3D* point = &LH3DTech::g_cache_t_points[i];
					point->uv.x = point->uv.x * LAND_LOW_RES_TILE_SCALE + LowResU;
					point->uv.y = point->uv.y * LAND_LOW_RES_TILE_SCALE + LowResV;
				}
				LowResU -= LOW_RES_TILE_INSET;
				LowResV -= LOW_RES_TILE_INSET;
				LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
				                         LH3DTech::g_index_count);
				return true;
			}
		}
		else
		{
			LH3DRender::SetMaterial(LowRes->Material, 0);
		}
		LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                         LH3DTech::g_index_count);
		if (TextureLod == LAND_TEXTURE_LOD_BLEND)
		{
			LH3DRender::SetMaterial(LowRes->Material, 0);
			float alphaScale = 255.0f / LH3DIsland::g_texture_lod.Width;
			LowResU += LOW_RES_TILE_INSET;
			LowResV += LOW_RES_TILE_INSET;
			for (int i = 0; i < LH3DTech::g_points_count; i++)
			{
				Vertex3D* point = &LH3DTech::g_cache_t_points[i];
				float     distance = (point->uv.y * (LAND_MESH_LOD_0_CELLS * MAP_COORDS_METRES_PER_CELL) + X -
				                      LH3DIsland::g_texture_lod.Point.x) *
				                         LH3DIsland::g_texture_lod.Normal.z -
				                     (point->uv.x * (LAND_MESH_LOD_0_CELLS * MAP_COORDS_METRES_PER_CELL) + Z -
				                      LH3DIsland::g_texture_lod.Point.z) *
				                         LH3DIsland::g_texture_lod.Normal.x;
				point->uv.x = point->uv.x * LAND_LOW_RES_TILE_SCALE + LowResU;
				point->uv.y = point->uv.y * LAND_LOW_RES_TILE_SCALE + LowResV;
				if (distance > LH3DIsland::g_texture_lod.HalfWidth)
				{
					point->color &= 0x00ffffff;
				}
				else if (-LH3DIsland::g_texture_lod.HalfWidth < distance)
				{
					int alpha = FloatToInt((LH3DIsland::g_texture_lod.HalfWidth - distance) * alphaScale);
					point->color = (point->color & 0x00ffffff) | (alpha << 24);
				}
			}
			LowResU -= LOW_RES_TILE_INSET;
			LowResV -= LOW_RES_TILE_INSET;
			LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
			                         LH3DTech::g_index_count);
		}
		if (DrawSmallBump)
		{
			LH3DRender::SetMaterial(LH3DIsland::g_bump_material, 0);
			float alphaScale = 255.0f / LH3DIsland::g_sbump_lod.Width;
			if (TextureLod == LAND_TEXTURE_LOD_BLEND || TextureLod == LAND_TEXTURE_LOD_LOW)
			{
				for (int i = 0; i < LH3DTech::g_points_count; i++)
				{
					Vertex3D* point = &LH3DTech::g_cache_t_points[i];
					point->uv.x = (point->uv.x - LowResU) * LOW_RES_TEXTURE_TILES_SIDE;
					point->uv.y = (point->uv.y - LowResV) * LOW_RES_TEXTURE_TILES_SIDE;
					float distance = (point->uv.y * (LAND_MESH_LOD_0_CELLS * MAP_COORDS_METRES_PER_CELL) + X -
					                  LH3DIsland::g_sbump_lod.Point.x) *
					                     LH3DIsland::g_sbump_lod.Normal.z -
					                 (point->uv.x * (LAND_MESH_LOD_0_CELLS * MAP_COORDS_METRES_PER_CELL) + Z -
					                  LH3DIsland::g_sbump_lod.Point.z) *
					                     LH3DIsland::g_sbump_lod.Normal.x;
					if (distance < LH3DIsland::g_sbump_lod.HalfWidth)
					{
						if (-LH3DIsland::g_sbump_lod.HalfWidth < distance)
						{
							int alpha =
								FloatToInt(255.0f - (LH3DIsland::g_sbump_lod.HalfWidth - distance) * alphaScale);
							if (point->specular & 0xff000000)
							{
								point->color = (alpha << 24) | 0x00ffffff;
							}
							else
							{
								point->color = 0;
							}
						}
						else
						{
							point->color = 0;
						}
					}
					else
					{
						point->color = point->specular | 0x00ffffff;
					}
					point->uv.x *= LAND_SMALL_BUMP_TILING;
					point->uv.y *= LAND_SMALL_BUMP_TILING;
				}
			}
			else
			{
				for (int i = 0; i < LH3DTech::g_points_count; i++)
				{
					Vertex3D* point = &LH3DTech::g_cache_t_points[i];
					float     distance = (point->uv.y * (LAND_MESH_LOD_0_CELLS * MAP_COORDS_METRES_PER_CELL) + X -
					                      LH3DIsland::g_sbump_lod.Point.x) *
					                         LH3DIsland::g_sbump_lod.Normal.z -
					                     (point->uv.x * (LAND_MESH_LOD_0_CELLS * MAP_COORDS_METRES_PER_CELL) + Z -
					                      LH3DIsland::g_sbump_lod.Point.z) *
					                         LH3DIsland::g_sbump_lod.Normal.x;
					if (distance < LH3DIsland::g_sbump_lod.HalfWidth)
					{
						if (-LH3DIsland::g_sbump_lod.HalfWidth < distance)
						{
							int alpha =
								FloatToInt(255.0f - (LH3DIsland::g_sbump_lod.HalfWidth - distance) * alphaScale);
							if (point->specular & 0xff000000)
							{
								point->color = (alpha << 24) | 0x00ffffff;
							}
							else
							{
								point->color = 0;
							}
						}
						else
						{
							point->color = 0;
						}
					}
					else
					{
						point->color = point->specular | 0x00ffffff;
					}
					point->uv.x *= LAND_SMALL_BUMP_TILING;
					point->uv.y *= LAND_SMALL_BUMP_TILING;
				}
			}
			int triangles = LH3DTech::g_index_count / 3;
			int count = 0;
			for (int i = 0, j = 0; j < triangles; j++, i += 3)
			{
				uint16_t a = LH3DTech::g_list_indices[i];
				uint16_t b = LH3DTech::g_list_indices[i + 1];
				uint16_t c = LH3DTech::g_list_indices[i + 2];
				if ((LH3DTech::g_cache_t_points[a].color & 0xff000000) ||
				    (LH3DTech::g_cache_t_points[b].color & 0xff000000) ||
				    (LH3DTech::g_cache_t_points[c].color & 0xff000000))
				{
					LH3DTech::g_list_indices_2[count] = a;
					LH3DTech::g_list_indices_2[count + 1] = b;
					LH3DTech::g_list_indices_2[count + 2] = c;
					count += 3;
				}
			}
			if (count != 0)
			{
				LH3DRender::PushTillingMode(0);
				LH3DRender::SetD3DTillingOn(0);
				LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count,
				                         LH3DTech::g_list_indices_2, count);
				LH3DRender::SetD3DTillingOff(0);
				LH3DRender::PopTillingMode(0);
			}
		}
		if (DrawFlags & LAND_BLOCK_DRAW_FLAG_BEFORE)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
		}
		if (DrawFlags & LAND_BLOCK_DRAW_FLAG_AFTER)
		{
			uint32_t before = DrawFlags & LAND_BLOCK_DRAW_FLAG_BEFORE;
			if (before)
			{
				LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
			}
			DrawAfter();
			if (before)
			{
				LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
			}
		}
	}
	return drawn;
}

void __fastcall LandBlock::CreateListPoly(LandMeshLOD lod)
{
#ifndef VERSION_BW1W100
	if (LH3DTech::g_b_P3)
	{
		LH3DP3::CreateListPolyWrapper(this, lod);
		return;
	}
#endif
	int          rowStep = 1;
	MeshLodInfo* info = &MeshLodInfo::g_mesh_lod_info[MeshLodType];
	int          startX;
	int          endX;
	int          startZ;
	int          endZ;
	uint16_t     v00;
	uint16_t     v01;
	uint16_t     v10;
	uint16_t     v11;
	switch (lod)
	{
	case LAND_MESH_LOD_0:
		startX = info->North;
		endX = LAND_MESH_LOD_0_CELLS - info->South;
		startZ = info->West;
		endZ = LAND_MESH_LOD_0_CELLS - info->East;
		v00 = startX ? LAND_MESH_LOD_0_CELLS + 1 : 0;
		if (startZ)
		{
			v00++;
		}
		v01 = v00 + 1;
		v10 = v00 + LAND_MESH_LOD_0_CELLS + 1;
		v11 = v00 + LAND_MESH_LOD_0_CELLS + 2;
		if (info->West || info->East)
		{
			rowStep = 2;
		}
		break;
	case LAND_MESH_LOD_1:
		startX = info->North;
		endX = LAND_MESH_LOD_1_CELLS - info->South;
		startZ = info->West;
		endZ = LAND_MESH_LOD_1_CELLS - info->East;
		v00 = startX ? LAND_MESH_LOD_1_CELLS + 1 : 0;
		if (startZ)
		{
			v00++;
		}
		v01 = v00 + 1;
		v10 = v00 + LAND_MESH_LOD_1_CELLS + 1;
		v11 = v00 + LAND_MESH_LOD_1_CELLS + 2;
		if (info->West || info->East)
		{
			rowStep = 2;
		}
		break;
	case LAND_MESH_LOD_2:
		startX = 0;
		endX = LAND_MESH_LOD_2_CELLS;
		startZ = 0;
		endZ = LAND_MESH_LOD_2_CELLS;
		v00 = 0;
		v01 = 1;
		v10 = LAND_MESH_LOD_2_CELLS + 1;
		v11 = LAND_MESH_LOD_2_CELLS + 2;
		break;
	}

	if (g_draw_reflection)
	{
		int swap = v01;
		v01 = v10;
		v10 = swap;
	}

	LandCell* cell = &Cells[0][0];
	LH3DTech::g_clip_with_double_sided = false;
	if (MeshLodZone == LAND_MESH_ZONE_NEAR)
	{
		for (int x = startX; x < endX; x++, cell++)
		{
			for (int z = startZ; z < endZ; z++, cell++)
			{
				uint16_t flags = cell->Flags;
				if ((flags & LAND_CELL_SUBMERGED) == 0)
				{
					if (flags & LAND_CELL_SPLIT)
					{
						ADD_CELL_CLIPPED(v01, v11, v00, v10)
					}
					else
					{
						ADD_CELL_CLIPPED(v00, v01, v10, v11)
					}
				}
				v00++;
				v01++;
				v10++;
				v11++;
			}
			v00 += rowStep;
			v01 += rowStep;
			v10 += rowStep;
			v11 += rowStep;
		}
	}
	else
	{
		for (int x = startX; x < endX; x++, cell++)
		{
			for (int z = startZ; z < endZ; z++, cell++)
			{
				if (cell->Flags & LAND_CELL_SPLIT)
				{
					ADD_CELL_CLIPPED(v01, v11, v00, v10)
				}
				else
				{
					ADD_CELL_CLIPPED(v00, v01, v10, v11)
				}
				v00++;
				v01++;
				v10++;
				v11++;
			}
			v00 += rowStep;
			v01 += rowStep;
			v10 += rowStep;
			v11 += rowStep;
		}
	}

	if (MeshLodInfo::g_mesh_lod_info[MeshLodType].HasBorder)
	{
		const uint16_t* list;
		int             count = 0;
		SELECT_BORDER(list, count)
		LH3DTech::g_clip_with_double_sided = false;
		if (g_draw_reflection)
		{
			for (int i = 0; i < count; i++)
			{
				uint16_t a = list[0];
				uint16_t b = list[2];
				uint16_t c = list[1];
				ADD_TRIANGLE_CLIPPED(a, b, c)
				list += 3;
			}
		}
		else
		{
			for (int i = 0; i < count; i++)
			{
				uint16_t a = list[0];
				uint16_t b = list[1];
				uint16_t c = list[2];
				ADD_TRIANGLE_CLIPPED(a, b, c)
				list += 3;
			}
		}
	}
}

void __fastcall LandBlock::CreateListPolyUnclipped(LandMeshLOD lod)
{
#ifndef VERSION_BW1W100
	if (LH3DTech::g_b_P3)
	{
		LH3DP3::CreateListPolyUnclippedWrapper(this, lod);
		return;
	}
#endif
	int          rowStep = 1;
	MeshLodInfo* info = &MeshLodInfo::g_mesh_lod_info[MeshLodType];
	int          startX;
	int          endX;
	int          startZ;
	int          endZ;
	uint16_t     v00;
	uint16_t     v01;
	uint16_t     v10;
	uint16_t     v11;
	switch (lod)
	{
	case LAND_MESH_LOD_0:
		startX = info->North;
		endX = LAND_MESH_LOD_0_CELLS - info->South;
		startZ = info->West;
		endZ = LAND_MESH_LOD_0_CELLS - info->East;
		v00 = startX ? LAND_MESH_LOD_0_CELLS + 1 : 0;
		if (startZ)
		{
			v00++;
		}
		v01 = v00 + 1;
		v10 = v00 + LAND_MESH_LOD_0_CELLS + 1;
		v11 = v00 + LAND_MESH_LOD_0_CELLS + 2;
		if (info->West || info->East)
		{
			rowStep = 2;
		}
		break;
	case LAND_MESH_LOD_1:
		startX = info->North;
		endX = LAND_MESH_LOD_1_CELLS - info->South;
		startZ = info->West;
		endZ = LAND_MESH_LOD_1_CELLS - info->East;
		v00 = startX ? LAND_MESH_LOD_1_CELLS + 1 : 0;
		if (startZ)
		{
			v00++;
		}
		v01 = v00 + 1;
		v10 = v00 + LAND_MESH_LOD_1_CELLS + 1;
		v11 = v00 + LAND_MESH_LOD_1_CELLS + 2;
		if (info->West || info->East)
		{
			rowStep = 2;
		}
		break;
	case LAND_MESH_LOD_2:
		startX = 0;
		endX = LAND_MESH_LOD_2_CELLS;
		startZ = 0;
		endZ = LAND_MESH_LOD_2_CELLS;
		v00 = 0;
		v01 = 1;
		v10 = LAND_MESH_LOD_2_CELLS + 1;
		v11 = LAND_MESH_LOD_2_CELLS + 2;
		break;
	}

	if (g_draw_reflection)
	{
		uint16_t swap = v01;
		v01 = v10;
		v10 = swap;
	}

	LandCell* cell = &Cells[0][0];
	LH3DTech::g_clip_with_double_sided = false;
	if (MeshLodZone == LAND_MESH_ZONE_NEAR)
	{
		for (int x = startX; x < endX; x++, cell++)
		{
			for (int z = startZ; z < endZ; z++, cell++)
			{
				if ((cell->Flags & LAND_CELL_SUBMERGED) == 0)
				{
					if (cell->Flags & LAND_CELL_SPLIT)
					{
						ADD_CELL(v01, v11, v00, v10)
					}
					else
					{
						ADD_CELL(v00, v01, v10, v11)
					}
				}
				v00++;
				v01++;
				v10++;
				v11++;
			}
			v00 += rowStep;
			v01 += rowStep;
			v10 += rowStep;
			v11 += rowStep;
		}
	}
	else
	{
		for (int x = startX; x < endX; x++, cell++)
		{
			for (int z = startZ; z < endZ; z++, cell++)
			{
				if (cell->Flags & LAND_CELL_SPLIT)
				{
					ADD_CELL(v01, v11, v00, v10)
				}
				else
				{
					ADD_CELL(v00, v01, v10, v11)
				}
				v00++;
				v01++;
				v10++;
				v11++;
			}
			v00 += rowStep;
			v01 += rowStep;
			v10 += rowStep;
			v11 += rowStep;
		}
	}

	if (MeshLodInfo::g_mesh_lod_info[MeshLodType].HasBorder)
	{
		const uint16_t* list;
		int             count = 0;
		SELECT_BORDER(list, count)
		LH3DTech::g_clip_with_double_sided = false;
		if (g_draw_reflection)
		{
			for (int i = 0; i < count; i++)
			{
				uint16_t a = list[0];
				uint16_t b = list[2];
				uint16_t c = list[1];
				ADD_TRIANGLE_IF_FRONT(a, b, c)
				list += 3;
			}
		}
		else
		{
			for (int i = 0; i < count; i++)
			{
				uint16_t a = list[0];
				uint16_t b = list[1];
				uint16_t c = list[2];
				ADD_TRIANGLE_IF_FRONT(a, b, c)
				list += 3;
			}
		}
	}
}

void LandBlock::ComputeInfo()
{
	if (!UseLowResTexture)
	{
		UseLowResTexture = LH3DIsland::g_b_use_always_low_texture;
	}
	int     maxAltitude = MaxAltitude;
	LHPoint center;
	LHPoint size;
	center.x = X + LAND_BLOCK_WIDTH * 0.5f;
	if (LH3DIsland::g_b_draw_reflection)
	{
		center.y = 0.0f;
		center.z = Z + LAND_BLOCK_WIDTH * 0.5f;
		size.x = LAND_BLOCK_WIDTH * 0.5f;
		size.y = maxAltitude * LH3DIsland::g_height_unit;
		size.z = LAND_BLOCK_WIDTH * 0.5f;
	}
	else
	{
		size.x = LAND_BLOCK_WIDTH * 0.5f;
		size.y = maxAltitude * LH3DIsland::g_height_unit * 0.5f;
		size.z = LAND_BLOCK_WIDTH * 0.5f;
		center.y = size.y;
		center.z = Z + LAND_BLOCK_WIDTH * 0.5f;
	}

	uint32_t outsideRight = 0;
	uint32_t outsideNear = 0;
	uint32_t outsideBottom = 0;
	uint32_t outsideTop = 0;
	uint32_t outsideLeft = 0;
	uint32_t fogZone = 0;
	for (int corner = 0; corner < 8; corner++)
	{
		uint32_t bit = 1 << corner;
		LHPoint  point;
		switch (corner)
		{
		case 0:
			point.x = center.x + size.x;
			point.y = center.y + size.y;
			point.z = center.z + size.z;
			break;
		case 1:
			point.x = center.x - size.x;
			point.y = center.y + size.y;
			point.z = center.z + size.z;
			break;
		case 2:
			point.x = center.x + size.x;
			point.y = center.y + size.y;
			point.z = center.z - size.z;
			break;
		case 3:
			point.x = center.x + size.x;
			point.y = center.y - size.y;
			point.z = center.z + size.z;
			break;
		case 4:
			point.x = center.x - size.x;
			point.y = center.y + size.y;
			point.z = center.z - size.z;
			break;
		case 5:
			point.x = center.x + size.x;
			point.y = center.y - size.y;
			point.z = center.z - size.z;
			break;
		case 6:
			point.x = center.x - size.x;
			point.y = center.y - size.y;
			point.z = center.z - size.z;
			break;
		default:
			point.x = center.x - size.x;
			point.y = center.y - size.y;
			point.z = center.z + size.z;
			break;
		}
		LHPoint clip = LH3DTech::g_world_to_clipping * point;
		if (clip.z < LH3DTech::g_info_transform.NearClip)
		{
			outsideNear |= bit;
		}
		if (clip.x > clip.z)
		{
			outsideRight |= bit;
		}
		else if (-clip.z > clip.x)
		{
			outsideLeft |= bit;
		}
		if (clip.y > clip.z)
		{
			outsideTop |= bit;
		}
		else if (-clip.z > clip.y)
		{
			outsideBottom |= bit;
		}
		if (clip.z > LH3DIsland::g_fog_min)
		{
			if (clip.z > LH3DIsland::g_fog_max)
			{
				fogZone |= 2;
			}
			else
			{
				fogZone |= 1;
			}
		}
	}

	if (LH3DIsland::g_b_use_fog && fogZone != 0)
	{
		if (fogZone & 1)
		{
			FogMode = LAND_FOG_PARTIAL;
		}
		else
		{
			FogMode = LAND_FOG_FULL;
		}
	}
	else
	{
		FogMode = LAND_FOG_NONE;
	}

	if (outsideNear == 0xff || outsideRight == 0xff || outsideLeft == 0xff || outsideTop == 0xff ||
	    outsideBottom == 0xff)
	{
		MeshLod = LAND_MESH_LOD_0;
		Flags &= ~(LAND_BLOCK_VISIBLE | LAND_BLOCK_IN_FRUSTUM);
		MeshLodZone = LAND_MESH_ZONE_FAR;
		return;
	}
	Flags |= LAND_BLOCK_VISIBLE | LAND_BLOCK_IN_FRUSTUM;
	if (outsideNear == 0 && outsideRight == 0 && outsideLeft == 0 && outsideTop == 0 && outsideBottom == 0)
	{
		NeedClipping = false;
	}
	else
	{
		NeedClipping = true;
	}

	int sides[3] = {0, 0, 0};
	if (UseLowResTexture)
	{
		TextureLod = LAND_TEXTURE_LOD_LOW;
	}
	else
	{
		sides[LH3DIsland::g_texture_lod.GetLevel(X, Z)]++;
		sides[LH3DIsland::g_texture_lod.GetLevel(X, Z + LAND_BLOCK_WIDTH)]++;
		sides[LH3DIsland::g_texture_lod.GetLevel(X + LAND_BLOCK_WIDTH, Z)]++;
		sides[LH3DIsland::g_texture_lod.GetLevel(X + LAND_BLOCK_WIDTH, Z + LAND_BLOCK_WIDTH)]++;
		if (sides[LAND_TEXTURE_LOD_BLEND] != 0)
		{
			TextureLod = LAND_TEXTURE_LOD_BLEND;
		}
		else if (sides[LAND_TEXTURE_LOD_HIGH] != 0)
		{
			if (sides[LAND_TEXTURE_LOD_LOW] != 0)
			{
				TextureLod = LAND_TEXTURE_LOD_BLEND;
			}
			else
			{
				TextureLod = LAND_TEXTURE_LOD_HIGH;
			}
		}
		else
		{
			TextureLod = LAND_TEXTURE_LOD_LOW;
		}
	}

	if ((TextureLod == LAND_TEXTURE_LOD_HIGH || TextureLod == LAND_TEXTURE_LOD_BLEND || UseLowResTexture) &&
	    LH3DIsland::g_b_use_small_bump)
	{
		sides[LAND_TEXTURE_LOD_HIGH] = sides[LAND_TEXTURE_LOD_LOW] = sides[LAND_TEXTURE_LOD_BLEND] = 0;
		sides[LH3DIsland::g_sbump_lod.GetLevel(X, Z)]++;
		sides[LH3DIsland::g_sbump_lod.GetLevel(X, Z + LAND_BLOCK_WIDTH)]++;
		sides[LH3DIsland::g_sbump_lod.GetLevel(X + LAND_BLOCK_WIDTH, Z)]++;
		sides[LH3DIsland::g_sbump_lod.GetLevel(X + LAND_BLOCK_WIDTH, Z + LAND_BLOCK_WIDTH)]++;
		if (sides[LAND_TEXTURE_LOD_BLEND] != 0 || sides[LAND_TEXTURE_LOD_HIGH] != 0)
		{
			DrawSmallBump = true;
		}
	}
	else
	{
		DrawSmallBump = false;
	}

	sides[LH3D_MESH_LOD_LEVEL_NEAR] = sides[LH3D_MESH_LOD_LEVEL_MEDIUM] = sides[LH3D_MESH_LOD_LEVEL_FAR] = 0;
	sides[LH3DIsland::g_mesh_red_01.GetLevel(X, Z)]++;
	sides[LH3DIsland::g_mesh_red_01.GetLevel(X, Z + LAND_BLOCK_WIDTH)]++;
	sides[LH3DIsland::g_mesh_red_01.GetLevel(X + LAND_BLOCK_WIDTH, Z)]++;
	sides[LH3DIsland::g_mesh_red_01.GetLevel(X + LAND_BLOCK_WIDTH, Z + LAND_BLOCK_WIDTH)]++;
	if (sides[LH3D_MESH_LOD_LEVEL_MEDIUM] != 0)
	{
		MeshLodZone = LAND_MESH_ZONE_NEAR_TO_MEDIUM;
		MeshLod = LAND_MESH_LOD_0;
	}
	else if (sides[LH3D_MESH_LOD_LEVEL_NEAR] != 0)
	{
		if (sides[LH3D_MESH_LOD_LEVEL_FAR] != 0)
		{
			MeshLodZone = LAND_MESH_ZONE_NEAR_TO_MEDIUM;
			MeshLod = LAND_MESH_LOD_0;
		}
		else
		{
			MeshLodZone = LAND_MESH_ZONE_NEAR;
			MeshLod = LAND_MESH_LOD_0;
		}
	}
	else
	{
		MeshLodZone = LAND_MESH_ZONE_MEDIUM;
		MeshLod = LAND_MESH_LOD_1;
	}

	if (MeshLodZone == LAND_MESH_ZONE_MEDIUM)
	{
		sides[LH3D_MESH_LOD_LEVEL_NEAR] = sides[LH3D_MESH_LOD_LEVEL_MEDIUM] = sides[LH3D_MESH_LOD_LEVEL_FAR] = 0;
		sides[LH3DIsland::g_mesh_red_12.GetLevel(X, Z)]++;
		sides[LH3DIsland::g_mesh_red_12.GetLevel(X, Z + LAND_BLOCK_WIDTH)]++;
		sides[LH3DIsland::g_mesh_red_12.GetLevel(X + LAND_BLOCK_WIDTH, Z)]++;
		sides[LH3DIsland::g_mesh_red_12.GetLevel(X + LAND_BLOCK_WIDTH, Z + LAND_BLOCK_WIDTH)]++;
		if (sides[LH3D_MESH_LOD_LEVEL_MEDIUM] != 0)
		{
			MeshLodZone = LAND_MESH_ZONE_MEDIUM_TO_FAR;
			MeshLod = LAND_MESH_LOD_1;
		}
		else if (sides[LH3D_MESH_LOD_LEVEL_NEAR] != 0)
		{
			if (sides[LH3D_MESH_LOD_LEVEL_FAR] != 0)
			{
				MeshLodZone = LAND_MESH_ZONE_MEDIUM_TO_FAR;
				MeshLod = LAND_MESH_LOD_1;
			}
			else
			{
				MeshLodZone = LAND_MESH_ZONE_MEDIUM;
				MeshLod = LAND_MESH_LOD_1;
			}
		}
		else
		{
			MeshLodZone = LAND_MESH_ZONE_FAR;
			MeshLod = LAND_MESH_LOD_2;
		}
	}

	LHPoint delta(&center);
	delta.Sub(LHPoint(&LH3DTech::g_camera.pos));
	Distance = delta.GetNorme();
}

#define MORPH_CELL(cell, below, above)                                                                                 \
	{                                                                                                                  \
		distance = normal.z * wx - normal.x * wz;                                                                      \
		if (distance < halfWidth)                                                                                      \
		{                                                                                                              \
			if (-halfWidth < distance)                                                                                 \
			{                                                                                                          \
				int           average = ((below).altitude + (above).altitude) >> 1;                                    \
				int           altitude = (cell).altitude;                                                              \
				unsigned long weight = FloatToInt((halfWidth - distance) * scale);                                     \
				(cell).altitude = ((LAND_WEIGHT_ONE - weight) * altitude + average * weight) >> 8;                     \
			}                                                                                                          \
			else                                                                                                       \
			{                                                                                                          \
				(cell).altitude = (unsigned)((below).altitude + (above).altitude) >> 1;                                \
			}                                                                                                          \
		}                                                                                                              \
	}

void __fastcall LandBlock::MorphBlock(bool32_t lod_1)
{
	LHPoint normal;
	LHPoint point;
	float   distance;
	float   wx = X;
	float   stepWorld = 0.0f;
	float   wz = 0.0f;
	float   scale = 0.0f;
	float   halfWidth = 0.0f;
	int     step;
	int     start;
	if (lod_1)
	{
		point.x = LH3DIsland::g_mesh_red_01.Point.x;
		point.z = LH3DIsland::g_mesh_red_01.Point.z;
		normal.x = LH3DIsland::g_mesh_red_01.Normal.x;
		normal.z = LH3DIsland::g_mesh_red_01.Normal.z;
		scale = LAND_WEIGHT_ONE / LH3DIsland::g_mesh_red_01.Width;
		step = LAND_MESH_LOD_0_CELLS / LAND_MESH_LOD_1_CELLS;
		start = step / 2;
		halfWidth = LH3DIsland::g_mesh_red_01.Width * 0.5f;
	}
	else
	{
		point.x = LH3DIsland::g_mesh_red_12.Point.x;
		point.z = LH3DIsland::g_mesh_red_12.Point.z;
		normal.x = LH3DIsland::g_mesh_red_12.Normal.x;
		normal.z = LH3DIsland::g_mesh_red_12.Normal.z;
		scale = LAND_WEIGHT_ONE / LH3DIsland::g_mesh_red_12.Width;
		step = LAND_MESH_LOD_0_CELLS / LAND_MESH_LOD_2_CELLS;
		start = step / 2;
		halfWidth = LH3DIsland::g_mesh_red_12.Width * 0.5f;
	}
	wx = X - point.x;
	stepWorld = step * MAP_COORDS_METRES_PER_CELL;
	float startWorld = start * MAP_COORDS_METRES_PER_CELL;
	float startZ = startWorld + Z - point.z;
	wz = startZ;
	LandCell* cells = &Cells[0][0];
	int       x;
	int       z;
	for (x = 0; x < LAND_BLOCK_SIDE_POINTS; x += step)
	{
		wz = startZ;
		int index = x * LAND_BLOCK_SIDE_POINTS + start;
		for (z = start; z < LAND_BLOCK_SIDE_POINTS; z += step, index += step)
		{
			MORPH_CELL(cells[index], cells[index - start], cells[index + start])
			wz += stepWorld;
		}
		wx += stepWorld;
	}
	wx = startWorld + X - point.x;
	startZ = startWorld + Z - point.z;
	int offset = start * (LAND_BLOCK_SIDE_POINTS + 1);
	for (x = start; x < LAND_BLOCK_SIDE_POINTS; x += step)
	{
		wz = startZ;
		int index = x * LAND_BLOCK_SIDE_POINTS + start;
		for (z = start; z < LAND_BLOCK_SIDE_POINTS; z += step, index += step)
		{
			MORPH_CELL(cells[index], cells[index - offset], cells[index + offset])
			wz += stepWorld;
		}
		wx += stepWorld;
	}
	wx = startWorld + X - point.x;
	startZ = Z - point.z;
	offset = start * LAND_BLOCK_SIDE_POINTS;
	for (x = start; x < LAND_BLOCK_SIDE_POINTS; x += step)
	{
		wz = startZ;
		int index = x * LAND_BLOCK_SIDE_POINTS;
		for (z = 0; z < LAND_BLOCK_SIDE_POINTS; z += step, index += step)
		{
			MORPH_CELL(cells[index], cells[index - offset], cells[index + offset])
			wz += stepWorld;
		}
		wx += stepWorld;
	}
}

void LandBlock::ComputeMeshLodType()
{
	MeshLodType = 0;
	int index = LH3DIsland::GetIndex(GridX - 1, GridZ);
	if (index != 0 && LH3DIsland::g_ptr_blocks[index]->MeshLod > MeshLod)
	{
		MeshLodType = MESH_LOD_NORTH;
	}
	index = LH3DIsland::GetIndex(GridX, GridZ - 1);
	if (index != 0 && LH3DIsland::g_ptr_blocks[index]->MeshLod > MeshLod)
	{
		MeshLodType |= MESH_LOD_WEST;
	}
	index = LH3DIsland::GetIndex(GridX, GridZ + 1);
	if (index != 0 && LH3DIsland::g_ptr_blocks[index]->MeshLod > MeshLod)
	{
		MeshLodType |= MESH_LOD_EAST;
	}
	index = LH3DIsland::GetIndex(GridX + 1, GridZ);
	if (index != 0 && LH3DIsland::g_ptr_blocks[index]->MeshLod > MeshLod)
	{
		MeshLodType |= MESH_LOD_SOUTH;
	}
}

void LandBlock::DrawWithDynamicShadow(TShadowInfo* shadow)
{
	float          invWidth = 1.0f / (shadow->MaxX - shadow->MinX);
	int            step = 1 << MeshLod;
	float          invDepth = 1.0f / (shadow->MaxZ - shadow->MinZ);
	int            rowSkip = step * LAND_MESH_LOD_0_CELLS - LAND_MESH_LOD_0_CELLS;
	Vertex3D*      vertex = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	float          stepWorld = step * MAP_COORDS_METRES_PER_CELL;
	float          stepTexture = step / (float)LAND_MESH_LOD_0_CELLS;
	float          wx = X;
	float          tx = 0.0f;
	LandCell*      cell = &Cells[0][0];
	float          height =
		shadow->Caster != NULL ? LH3DIsland::GetAltitude(shadow->Caster->matrix.GetPos()) : shadow->GroundHeight;
	unsigned long clipMask = NeedClipping ? LH3DTech::CLIP_CODE_FRUSTUM : 0;
	for (int i = 0; i < LAND_BLOCK_SIDE_POINTS; i += step)
	{
		float wz = Z;
		float tz = 0.0f;
		for (int j = 0; j < LAND_BLOCK_SIDE_POINTS; j += step)
		{
			int altitude = cell->GetAltitude();
			if (altitude > LAND_CELL_SEA_ALTITUDE || altitude > LAND_CELL_SHORE_ALTITUDE)
			{
				vertex->color = LH3D_COLOR_WHITE;
			}
			else
			{
				vertex->color = 0;
			}
			vertex->specular = 0;
			float depth = wx * shadow->Direction.x + wz * shadow->Direction.z;
			float ratio = (shadow->GroundHeight - shadow->Light.y) / (height - shadow->Light.y);
			float u = ((wx - shadow->Light.x) * ratio + shadow->Light.x - shadow->MinX) * invWidth;
			float v = ((wz - shadow->Light.z) * ratio + shadow->Light.z - shadow->MinZ) * invDepth;
			vertex->uv.x = u;
			*flags &= clipMask;
			vertex->uv.y = v;
			if (depth < shadow->MinDepth)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_BEHIND;
			}
			if (u <= 0.0f)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_U_MIN;
			}
			else if (u >= 1.0f)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_U_MAX;
			}
			if (v <= 0.0f)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_V_MIN;
			}
			else if (v >= 1.0f)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_V_MAX;
			}
			wz += stepWorld;
			tz += stepTexture;
			cell += step;
			flags++;
			vertex++;
		}
		cell += rowSkip;
		wx += stepWorld;
		tx += stepTexture;
	}
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = (LAND_MESH_LOD_0_CELLS / step + 1) * (LAND_MESH_LOD_0_CELLS / step + 1);
	CreateListPoly(MeshLod);
	if (LH3DTech::g_index_count != 0)
	{
		LH3DRender::SetMaterial(shadow->Material, 0);
		LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                         LH3DTech::g_index_count);
	}
}

void LandBlock::SetNeedUpdate()
{
	if (!LH3DIsland::g_b_use_always_low_texture)
	{
		if (Texture->GetType() == LH3D_TEXTURE_TYPE_NAMED || Texture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
		{
			Texture->ReloadPending = true;
		}
	}
}

void LandBlock::ClearLight()
{
	LandCell* cell = &Cells[0][0];
	for (int i = 0; i < LAND_BLOCK_SIDE_POINTS * LAND_BLOCK_SIDE_POINTS; i++, cell++)
	{
		*(uint32_t*)cell = cell->SaveColor << 24;
	}
}

void LandBlock::Release()
{
	if (Texture != NULL)
	{
		Texture->Release();
		Texture = NULL;
	}
	if (Material != NULL)
	{
		delete Material;
		Material = NULL;
	}
	LH3DMem::Free(this);
}

void LandBlock::DrawSpecular(DynamicLightAndShadow::StoreInfo* info, uint8_t* map, unsigned long frac_z,
                             unsigned long frac_x)
{
	int       x = info->X - GridX * LAND_MESH_LOD_0_CELLS;
	int       endX = x + info->SizeX;
	int       z = info->Z - GridZ * LAND_MESH_LOD_0_CELLS;
	int       endZ = z + info->SizeZ;
	LandCell* cell = &Cells[0][0];
	if (x < 0)
	{
		map -= info->Pitch * x * LAND_LIGHT_MAP_PIXEL_SIZE;
		x = 0;
	}
	else
	{
		cell += x * LAND_BLOCK_SIDE_POINTS;
	}
	if (endX > LAND_BLOCK_SIDE_POINTS)
	{
		endX = LAND_BLOCK_SIDE_POINTS;
	}
	if (z < 0)
	{
		map -= z * LAND_LIGHT_MAP_PIXEL_SIZE;
		z = 0;
	}
	else
	{
		cell += z;
	}
	if (endZ > LAND_BLOCK_SIDE_POINTS)
	{
		endZ = LAND_BLOCK_SIDE_POINTS;
	}
	uint32_t intensity = info->Intensity;
	long     row = info->Pitch * LAND_LIGHT_MAP_PIXEL_SIZE;
	if (info->MaxBlend)
	{
		for (; x < endX; x++)
		{
			for (int i = z; i < endZ; i++)
			{
				unsigned long b;
				LAND_LIGHT_CHANNEL(b, map, row, 0, frac_z, frac_x, intensity)
				uint8_t blue;
				if (cell->b > b)
				{
					blue = cell->b;
				}
				else
				{
					blue = b;
				}
				cell->b = blue;
				unsigned long g;
				LAND_LIGHT_CHANNEL(g, map, row, 1, frac_z, frac_x, intensity)
				uint8_t green;
				if (cell->g > g)
				{
					green = cell->g;
				}
				else
				{
					green = g;
				}
				cell->g = green;
				unsigned long r;
				LAND_LIGHT_CHANNEL(r, map, row, 2, frac_z, frac_x, intensity)
				uint8_t red;
				if (cell->r > r)
				{
					red = cell->r;
				}
				else
				{
					red = r;
				}
				cell->r = red;
				map += LAND_LIGHT_MAP_PIXEL_SIZE;
				cell++;
			}
			map += (info->Pitch - (endZ - z)) * LAND_LIGHT_MAP_PIXEL_SIZE;
			cell += LAND_BLOCK_SIDE_POINTS - (endZ - z);
		}
	}
	else
	{
		for (; x < endX; x++)
		{
			for (int i = z; i < endZ; i++)
			{
				unsigned long b;
				LAND_LIGHT_CHANNEL(b, map, row, 0, frac_z, frac_x, intensity)
				b += cell->b;
				if (b > LH3D_COLOR_CHANNEL_MAX)
				{
					cell->b = LH3D_COLOR_CHANNEL_MAX;
				}
				else
				{
					cell->b = b;
				}
				unsigned long g;
				LAND_LIGHT_CHANNEL(g, map, row, 1, frac_z, frac_x, intensity)
				g += cell->g;
				if (g > LH3D_COLOR_CHANNEL_MAX)
				{
					cell->g = LH3D_COLOR_CHANNEL_MAX;
				}
				else
				{
					cell->g = g;
				}
				unsigned long r;
				LAND_LIGHT_CHANNEL(r, map, row, 2, frac_z, frac_x, intensity)
				r += cell->r;
				if (r > LH3D_COLOR_CHANNEL_MAX)
				{
					cell->r = LH3D_COLOR_CHANNEL_MAX;
				}
				else
				{
					cell->r = r;
				}
				map += LAND_LIGHT_MAP_PIXEL_SIZE;
				cell++;
			}
			map += (info->Pitch - (endZ - z)) * LAND_LIGHT_MAP_PIXEL_SIZE;
			cell += LAND_BLOCK_SIDE_POINTS - (endZ - z);
		}
	}
}

void LandBlock::DrawShadow(DynamicLightAndShadow::StoreInfo* info, uint8_t* map, unsigned long frac_z,
                           unsigned long frac_x)
{
	int       x = info->X - GridX * LAND_MESH_LOD_0_CELLS;
	int       z = info->Z - GridZ * LAND_MESH_LOD_0_CELLS;
	int       endX = x + info->SizeX;
	int       endZ = z + info->SizeZ;
	LandCell* cell = &Cells[0][0];
	if (x < 0)
	{
		map -= info->Pitch * x;
		x = 0;
	}
	else
	{
		cell += x * LAND_BLOCK_SIDE_POINTS;
	}
	if (endX > LAND_BLOCK_SIDE_POINTS)
	{
		endX = LAND_BLOCK_SIDE_POINTS;
	}
	if (z < 0)
	{
		map -= z;
		z = 0;
	}
	else
	{
		cell += z;
	}
	if (endZ > LAND_BLOCK_SIDE_POINTS)
	{
		endZ = LAND_BLOCK_SIDE_POINTS;
	}
	long     size = info->Pitch;
	uint32_t intensity = info->Intensity;
	for (; x < endX; x++)
	{
		for (int i = z; i < endZ; i++, map++, cell++)
		{
			unsigned long top = LAND_BLEND_8(map[0], map[1], frac_z);
			unsigned long bottom = LAND_BLEND_8(map[size], map[size + 1], frac_z);
			unsigned long shadow = LAND_BLEND_8(top, bottom, frac_x);
			unsigned long darkness =
				LAND_CELL_MAX_DARKNESS - (LAND_CELL_MAX_DARKNESS - shadow) * intensity / LAND_CELL_MAX_DARKNESS;
			if (darkness < LAND_CELL_MIN_DARKNESS)
			{
				darkness = LAND_CELL_MIN_DARKNESS;
			}
			if (darkness < cell->darkness)
			{
				cell->darkness = darkness;
			}
		}
		map += info->Pitch - (endZ - z);
		cell += LAND_BLOCK_SIDE_POINTS - (endZ - z);
	}
}

#ifndef VERSION_BW1W100
void LandBlock::ComputeLighting()
{
	LandBlock* block;
	int        index = 1;
	while ((block = LH3DIsland::g_ptr_blocks[index]) != NULL)
	{
		index++;
		float scale = 1.0f / (float)sqrt(LAND_LIGHT_AXES);
		for (int x = 0; x < LAND_MESH_LOD_0_CELLS; x++)
		{
			for (int z = 0; z < LAND_MESH_LOD_0_CELLS; z++)
			{
				LHPoint pos;
				pos.x = x * LAND_CELL_METRES + block->X + LAND_LIGHTING_SAMPLE_OFFSET;
				pos.z = z * LAND_CELL_METRES + block->Z + LAND_LIGHTING_SAMPLE_OFFSET;
				LH3DMapCoords coords(pos.x, pos.z);
				LHPoint       normal;
				LH3DIsland::GetNormal(coords, &normal);
				float light = (normal.x + normal.y + normal.z) * scale * (float)LAND_CELL_MAX_DARKNESS;
				block->Cells[x][z].darkness = GetLightLevel((int)light);
			}
		}
	}
}
#endif

long LandBlock::DrawBefore()
{
	if (LH3DTech::g_index_count != 0)
	{
		Vertex3D* vertex = LH3DTech::g_cache_t_points;
		for (int i = 0; i < LH3DTech::g_points_count; i++, vertex++)
		{
			LHPoint p(vertex->uv.X(), 0.0f, vertex->uv.Y());
			BeforeMatrix.TransformPoint(p);
			vertex->uv.x = p.x;
			vertex->uv.y = p.z;
		}
		LH3DRender::SetMaterial(BeforeMaterial, 0);
		LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                         LH3DTech::g_index_count);
		LHMatrix inverse;
		inverse.SetInverse(BeforeMatrix);
		vertex = LH3DTech::g_cache_t_points;
		for (int j = 0; j < LH3DTech::g_points_count; j++, vertex++)
		{
			LHPoint p(vertex->uv.X(), 0.0f, vertex->uv.Y());
			inverse.TransformPoint(p);
			vertex->uv.x = p.x;
			vertex->uv.y = p.z;
		}
	}
	return LH3DTech::g_index_count;
}

long LandBlock::DrawAfter()
{
	int            step = 1 << MeshLod;
	Vertex3D*      vertex = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	int            rowSkip = step * LAND_MESH_LOD_0_CELLS - LAND_MESH_LOD_0_CELLS;
	LandCell*      cell = &Cells[0][0];
	float          tx = 0.0f;
	float          stepWorld = step * MAP_COORDS_METRES_PER_CELL;
	float          stepTexture = step / (float)LAND_MESH_LOD_0_CELLS;
	float          wx = X;
	for (int i = 0; i < LAND_BLOCK_SIDE_POINTS; i += step)
	{
		float wz = Z;
		float tz = 0.0f;
		for (int j = 0; j < LAND_BLOCK_SIDE_POINTS; j += step)
		{
			vertex->specular = *(uint32_t*)cell | (LH3D_COLOR_OPAQUE << 24);
			vertex->color = LandCell::g_darkness_to_color[cell->darkness];
			LHPoint unused0;
			LHPoint unused1;
			LHPoint p(tz, 0.0f, tx);
			AfterMatrix.TransformPoint(p);
			vertex->uv.x = p.x;
			vertex->uv.y = p.z;
			wz += stepWorld;
			tz += stepTexture;
			cell += step;
			flags++;
			vertex++;
		}
		cell += rowSkip;
		wx += stepWorld;
		tx += stepTexture;
	}
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = (LAND_MESH_LOD_0_CELLS / step + 1) * (LAND_MESH_LOD_0_CELLS / step + 1);
	if (NeedClipping)
	{
		CreateListPoly(MeshLod);
	}
	else
	{
		CreateListPolyUnclipped(MeshLod);
	}
	if (LH3DTech::GetIndiceCount() != 0)
	{
		LH3DRender::SetMaterial(AfterMaterial, 0);
		LH3DRender::DrawTriangle(LH3DTech::GetCachePoints(), LH3DTech::GetPointCount(), LH3DTech::GetIndiceList(),
		                         LH3DTech::GetIndiceCount());
	}
	return LH3DTech::GetIndiceCount();
}
