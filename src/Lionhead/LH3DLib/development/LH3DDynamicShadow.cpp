#include "LH3DDynamicShadow.h"

#include "LH3DAnim.h"      /* For LH3DAnim */
#include "LH3DIsland.h"    /* For LH3DIsland, LandBlock */
#include "LH3DMapCoords.h" /* For LH3DMapCoords */
#include "LH3DMath.h"      /* For FloatToInt */
#include "LH3DMesh.h"      /* For LH3DMesh */
#include "LH3DMem.h"       /* For LH3DMem */
#include "LH3DObject.h"    /* For LH3DObject */
#include "LH3DP3.h"        /* For LH3DP3 */
#include "LH3DTShadow.h"   /* For LH3DTShadow */
#include "LH3DTech.h"      /* For LH3DTech */
#include "TShadowInfo.h"   /* For TShadowInfo */

#define LH3D_SHADOW_NEIGHBOUR_DISTANCE 60.0f
#define LH3D_SHADOW_ALPHA_MAX          255.0f
#define LH3D_SHADOW_BITMAP_MASK        (LH3D_T_SHADOW_BITMAP_SIZE - 1)

float LH3DTShadow::g_factorX = 1.0f;
float LH3DTShadow::g_factorZ = 1.0f;
int   LH3DTShadow::g_pitch = LH3D_T_SHADOW_SIZE;
float LH3DTShadow::VMAX = 255.0f;

static float g_shadow_fade_start = 50.0f;
static float g_shadow_fade_end = 80.0f;

LH3DTShadow::ScanLine LH3DTShadow::g_list_scan_line[LH3D_T_SHADOW_SIZE];
uint8_t*              LH3DTShadow::g_buffer;
uint8_t*              LH3DTShadow::g_bitmap;

#define LH3D_DYNAMIC_SHADOW_LIGHT_HEIGHT 15000.0f

void LH3DTShadow::DrawAlpha()
{
	if (LH3DTech::g_b_P3)
	{
		LH3DP3::DrawTShadowAlphaWrapper();
		return;
	}
	int vmax = (int)VMAX;
	for (int i = 0; i < g_pitch; i++)
	{
		ScanLine& line = g_list_scan_line[i];
		if (line.Used)
		{
			int   end = line.Max;
			int   x = line.Min;
			float du;
			float dv;
			float width = (float)(end - x);
			if (width == 0.0f)
			{
				du = dv = 0.0f;
			}
			else
			{
				float scale = 1.0f / width;
				du = (line.MaxU - line.MinU) * scale;
				dv = (line.MaxV - line.MinV) * scale;
			}
			float    u = line.MinU;
			float    v = line.MinV;
			uint8_t* dest = g_buffer + i * g_pitch + x;
			if (end > vmax)
			{
				end = vmax;
			}
			for (; x <= end; x++, dest++)
			{
				if (x >= 0)
				{
					*dest |= g_bitmap[(FloatToInt(v + 0.5f) & LH3D_SHADOW_BITMAP_MASK) * LH3D_T_SHADOW_BITMAP_SIZE +
					                  (FloatToInt(u + 0.5f) & LH3D_SHADOW_BITMAP_MASK)];
				}
				u += du;
				v += dv;
			}
			line.Used = false;
		}
	}
}

float GetAlphaForShadow(LH3DObject* object)
{
	LHPoint    position = object->matrix.GetPos();
	int        cellX = (int)(position.x / MAP_COORDS_METRES_PER_CELL);
	int        cellZ = (int)(position.z / MAP_COORDS_METRES_PER_CELL);
	LandBlock* block = LH3DIsland::GetBlock(cellX, cellZ);
	if (block != NULL && !(block->Distance < LH3DIsland::g_distance_vanish))
	{
		return 0.0f;
	}
	for (int blockX = -1; blockX < 2; blockX++)
	{
		for (int blockZ = -1; blockZ < 2; blockZ++)
		{
			cellX = (int)((blockX * LH3D_SHADOW_NEIGHBOUR_DISTANCE + position.x) / MAP_COORDS_METRES_PER_CELL);
			cellZ = (int)((blockZ * LH3D_SHADOW_NEIGHBOUR_DISTANCE + position.z) / MAP_COORDS_METRES_PER_CELL);
			block = LH3DIsland::GetBlock(cellX, cellZ);
			if (block != NULL && (block->Flags & LAND_BLOCK_VISIBLE) && block->Distance < LH3DIsland::g_distance_vanish)
			{
				position.y = LH3DIsland::GetAltitude(position);
				float scale = object->scale;
				float ratio = position.GetDistance(LH3DTech::g_camera.pos) /
				              (scale * object->GetMesh()->BoundingBox.DiagonalLength);
				if (ratio < g_shadow_fade_start)
				{
					return LH3D_SHADOW_ALPHA_MAX;
				}
				if (ratio > g_shadow_fade_end)
				{
					return 0.0f;
				}
				return LH3D_SHADOW_ALPHA_MAX - (ratio - g_shadow_fade_start) * LH3D_SHADOW_ALPHA_MAX /
				                                   (g_shadow_fade_end - g_shadow_fade_start);
			}
		}
	}
	return 0.0f;
}

LH3DDynamicShadow* LH3DDynamicShadow::Create()
{
	LH3DDynamicShadow* shadow = (LH3DDynamicShadow*)LH3DMem::Alloc(sizeof(LH3DDynamicShadow));
	if (shadow != NULL)
	{
		shadow->ShadowInfo = NULL;
		shadow->UseDefaultSun = false;
	}
	shadow->ShadowInfo = TShadowInfo::Create();
	shadow->UseDefaultSun = false;
	shadow->ShadowInfo->DynamicShadow = true;
	return shadow;
}

void LH3DDynamicShadow::Release()
{
	if (ShadowInfo != NULL)
	{
		ShadowInfo->Release();
		ShadowInfo = NULL;
	}
	LH3DMem::Free(this);
}

void LH3DDynamicShadow::Prepare(LH3DObject* object)
{
	if (ShadowInfo == NULL || !ShadowInfo->Enabled)
	{
		return;
	}
	float alpha = GetAlphaForShadow(object);
	ShadowInfo->Alpha = ShadowInfo->BaseAlpha * alpha * (1.0f / 255.0f);
	if (ShadowInfo->Alpha == 0)
	{
		return;
	}
	if (object->IsAnimated())
	{
		LHMatrix* list = LH3DMesh::g_current_list_matrix;
		object->GetCurrentAnim()->SetTransform(list, object->GetMesh(), object->GetCurrentCycleTime(), object->matrix);
	}
	if (UseDefaultSun)
	{
		ShadowInfo->Light.Set(DEFAULT_SUN);
	}
	else
	{
		LHPoint pos = object->matrix.GetPos();
		pos.y += LH3D_DYNAMIC_SHADOW_LIGHT_HEIGHT;
		ShadowInfo->Light.Set(pos);
	}
	ShadowInfo->Direction.Set(object->matrix.GetPos());
	ShadowInfo->Direction -= ShadowInfo->Light;
	ShadowInfo->Caster = object;
	ShadowInfo->MinX = LH3D_SHADOW_FAR;
	ShadowInfo->MinZ = LH3D_SHADOW_FAR;
	ShadowInfo->MaxX = -LH3D_SHADOW_FAR;
	ShadowInfo->MaxZ = -LH3D_SHADOW_FAR;
	ShadowInfo->MinDepth = LH3D_SHADOW_FAR;
	ShadowInfo->GroundHeight = 0.0f;
	LH3DMesh::g_current_lod = 1;
	LH3DTech::g_current_matrix = NULL;
	LH3DTech::g_local_to_clipping.Set(object->matrix);
	LH3DObject::g_current_object_in_draw = object;
	object->GetMesh()->CalculateShadow(&object->matrix, ShadowInfo);
	ShadowInfo->Prepare();
	ShadowInfo->Bounds.MinX = ShadowInfo->MinX;
	ShadowInfo->Bounds.MaxX = ShadowInfo->MaxX;
	ShadowInfo->Bounds.MinZ = ShadowInfo->MinZ;
	ShadowInfo->Bounds.MaxZ = ShadowInfo->MaxZ;
}
