#include "LH3DSubMesh.h"

LH3DSubMesh* LH3DSubMesh::g_current_sub_mesh;
uint32_t     LH3DSubMesh::g_current_status;

void LH3DSubMesh::Create(uint8_t* buffer, LH3DSubMesh* submesh)
{
	if (!(bool)submesh->LodAssigned && !submesh->Lod)
	{
		submesh->Lod = LH3D_MESH_LOD_NEAR | LH3D_MESH_LOD_MEDIUM | LH3D_MESH_LOD_FAR;
		submesh->LodAssigned = true;
	}
	if (submesh->NumBones == 0)
	{
		submesh->Bones = NULL;
	}
	else
	{
		submesh->Bones = (LH3DBone*)((uint8_t*)submesh->Bones + (unsigned long)buffer);
	}
	submesh->primitives_ = (LH3DPrimitive**)((uint8_t*)submesh->primitives_ + (unsigned long)buffer);
	for (int i = 0; i < submesh->NumPrimitives; i++)
	{
		*(unsigned long*)&submesh->primitives_[i] += (unsigned long)buffer;
		LH3DPrimitive::Create(buffer, submesh->primitives_[i]);
	}
}

int __fastcall LH3DSubMesh::ComputeProjectedPoints(float* projected, TShadowInfo* shadow, float* depths)
{
	int count = 0;
	g_current_sub_mesh = this;
	for (int i = 0; i < NumPrimitives; i++)
	{
		int points = primitives_[i]->ComputeProjectedPoints(projected, shadow, depths);
		if (depths)
		{
			depths += points * 3;
		}
		count += points;
		projected += points * 2;
	}
	return count;
}

void __fastcall LH3DSubMesh::DrawShadowPolys(uint8_t* buffer, long pitch, float* projected, TShadowInfo* shadow)
{
	g_current_sub_mesh = this;
	for (int i = 0; i < NumPrimitives; i++)
	{
		primitives_[i]->DrawShadowPolys(buffer, pitch, projected, shadow);
		projected += primitives_[i]->NumVertices * 2;
	}
}

void __fastcall LH3DSubMesh::ComputeBoundingBox(LHPoint& maxima, LHPoint& minima, int& initialized)
{
	g_current_sub_mesh = this;
	for (int i = 0; i < NumPrimitives; i++)
	{
		primitives_[i]->ComputeBoundingBox(maxima, minima, initialized);
	}
}

void LH3DSubMesh::DrawWithVerticalTranslation()
{
	g_current_sub_mesh = this;
	for (int i = 0; i < NumPrimitives; i++)
	{
		primitives_[i]->DrawWithVerticalTranslation();
	}
}

long LH3DSubMesh::GetTriangleCountDrawable()
{
	long count = 0;
	if (GetStatus() <= g_current_status)
	{
		for (int i = 0; i < NumPrimitives; i++)
		{
			count += primitives_[i]->GetTriangleCountDrawable();
		}
	}
	return count;
}

void LH3DSubMesh::GetTriangleDrawable(long index, LH3DVertex* a, LH3DVertex* b, LH3DVertex* c)
{
	long count = 0;
	if (GetStatus() <= g_current_status)
	{
		for (int i = 0; i < NumPrimitives; i++)
		{
			LH3DPrimitive* primitive = primitives_[i];
			long           before = count;
			count += primitive->GetTriangleCountDrawable();
			if (count > index)
			{
				primitive->GetTriangleDrawable(index - before, a, b, c);
				return;
			}
		}
	}
}
