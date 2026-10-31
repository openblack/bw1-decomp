#include "LH3DIsland.h"

#include <math.h>
#include <windows.h>

#include "LH3DColor.h"     /* For LH3DColor, LH3D_SCALE_COLOR */
#include "LH3DMapCoords.h" /* For LH3DMapCoords, MAP_COORDS_METRES_PER_CELL */
#include "LH3DMaterial.h"
#include "LH3DMath.h" /* For FloatToInt */
#include "LH3DMem.h"
#include "LH3DObject.h"
#include "LH3DPrimitive.h" /* For LH3DObject */
#include "LH3DP3.h"        /* For LH3DP3 */
#include "LH3DRender.h"    /* For LH3DRender */
#include "LH3DTech.h"      /* For LH3DTech */
#include "LH3DTexture.h"
#include "LH3DVertex.h" /* For Vertex3D */
#include "MeshLodInfo.h"
#include "TShadowInfo.h" /* For TShadowInfo */

bool32_t   LandBlock::g_draw_reflection;
LandBlock* LandBlock::g_first_sorting;

#define LAND_LOW_RES_TILE_SCALE (62.0f / 256.0f)
#define LAND_LOW_RES_TILE_INSET (1.0f / 255.0f)
#define LAND_SMALL_BUMP_TILING  12.0f

#define ADD_TRIANGLE(v0, v1, v2)                                                                                       \
	{                                                                                                                  \
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = v0;                                                      \
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = v1;                                                      \
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = v2;                                                      \
	}

#define ADD_TRIANGLE_IF_FRONT(v0, v1, v2)                                                                              \
	{                                                                                                                  \
		Vertex3D* p2 = &LH3DTech::g_cache_t_points[v2];                                                                \
		Vertex3D* p0 = &LH3DTech::g_cache_t_points[v0];                                                                \
		Vertex3D* p1 = &LH3DTech::g_cache_t_points[v1];                                                                \
		if ((p1->x - p0->x) * (p2->y - p0->y) - (p2->x - p0->x) * (p1->y - p0->y) > 0.0f)                              \
		{                                                                                                              \
			ADD_TRIANGLE(v0, v1, v2)                                                                                   \
		}                                                                                                              \
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
		startV = LowResV + LAND_LOW_RES_TILE_INSET;
		startU = LowResU + LAND_LOW_RES_TILE_INSET;
	}
	float     x = X;
	LandCell* cell = &Cells[0][0];
	int       xi = 0;
	int       zi;
	int       count = 0;
	LH3DColor fogColor;
	uint32_t  fadeWeight;
	if (FogMode != LAND_FOG_NONE)
	{
		for (; xi < LAND_BLOCK_SIDE_POINTS; xi += step)
		{
			float z = Z;
			float tu = startU;
			for (zi = 0; zi < LAND_BLOCK_SIDE_POINTS;)
			{
				vertex->specular = *(uint32_t*)cell | 0xff000000;
				vertex->color = LandCell::g_darkness_to_color[cell->darkness];
				int   altitude = cell->altitude;
				float y = altitude * LH3DIsland::g_height_unit;
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
			float z = Z;
			float tu = startU;
			for (zi = 0; zi < LAND_BLOCK_SIDE_POINTS;)
			{
				vertex->specular = *(uint32_t*)cell | 0xff000000;
				vertex->color = LandCell::g_darkness_to_color[cell->darkness];
				int   altitude = cell->altitude;
				float y = altitude * LH3DIsland::g_height_unit;
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
				LowResU += LAND_LOW_RES_TILE_INSET;
				LowResV += LAND_LOW_RES_TILE_INSET;
				for (int i = 0; i < LH3DTech::g_points_count; i++)
				{
					Vertex3D* point = &LH3DTech::g_cache_t_points[i];
					point->uv.x = point->uv.x * LAND_LOW_RES_TILE_SCALE + LowResU;
					point->uv.y = point->uv.y * LAND_LOW_RES_TILE_SCALE + LowResV;
				}
				LowResU -= LAND_LOW_RES_TILE_INSET;
				LowResV -= LAND_LOW_RES_TILE_INSET;
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
			LowResU += LAND_LOW_RES_TILE_INSET;
			LowResV += LAND_LOW_RES_TILE_INSET;
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
			LowResU -= LAND_LOW_RES_TILE_INSET;
			LowResV -= LAND_LOW_RES_TILE_INSET;
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

void LandBlock::CreateListPoly(LandMeshLOD lod)
{
	if (LH3DTech::g_b_P3)
	{
		LH3DP3::CreateListPolyWrapper(this, lod);
		return;
	}
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
				if ((cell->Flags & LAND_CELL_SUBMERGED) == 0)
				{
					if (cell->Flags & LAND_CELL_SPLIT)
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

void LandBlock::CreateListPolyUnclipped(LandMeshLOD lod)
{
	if (LH3DTech::g_b_P3)
	{
		LH3DP3::CreateListPolyUnclippedWrapper(this, lod);
		return;
	}
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
	center.x = X + LAND_BLOCK_WIDTH * 0.5f;
	float halfHeight;
	if (LH3DIsland::g_b_draw_reflection)
	{
		center.y = 0.0f;
		center.z = Z + LAND_BLOCK_WIDTH * 0.5f;
		halfHeight = maxAltitude * LH3DIsland::g_height_unit;
	}
	else
	{
		halfHeight = maxAltitude * LH3DIsland::g_height_unit * 0.5f;
		center.y = halfHeight;
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
			point.x = center.x + LAND_BLOCK_WIDTH * 0.5f;
			point.y = halfHeight + center.y;
			point.z = center.z + LAND_BLOCK_WIDTH * 0.5f;
			break;
		case 1:
			point.x = center.x - LAND_BLOCK_WIDTH * 0.5f;
			point.y = halfHeight + center.y;
			point.z = center.z + LAND_BLOCK_WIDTH * 0.5f;
			break;
		case 2:
			point.x = center.x + LAND_BLOCK_WIDTH * 0.5f;
			point.y = halfHeight + center.y;
			point.z = center.z - LAND_BLOCK_WIDTH * 0.5f;
			break;
		case 3:
			point.x = center.x + LAND_BLOCK_WIDTH * 0.5f;
			point.y = center.y - halfHeight;
			point.z = center.z + LAND_BLOCK_WIDTH * 0.5f;
			break;
		case 4:
			point.x = center.x - LAND_BLOCK_WIDTH * 0.5f;
			point.y = halfHeight + center.y;
			point.z = center.z - LAND_BLOCK_WIDTH * 0.5f;
			break;
		case 5:
			point.x = center.x + LAND_BLOCK_WIDTH * 0.5f;
			point.y = center.y - halfHeight;
			point.z = center.z - LAND_BLOCK_WIDTH * 0.5f;
			break;
		case 6:
			point.x = center.x - LAND_BLOCK_WIDTH * 0.5f;
			point.y = center.y - halfHeight;
			point.z = center.z - LAND_BLOCK_WIDTH * 0.5f;
			break;
		default:
			point.x = center.x - LAND_BLOCK_WIDTH * 0.5f;
			point.y = center.y - halfHeight;
			point.z = center.z + LAND_BLOCK_WIDTH * 0.5f;
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
		sides[LAND_TEXTURE_LOD_HIGH] = 0;
		sides[LAND_TEXTURE_LOD_LOW] = 0;
		sides[LAND_TEXTURE_LOD_BLEND] = 0;
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

	sides[LH3D_MESH_LOD_LEVEL_NEAR] = 0;
	sides[LH3D_MESH_LOD_LEVEL_MEDIUM] = 0;
	sides[LH3D_MESH_LOD_LEVEL_FAR] = 0;
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
		sides[LH3D_MESH_LOD_LEVEL_NEAR] = 0;
		sides[LH3D_MESH_LOD_LEVEL_MEDIUM] = 0;
		sides[LH3D_MESH_LOD_LEVEL_FAR] = 0;
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

	LHPoint camera = LH3DTech::g_camera.pos;
	Distance = center.GetDistance(camera);
}

void __fastcall LandBlock::MorphBlock(bool32_t lod_1)
{
	int   step;
	int   half;
	int   i;
	int   j;
	float normalX;
	float normalZ;
	float pointX;
	float pointZ;
	float scale;
	float halfWidth;
	if (lod_1)
	{
		normalX = LH3DIsland::g_mesh_red_01.Normal.x;
		normalZ = LH3DIsland::g_mesh_red_01.Normal.z;
		pointX = LH3DIsland::g_mesh_red_01.Point.x;
		pointZ = LH3DIsland::g_mesh_red_01.Point.z;
		step = (LAND_MESH_LOD_0_CELLS / LAND_MESH_LOD_1_CELLS);
		half = step / 2;
		scale = LAND_WEIGHT_ONE / LH3DIsland::g_mesh_red_01.Width;
		halfWidth = LH3DIsland::g_mesh_red_01.Width * 0.5f;
	}
	else
	{
		normalX = LH3DIsland::g_mesh_red_12.Normal.x;
		normalZ = LH3DIsland::g_mesh_red_12.Normal.z;
		pointX = LH3DIsland::g_mesh_red_12.Point.x;
		pointZ = LH3DIsland::g_mesh_red_12.Point.z;
		step = (LAND_MESH_LOD_0_CELLS / LAND_MESH_LOD_2_CELLS);
		half = step / 2;
		scale = LAND_WEIGHT_ONE / LH3DIsland::g_mesh_red_12.Width;
		halfWidth = LH3DIsland::g_mesh_red_12.Width * 0.5f;
	}

	float     x = X - pointX;
	LandCell* row = &Cells[0][0];
	for (i = 0; i < LAND_BLOCK_SIDE_POINTS; i += step)
	{
		float     z = half * LAND_CELL_SIZE + Z - pointZ;
		LandCell* cell = row + half;
		for (j = half; j < LAND_BLOCK_SIDE_POINTS; j += step)
		{
			float distance = normalX * x - normalZ * z;
			if (distance < halfWidth)
			{
				uint32_t altitude;
				if (-halfWidth < distance)
				{
					int weight = FloatToInt((halfWidth - distance) * scale);
					int average = (cell[-half].altitude + cell[half].altitude) >> 1;
					altitude = ((LAND_WEIGHT_ONE - weight) * cell->altitude + weight * average) >> 8;
				}
				else
				{
					altitude = (cell[-half].altitude + cell[half].altitude) >> 1;
				}
				cell->altitude = altitude;
			}
			z += step * LAND_CELL_SIZE;
			cell += step;
		}
		x += step * LAND_CELL_SIZE;
		row += step * LAND_BLOCK_SIDE_POINTS;
	}

	x = half * LAND_CELL_SIZE + X - pointX;
	row = &Cells[half][0];
	for (i = half; i < LAND_BLOCK_SIDE_POINTS; i += step)
	{
		float     z = half * LAND_CELL_SIZE + Z - pointZ;
		LandCell* cell = row + half;
		for (j = half; j < LAND_BLOCK_SIDE_POINTS; j += step)
		{
			float distance = normalX * x - normalZ * z;
			if (distance < halfWidth)
			{
				uint32_t altitude;
				if (-halfWidth < distance)
				{
					int weight = FloatToInt((halfWidth - distance) * scale);
					int average = (cell[-half * LAND_BLOCK_SIDE_POINTS - half].altitude +
					               cell[half * LAND_BLOCK_SIDE_POINTS + half].altitude) >>
					              1;
					altitude = ((LAND_WEIGHT_ONE - weight) * cell->altitude + weight * average) >> 8;
				}
				else
				{
					altitude = (cell[-half * LAND_BLOCK_SIDE_POINTS - half].altitude +
					            cell[half * LAND_BLOCK_SIDE_POINTS + half].altitude) >>
					           1;
				}
				cell->altitude = altitude;
			}
			z += step * LAND_CELL_SIZE;
			cell += step;
		}
		x += step * LAND_CELL_SIZE;
		row += step * LAND_BLOCK_SIDE_POINTS;
	}

	x = half * LAND_CELL_SIZE + X - pointX;
	row = &Cells[half][0];
	for (i = half; i < LAND_BLOCK_SIDE_POINTS; i += step)
	{
		float     z = Z - pointZ;
		LandCell* cell = row;
		for (j = 0; j < LAND_BLOCK_SIDE_POINTS; j += step)
		{
			float distance = normalX * x - normalZ * z;
			if (distance < halfWidth)
			{
				uint32_t altitude;
				if (-halfWidth < distance)
				{
					int weight = FloatToInt((halfWidth - distance) * scale);
					int average = (cell[-half * LAND_BLOCK_SIDE_POINTS].altitude +
					               cell[half * LAND_BLOCK_SIDE_POINTS].altitude) >>
					              1;
					altitude = ((LAND_WEIGHT_ONE - weight) * cell->altitude + weight * average) >> 8;
				}
				else
				{
					altitude = (cell[-half * LAND_BLOCK_SIDE_POINTS].altitude +
					            cell[half * LAND_BLOCK_SIDE_POINTS].altitude) >>
					           1;
				}
				cell->altitude = altitude;
			}
			z += step * LAND_CELL_SIZE;
			cell += step;
		}
		x += step * LAND_CELL_SIZE;
		row += step * LAND_BLOCK_SIDE_POINTS;
	}
}

void LandBlock::ComputeMeshLodType()
{
	MeshLodType = 0;
	int index = LH3DIsland::GetIndex(GridX - 1, GridZ);
	if (index != 0 && LH3DIsland::g_ptr_blocks[index]->MeshLod > MeshLod)
		MeshLodType = MESH_LOD_NORTH;
	index = LH3DIsland::GetIndex(GridX, GridZ - 1);
	if (index != 0 && LH3DIsland::g_ptr_blocks[index]->MeshLod > MeshLod)
		MeshLodType |= MESH_LOD_WEST;
	index = LH3DIsland::GetIndex(GridX, GridZ + 1);
	if (index != 0 && LH3DIsland::g_ptr_blocks[index]->MeshLod > MeshLod)
		MeshLodType |= MESH_LOD_EAST;
	index = LH3DIsland::GetIndex(GridX + 1, GridZ);
	if (index != 0 && LH3DIsland::g_ptr_blocks[index]->MeshLod > MeshLod)
		MeshLodType |= MESH_LOD_SOUTH;
}

void LandBlock::DrawWithDynamicShadow(TShadowInfo* shadow)
{
	float          invWidth = 1.0f / (shadow->MaxX - shadow->MinX);
	int            step = 1 << MeshLod;
	int            rowSkip = LAND_BLOCK_SIDE_POINTS * step - (step + LAND_MESH_LOD_0_CELLS);
	float          x = X;
	float          invDepth = 1.0f / (shadow->MaxZ - shadow->MinZ);
	float          meterStep = step * MAP_COORDS_METRES_PER_CELL;
	float          uvStep = step * (1.0f / LAND_MESH_LOD_0_CELLS);
	float          casterHeight;
	Vertex3D*      vertex = LH3DTech::g_cache_t_points;
	unsigned long* clip = LH3DTech::g_cache_flags;
	LandCell*      cell = &Cells[0][0];
	float          tv = 0.0f;
	if (shadow->Caster != NULL)
	{
		casterHeight = LH3DIsland::GetAltitude(shadow->Caster->matrix.GetPos());
	}
	else
	{
		casterHeight = shadow->GroundHeight;
	}
	unsigned long clipMask = NeedClipping ? LH3DTech::CLIP_CODE_FRUSTUM : 0;
	for (int xi = 0; xi < LAND_BLOCK_SIDE_POINTS; xi += step)
	{
		float z = Z;
		float tu = 0.0f;
		for (int zi = 0; zi < LAND_BLOCK_SIDE_POINTS; zi += step)
		{
			int altitude = cell->altitude;
			if (altitude > LAND_CELL_SEA_ALTITUDE || altitude > LAND_CELL_SHORE_ALTITUDE)
			{
				vertex->color = LH3D_COLOR_WHITE;
			}
			else
			{
				vertex->color = 0;
			}
			vertex->specular = 0;
			float depth = z * shadow->Direction.z + x * shadow->Direction.x;
			float scale = (shadow->GroundHeight - shadow->Light.y) / (casterHeight - shadow->Light.y);
			float u = ((x - shadow->Light.x) * scale + shadow->Light.x - shadow->MinX) * invWidth;
			float v = ((z - shadow->Light.z) * scale + shadow->Light.z - shadow->MinZ) * invDepth;
			vertex->uv.Set(u, v);
			*clip &= clipMask;
			if (depth < shadow->MinDepth)
			{
				*clip |= LH3D_SHADOW_CLIP_CODE_BEHIND;
			}
			if (u <= 0.0f)
			{
				*clip |= LH3D_SHADOW_CLIP_CODE_U_MIN;
			}
			else if (u >= 1.0f)
			{
				*clip |= LH3D_SHADOW_CLIP_CODE_U_MAX;
			}
			if (v <= 0.0f)
			{
				*clip |= LH3D_SHADOW_CLIP_CODE_V_MIN;
			}
			else if (v >= 1.0f)
			{
				*clip |= LH3D_SHADOW_CLIP_CODE_V_MAX;
			}
			cell += step;
			z += meterStep;
			tu += uvStep;
			vertex++;
			clip++;
		}
		tv += uvStep;
		x += meterStep;
		cell += rowSkip;
	}
	int side = LAND_MESH_LOD_0_CELLS / step + 1;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = side * side;
	CreateListPoly(MeshLod);
	if (LH3DTech::g_index_count != 0)
	{
		LH3DRender::SetMaterial(shadow->Material, 0);
		LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                         LH3DTech::g_index_count);
	}
}

#define LAND_SPECULAR_MAP_BYTES  3
#define LAND_LIGHT_SAMPLE_OFFSET 0.1f
#define LAND_CELL_METRES         10
#define LAND_BLOCK_METRES        (LAND_CELL_METRES * LAND_MESH_LOD_0_CELLS)

static inline uint32_t Interpolate(uint32_t from, uint32_t to, uint32_t fraction)
{
	return (((to - from) * fraction) >> 8) + from & 0xff;
}

static inline uint32_t SampleMap(const uint8_t* map, long pitch, unsigned long frac_z, unsigned long frac_x)
{
	uint32_t near_row = Interpolate(map[0], map[1], frac_z);
	uint32_t far_row = Interpolate(map[pitch], map[pitch + 1], frac_z);
	return Interpolate(near_row, far_row, frac_x);
}

static inline uint32_t ScaleSample(const uint8_t* map, long pitch, int channel, unsigned long frac_z,
                                   unsigned long frac_x, uint32_t intensity)
{
	uint32_t near_row = (((map[channel + 3] - map[channel]) * frac_z) >> 8) + map[channel] & 0xff;
	uint32_t far_row =
		(((map[pitch + channel + 3] - map[pitch + channel]) * frac_z) >> 8) + map[pitch + channel] & 0xff;
	return Interpolate(near_row, far_row, frac_x) * intensity / LAND_CELL_MAX_DARKNESS;
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
	for (int i = 0; i < LAND_BLOCK_SIDE_POINTS * LAND_BLOCK_SIDE_POINTS; i++)
	{
		*(uint32_t*)cell = cell->SaveColor << 24;
		cell++;
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
	LandCell* cell = &Cells[0][0];
	int       startX = info->X - GridX * LAND_MESH_LOD_0_CELLS;
	int       startZ = info->Z - GridZ * LAND_MESH_LOD_0_CELLS;
	int       endX = startX + info->SizeX;
	int       endZ = startZ + info->SizeZ;

	if (startX < 0)
	{
		map -= info->Pitch * startX * LAND_SPECULAR_MAP_BYTES;
		startX = 0;
	}
	else
	{
		cell += startX * LAND_BLOCK_SIDE_POINTS;
	}
	if (endX > LAND_BLOCK_SIDE_POINTS)
	{
		endX = LAND_BLOCK_SIDE_POINTS;
	}
	if (startZ < 0)
	{
		map -= startZ * LAND_SPECULAR_MAP_BYTES;
		startZ = 0;
	}
	else
	{
		cell += startZ;
	}
	if (endZ > LAND_BLOCK_SIDE_POINTS)
	{
		endZ = LAND_BLOCK_SIDE_POINTS;
	}

	long     pitch = info->Pitch * LAND_SPECULAR_MAP_BYTES;
	uint32_t intensity = info->Intensity;
	if (info->MaxBlend)
	{
		for (int x = startX; x < endX; x++)
		{
			for (int z = startZ; z < endZ; z++)
			{
				uint32_t value;
				value = ScaleSample(map, pitch, 0, frac_z, frac_x, intensity);
				cell->b = max(cell->b, value);
				value = ScaleSample(map, pitch, 1, frac_z, frac_x, intensity);
				cell->g = max(cell->g, value);
				value = ScaleSample(map, pitch, 2, frac_z, frac_x, intensity);
				cell->r = max(cell->r, value);
				map += LAND_SPECULAR_MAP_BYTES;
				cell++;
			}
			map += (info->Pitch - (endZ - startZ)) * LAND_SPECULAR_MAP_BYTES;
			cell += LAND_BLOCK_SIDE_POINTS - (endZ - startZ);
		}
	}
	else
	{
		for (int x = startX; x < endX; x++)
		{
			for (int z = startZ; z < endZ; z++)
			{
				uint32_t value;
				value = cell->b + ScaleSample(map, pitch, 0, frac_z, frac_x, intensity);
				if (value > 0xff)
				{
					cell->b = 0xff;
				}
				else
				{
					cell->b = value;
				}
				value = cell->g + ScaleSample(map, pitch, 1, frac_z, frac_x, intensity);
				if (value > 0xff)
				{
					cell->g = 0xff;
				}
				else
				{
					cell->g = value;
				}
				value = cell->r + ScaleSample(map, pitch, 2, frac_z, frac_x, intensity);
				if (value > 0xff)
				{
					cell->r = 0xff;
				}
				else
				{
					cell->r = value;
				}
				map += LAND_SPECULAR_MAP_BYTES;
				cell++;
			}
			map += (info->Pitch - (endZ - startZ)) * LAND_SPECULAR_MAP_BYTES;
			cell += LAND_BLOCK_SIDE_POINTS - (endZ - startZ);
		}
	}
}

void LandBlock::DrawShadow(DynamicLightAndShadow::StoreInfo* info, uint8_t* map, unsigned long frac_z,
                           unsigned long frac_x)
{
	int       startX = info->X - GridX * LAND_MESH_LOD_0_CELLS;
	int       startZ = info->Z - GridZ * LAND_MESH_LOD_0_CELLS;
	int       endX = startX + info->SizeX;
	int       endZ = startZ + info->SizeZ;
	LandCell* cell = &Cells[0][0];

	if (startX < 0)
	{
		map -= info->Pitch * startX;
		startX = 0;
	}
	else
	{
		cell += startX * LAND_BLOCK_SIDE_POINTS;
	}
	if (endX > LAND_BLOCK_SIDE_POINTS)
	{
		endX = LAND_BLOCK_SIDE_POINTS;
	}
	if (startZ < 0)
	{
		map -= startZ;
		startZ = 0;
	}
	else
	{
		cell += startZ;
	}
	if (endZ > LAND_BLOCK_SIDE_POINTS)
	{
		endZ = LAND_BLOCK_SIDE_POINTS;
	}

	long     pitch = info->Pitch;
	uint32_t intensity = info->Intensity;
	for (int x = startX; x < endX; x++)
	{
		for (int z = startZ; z < endZ; z++)
		{
			uint32_t sample = SampleMap(map, pitch, frac_z, frac_x);
			uint32_t darkness =
				LAND_CELL_MAX_DARKNESS - (LAND_CELL_MAX_DARKNESS - sample) * intensity / LAND_CELL_MAX_DARKNESS;
			if (darkness < LAND_CELL_MIN_DARKNESS)
			{
				darkness = LAND_CELL_MIN_DARKNESS;
			}
			if (darkness < cell->darkness)
			{
				cell->darkness = darkness;
			}
			map++;
			cell++;
		}
		map += info->Pitch - (endZ - startZ);
		cell += LAND_BLOCK_SIDE_POINTS - (endZ - startZ);
	}
}

void LandBlock::ComputeLighting()
{
	LandBlock** blocks = &LH3DIsland::g_ptr_blocks[1];
	for (LandBlock* block = *blocks; block != NULL; block = *blocks)
	{
		blocks++;
		LandCell* row = &block->Cells[0][0];
		for (int x = 0; x < LAND_BLOCK_METRES; x += LAND_CELL_METRES)
		{
			LandCell* cell = row;
			for (int z = 0; z < LAND_BLOCK_METRES; z += LAND_CELL_METRES)
			{
				LH3DMapCoords coords(block->X + x + LAND_LIGHT_SAMPLE_OFFSET, block->Z + z + LAND_LIGHT_SAMPLE_OFFSET);
				LHPoint       normal;
				LH3DIsland::GetNormal(coords, &normal);
				float intensity = (normal.x + normal.y + normal.z) * (1.0f / sqrtf(3.0f));
				cell->darkness = GetLightLevel((int)(intensity * LH3D_LIGHT_MAX));
				cell++;
			}

			row += LAND_BLOCK_SIDE_POINTS;
		}
	}
}

long LandBlock::DrawBefore()
{
	if (LH3DTech::GetIndiceCount() != 0)
	{
		int i;
		for (i = 0; i < LH3DTech::GetPointCount(); i++)
		{
			Vertex3D* vertex = LH3DTech::GetPointeurTPoint(i);
			vertex->uv.Set(vertex->uv.X() * BeforeMatrix._11 + vertex->uv.Y() * BeforeMatrix._31 + BeforeMatrix._41,
			               vertex->uv.X() * BeforeMatrix._13 + vertex->uv.Y() * BeforeMatrix._33 + BeforeMatrix._43);
		}
		LH3DRender::SetMaterial(BeforeMaterial, 0);
		LH3DRender::DrawTriangle(LH3DTech::GetCachePoints(), LH3DTech::GetPointCount(), LH3DTech::GetIndiceList(),
		                         LH3DTech::GetIndiceCount());
		LHMatrix inverse;
		inverse.SetInverse(BeforeMatrix);
		for (i = 0; i < LH3DTech::GetPointCount(); i++)
		{
			Vertex3D* vertex = LH3DTech::GetPointeurTPoint(i);
			vertex->uv.Set(vertex->uv.X() * inverse._11 + vertex->uv.Y() * inverse._31 + inverse._41,
			               vertex->uv.X() * inverse._13 + vertex->uv.Y() * inverse._33 + inverse._43);
		}
	}
	return LH3DTech::GetIndiceCount();
}

long LandBlock::DrawAfter()
{
	float          startV = 0.0f;
	int            step = 1 << MeshLod;
	Vertex3D*      vertex = LH3DTech::g_cache_t_points;
	unsigned long* clip = LH3DTech::g_cache_flags;
	int            rowSkip = LAND_BLOCK_SIDE_POINTS * step - (step + LAND_MESH_LOD_0_CELLS);
	float          meterStep = step * MAP_COORDS_METRES_PER_CELL;
	float          uvStep = step * (1.0f / LAND_MESH_LOD_0_CELLS);
	float          x = X;
	LandCell*      cell = &Cells[0][0];
	for (int xi = 0; xi < LAND_BLOCK_SIDE_POINTS; xi += step)
	{
		float z = Z;
		float tu = 0.0f;
		for (int zi = 0; zi < LAND_BLOCK_SIDE_POINTS; zi += step)
		{
			vertex->specular = *(uint32_t*)cell | 0xff000000;
			vertex->color = LandCell::g_darkness_to_color[cell->darkness];
			vertex->uv.Set(startV * AfterMatrix._31 + tu * AfterMatrix._11 + AfterMatrix._41,
			               tu * AfterMatrix._13 + startV * AfterMatrix._33 + AfterMatrix._43);
			clip++;
			vertex++;
			cell += step;
			z += meterStep;
			tu += uvStep;
		}
		x += meterStep;
		startV += uvStep;
		cell += rowSkip;
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
	if (LH3DTech::GetIndiceCount() != 0)
	{
		LH3DRender::SetMaterial(AfterMaterial, 0);
		LH3DRender::DrawTriangle(LH3DTech::GetCachePoints(), LH3DTech::GetPointCount(), LH3DTech::GetIndiceList(),
		                         LH3DTech::GetIndiceCount());
	}
	return LH3DTech::GetIndiceCount();
}
