#include "LH3DCitadel.h"

#include <stdio.h> /* For sprintf */

#include "Bitmap16B.h"       /* For struct Bitmap16B */
#include "LH3DIsland.h"      /* For struct LH3DIsland */
#include "LH3DMesh.h"        /* For struct LH3DMesh */
#include "LH3DPrimitive.h"   /* For struct LH3DPrimitive */
#include "LH3DSubMesh.h"     /* For struct LH3DSubMesh */
#include "LH3DTexture.h"     /* For struct LH3DTexture */
#include "InfluenceCircle.h" /* For struct InfluenceCircle */
#include "LHPoint.h"         /* For struct LHPoint */

#define LH3D_CITADEL_PATH                  "Data\\Citadel\\OutsideMeshes\\"
#define LH3D_CITADEL_CHANGE_THRESHOLD      0.03f
#define LH3D_CITADEL_LAST_ALIGNMENT        4
#define LH3D_CITADEL_LAST_STAGE            2
#define LH3D_CITADEL_BLEND_MAX             255
#define LH3D_CITADEL_NEUTRAL_ALIGNMENT     0.5f
#define LH3D_CITADEL_ALIGNMENT_BLEND_SCALE (LH3D_CITADEL_BLEND_MAX * 2.0f)
#define LH3D_CITADEL_PLAYER_MASK           7
#define LH3D_CITADEL_TEXTURE_PLAYER_MASK   (LH3D_CITADEL_PLAYERS - 1)
#define LH3D_CITADEL_BLEND_CHANNEL(low, high, weight, inverse, mask)                                                   \
	(((((low) & (mask)) * (weight) + ((high) & (mask)) * (inverse)) / LH3D_CITADEL_BLEND_MAX) & (mask))
#define LH3D_CITADEL_FLATTEN_RADIUS 8
#define LH3D_CITADEL_FLATTEN_INNER  35.0f
#define LH3D_CITADEL_FLATTEN_OUTER  70.0f

LH3DMesh* LH3DCitadel::g_mesh_entrance;

char LH3DCitadel::g_texture_names[LH3D_CITADEL_PLAYERS][LH3D_CITADEL_ALIGNMENTS][0x80] = {
	{LH3D_CITADEL_PATH "Evil0.16B", LH3D_CITADEL_PATH "Neutral0.16B", LH3D_CITADEL_PATH "Good0.16B"},
	{LH3D_CITADEL_PATH "Evil1.16B", LH3D_CITADEL_PATH "Neutral1.16B", LH3D_CITADEL_PATH "Good1.16B"},
	{LH3D_CITADEL_PATH "Evil2.16B", LH3D_CITADEL_PATH "Neutral2.16B", LH3D_CITADEL_PATH "Good2.16B"},
	{LH3D_CITADEL_PATH "Evil3.16B", LH3D_CITADEL_PATH "Neutral3.16B", LH3D_CITADEL_PATH "Good3.16B"},
};

float LH3DCitadel::GetCoeffFlatten(long x, long z)
{
	float dx = x * MAP_COORDS_METRES_PER_CELL;
	float dz = z * MAP_COORDS_METRES_PER_CELL;
	float distance = sqrt(dx * dx + dz * dz);
	if (distance > LH3D_CITADEL_FLATTEN_OUTER)
	{
		return 1.0f;
	}
	if (distance < LH3D_CITADEL_FLATTEN_INNER)
	{
		return 0.0f;
	}
	return (distance - LH3D_CITADEL_FLATTEN_INNER) / (LH3D_CITADEL_FLATTEN_OUTER - LH3D_CITADEL_FLATTEN_INNER);
}

LH3DMesh* LH3DCitadel::GetMeshFromDisk(long stage, long level)
{
	char name[0x400];
	sprintf(name, LH3D_CITADEL_PATH "B_TEMPLE%d%d.l3d", stage, level);
	return LH3DMesh::CreateFromHD(name, true);
}

LH3DMesh* LH3DCitadel::CreateFirstMesh()
{
	return LH3DMesh::CreateFromHD(LH3D_CITADEL_PATH "B_FIRST_TEMPLE.l3d", false);
}

void LH3DCitadel::CreateWorship()
{
	LH3DTexture* skin = GetMesh()->skins[0];
	if (CitadelMesh == NULL)
	{
		CitadelMesh = LH3DMesh::CreateFromHD(LH3D_CITADEL_PATH "B_WORSHIP.l3d", true);
	}
	for (int i = 0; i < CitadelMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = CitadelMesh->submeshes[i];
		for (int j = 0; j < submesh->NumPrimitives; j++)
		{
			submesh->primitives_[j]->GetMaterial()->texture = skin;
		}
	}
}

LH3DCitadel::~LH3DCitadel()
{
	g_count_static_object--;
}

void LH3DCitadel::Release()
{
	delete this;
}

void LH3DCitadel::InitTemple(LHPoint* point, float percent_built, unsigned long player)
{
	Player = player & LH3D_CITADEL_PLAYER_MASK;
	SetMesh(CreateFirstMesh(), NULL, NULL);
	SetDynamicLighting(true);
	SetCastDynamicShadow(false);
	SetFootPrintOnTexture(true);
	SetDisappear(false);
	AppliedAlignment = Alignment = Nasty = LH3D_CITADEL_NEUTRAL_ALIGNMENT;
	AppliedLevel = Level = Stage = 0.0f;
	Life = 0.0f;
	SetTempleLife(percent_built);
	ForceAlignement = true;
	CellZ = (long)(matrix._43 / MAP_COORDS_METRES_PER_CELL);
	CellX = (long)(matrix._41 / MAP_COORDS_METRES_PER_CELL);
	uint8_t   centre;
	LandCell* centreCell = LH3DIsland::GetCell(CellX, CellZ);
	if (centreCell != NULL)
	{
		centre = centreCell->altitude;
	}
	else
	{
		centre = 0;
	}
	float centreAltitude = centre;
	for (long x = CellX - LH3D_CITADEL_FLATTEN_RADIUS; x <= CellX + LH3D_CITADEL_FLATTEN_RADIUS; x++)
	{
		for (long z = CellZ - LH3D_CITADEL_FLATTEN_RADIUS; z <= CellZ + LH3D_CITADEL_FLATTEN_RADIUS; z++)
		{
			float     coeff = GetCoeffFlatten(x - CellX, z - CellZ);
			uint8_t   altitude;
			LandCell* cell = LH3DIsland::GetCell(x, z);
			if (cell != NULL)
			{
				altitude = cell->altitude;
			}
			else
			{
				altitude = 0;
			}
			LH3DIsland::SetHeightAsByte(
				x, z, (long)(centreAltitude * (1.0f - coeff) + altitude * coeff) & LAND_CELL_MAX_ALTITUDE);
		}
	}
	UpdateMelting();
	if (g_mesh_entrance == NULL)
	{
		g_mesh_entrance = LH3DMesh::CreateFromHD(LH3D_CITADEL_PATH "Entrance.l3d", false);
	}
	GetMesh()->ComputeBoundingBox();
	CitadelMesh = NULL;
	CreateWorship();
	ProcessAlignement();
}

void LH3DCitadel::Draw()
{
	g_last_selected_box = 0;
	g_current_object_in_draw = this;
	LH3DMesh* mesh = GetMesh();
	if (mesh->BoundingBox.CheckRegionOnScreen(this))
	{
		if (Life < 1.0f)
		{
			LH3DPrimitive::g_size_fine_wall = 1.0f;
			LH3DPrimitive::g_size_thick_wall = 1.0f;
			LH3DStaticObject::DrawPartialyBuilt(Life);
			LH3DPrimitive::g_size_fine_wall = 0.2f;
			LH3DPrimitive::g_size_thick_wall = 0.35f;
		}
		else
		{
			LH3DStaticObject::Draw();
		}
	}
}

bool32_t LH3DCitadel::IsChangedSize()
{
	if (fabs(AppliedAlignment - Alignment) > LH3D_CITADEL_CHANGE_THRESHOLD ||
	    fabs(AppliedLevel - Level) > LH3D_CITADEL_CHANGE_THRESHOLD)
	{
		return true;
	}
	return false;
}

void LH3DCitadel::SetTempleLife(float life)
{
	if (life < 0.0f)
	{
		life = 0.0f;
	}
	else
	{
		if (life > 1.0f)
		{
			life = 1.0f;
		}
		if (life == 1.0f && Life < 1.0f)
		{
			SetShadowOnTexture(true);
		}
	}
	Life = life;
	if (life == 1.0f)
	{
		InfluenceCircle::g_b_valid[Player] = true;
	}
}

bool32_t __fastcall LH3DCitadel::GetExtraPos(long index, LHPoint* point) const
{
	LH3DMesh*             mesh = GetMesh();
	LH3DMeshExtraMetrics* metrics = (LH3DMeshExtraMetrics*)mesh->GetEMetricsData();
	if (metrics == NULL)
	{
		*point = *(LHPoint*)&matrix.m[9];
		return false;
	}
	if (index < metrics->Count)
	{
		point->Set(metrics->Matrices[index]._41, metrics->Matrices[index]._42, metrics->Matrices[index]._43);
		matrix.TransformPoint(*point);
		if (IsStaticMorphable())
		{
			point->y += LH3DIsland::GetAltitude(*point) - LH3DIsland::GetAltitude(matrix.GetPos());
		}
		return true;
	}
	*point = *(LHPoint*)&matrix.m[9];
	return false;
}

bool32_t __fastcall LH3DCitadel::GetExtraPos(long index, LHMatrix* result)
{
	LH3DMeshExtraMetrics* metrics = (LH3DMeshExtraMetrics*)g_mesh_entrance->GetEMetricsData();
	if (metrics == NULL)
	{
		*result = matrix;
		return false;
	}
	if (index < metrics->Count)
	{
		result->Set(metrics->Matrices[index]);
		result->PostMultiply(matrix);
		if (IsStaticMorphable())
		{
			result->GetPos().y += LH3DIsland::GetAltitude(result->GetPos()) - LH3DIsland::GetAltitude(matrix.GetPos());
		}
		return true;
	}
	*result = matrix;
	return false;
}

bool32_t LH3DCitadel::ProcessAlignement()
{
	if (IsChangedSize() || ForceAlignement)
	{
		ForceAlignement = false;
		long stage = GetStage(Level);
		long nextStage = stage + 1;
		if (stage > LH3D_CITADEL_LAST_STAGE)
		{
			stage = LH3D_CITADEL_LAST_STAGE;
		}
		else if (stage < 0)
		{
			stage = 0;
		}
		if (nextStage > LH3D_CITADEL_LAST_STAGE)
		{
			nextStage = LH3D_CITADEL_LAST_STAGE;
		}
		else if (nextStage < 0)
		{
			nextStage = 0;
		}
		float stageBlend = nextStage - Level * 2.0f;
		if (stageBlend < 0.0f)
		{
			stageBlend = 0.0f;
		}
		else if (stageBlend > 1.0f)
		{
			stageBlend = 1.0f;
		}
		long level = (long)(Alignment * LH3D_CITADEL_LAST_ALIGNMENT);
		long nextLevel = level + 1;
		if (level > LH3D_CITADEL_LAST_ALIGNMENT)
		{
			level = LH3D_CITADEL_LAST_ALIGNMENT;
		}
		else if (level < 0)
		{
			level = 0;
		}
		if (nextLevel > LH3D_CITADEL_LAST_ALIGNMENT)
		{
			nextLevel = LH3D_CITADEL_LAST_ALIGNMENT;
		}
		else if (nextLevel < 0)
		{
			nextLevel = 0;
		}
		float     levelBlend = nextLevel - Alignment * LH3D_CITADEL_LAST_ALIGNMENT;
		LH3DMesh* meshes[2];
		meshes[0] = GetMeshFromDisk(stage, level);
		meshes[1] = GetMeshFromDisk(nextStage, level);
		GetMesh()->Blend(meshes[0], meshes[1], 1.0f - stageBlend, false);
		meshes[0]->Release();
		meshes[1]->Release();
		if (level != nextLevel)
		{
			LH3DMesh* nextFrom = GetMeshFromDisk(stage, nextLevel);
			LH3DMesh* nextTo = GetMeshFromDisk(nextStage, nextLevel);
			nextFrom->Blend(nextFrom, nextTo, stageBlend, false);
			GetMesh()->Blend(GetMesh(), nextFrom, 1.0f - levelBlend, false);
			nextFrom->Release();
			nextTo->Release();
		}
		for (int i = 0; i < GetMesh()->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = GetMesh()->submeshes[i];
			for (int j = 0; j < submesh->NumPrimitives; j++)
			{
				LH3DPrimitive* primitive = submesh->primitives_[j];
				for (int k = 0; k < primitive->NumVertices; k++)
				{
					LH3DVertex* vertex = &primitive->Vertices[k];
					LHPoint     position = vertex->position;
					matrix.TransformPoint(position);
					LH3DMapCoords coords(position.x, position.z);
					vertex->position.y -= matrix._42 - LH3DIsland::GetAltitude(coords);
				}
			}
		}
		GetMesh()->ComputeBoundingBox();
		AppliedLevel = Level;
		AppliedAlignment = Alignment;
		LH3DTexture* texture = GetMesh()->skins[0];
		LH3DSurfDesc desc;
		texture->Lock(&desc);
		char* lowName;
		char* highName;
		float weightSource;
		if (Alignment > LH3D_CITADEL_NEUTRAL_ALIGNMENT)
		{
			weightSource = Alignment - LH3D_CITADEL_NEUTRAL_ALIGNMENT;
			lowName = g_texture_names[Player & LH3D_CITADEL_TEXTURE_PLAYER_MASK][1];
			highName = g_texture_names[Player & LH3D_CITADEL_TEXTURE_PLAYER_MASK][2];
		}
		else
		{
			weightSource = Alignment;
			lowName = g_texture_names[Player & LH3D_CITADEL_TEXTURE_PLAYER_MASK][0];
			highName = g_texture_names[Player & LH3D_CITADEL_TEXTURE_PLAYER_MASK][1];
		}
		long weightValue = (long)(weightSource * LH3D_CITADEL_ALIGNMENT_BLEND_SCALE);
		if (weightValue < 0)
		{
			weightValue = 0;
		}
		else if (weightValue > LH3D_CITADEL_BLEND_MAX)
		{
			weightValue = LH3D_CITADEL_BLEND_MAX;
		}
		uint32_t   weight = weightValue;
		Bitmap16B* lowBitmap = Bitmap16B::CreateFromHD(lowName, true);
		Bitmap16B* highBitmap = Bitmap16B::CreateFromHD(highName, true);
		uint16_t*  lowPixels = lowBitmap->Data;
		uint16_t*  highPixels = highBitmap->Data;
		uint32_t   inverse = LH3D_CITADEL_BLEND_MAX - weight;
		long       stride = desc.Pitch / 2;
		if (desc.Surface != NULL)
		{
			for (long y = 0; y < desc.Height; y++)
			{
				for (long x = 0; x < desc.Width; x++, lowPixels++, highPixels++)
				{
					uint32_t low = *lowPixels;
					uint32_t high = *highPixels;
					((uint16_t*)desc.Surface)[y * stride + x] =
						LH3D_CITADEL_BLEND_CHANNEL(low, high, weight, inverse, 0xf0) |
						LH3D_CITADEL_BLEND_CHANNEL(low, high, weight, inverse, 0xf) |
						LH3D_CITADEL_BLEND_CHANNEL(low, high, weight, inverse, 0xf00) | (high & 0xf000);
				}
			}
		}
		texture->Unlock();
		if (texture->GetType() == LH3D_TEXTURE_TYPE_NAMED || texture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
		{
			texture->ReloadPending = true;
		}
		lowBitmap->Release();
		highBitmap->Release();
		return true;
	}
	return false;
}
