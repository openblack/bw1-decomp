#ifndef BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H
#define BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stdint.h>    /* For uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#include "LH3DMesh.h"      /* For LH3DMesh */
#include "LH3DPrimitive.h" /* For struct LH3DPrimitive */

// Forward Declares

struct LHPoint;
struct SRTextured;
struct SubCollideDataRender;
struct TShadowInfo;

#define LH3D_BONE_NO_PARENT -1

struct LH3DBone
{
	long     Parent; /* 0x0 */
	uint32_t field_0x4;
	uint32_t field_0x8;
	LHMatrix Matrix; /* 0xc */
};
static_assert(sizeof(LH3DBone) == 0x3c, "Data type is of wrong size");

struct LH3DSubMesh
{
	uint32_t        Skinned : 1;
	uint32_t        field_0x0_1 : 3;
	uint32_t        Status : 6;
	uint32_t        field_0x0_10 : 1;
	uint32_t        LodAssigned : 1;
	uint32_t        Window : 1;
	uint32_t        Physics : 1;
	uint32_t        field_0x0_14 : 15;
	uint32_t        Lod : 3;
	int             NumPrimitives;
	LH3DPrimitive** primitives_;
	int             NumBones;
	LH3DBone*       Bones;

	// BW1W120 00fa93bc BW1M119 012d3e1c (LHCombined Release)
	static LH3DSubMesh* g_current_sub_mesh;
	// BW1W120 00fa93c0 BW1M119 012d3e18 (LHCombined Release)
	static uint32_t g_current_status;

	// Static methods

	// BW1W120 0087fa00 BW1M119 010bb180 (LHCombined Release)
	static void Create(uint8_t* buffer, LH3DSubMesh* submesh);

	// BW1W120 inlined BW1M119 010291e0 (LHCombined Release)
	uint32_t GetLod() { return Lod; }
	// BW1W120 inlined BW1M119 010791d0 (LHCombined Release)
	LH3DPrimitive** GetListPtrPrimitive() { return primitives_; }
	// BW1W120 inlined BW1M119 inlined
	int GetPrimitiveCount() { return NumPrimitives; }
	// BW1W120 inlined BW1M119 01043750 (LHCombined Release)
	bool IsWindow() { return Window; }
	// BW1W120 inlined BW1M119 010648d0 (LHCombined Release)
	uint32_t GetStatus() { return Status; }
	// BW1W120 inlined BW1M119 01079ee0 (LHCombined Release)
	bool IsPhysics() { return Physics; }
	// BW1W120 inlined BW1M119 0100e660 (LHCombined Release)
	long GetVerticesCount()
	{
		long count = 0;
		for (int i = 0; i < NumPrimitives; i++)
		{
			count += primitives_[i]->GetVerticesCount();
		}
		return count;
	}
	// BW1W120 0087fa70 BW1M119 0100d350 (LHCombined Release)
	int __fastcall ComputeProjectedPoints(float* projected, TShadowInfo* shadow, float* depths);
	// BW1W120 0087fad0 BW1M119 0100d850 (LHCombined Release)
	void __fastcall DrawShadowPolys(uint8_t* buffer, long pitch, float* projected, TShadowInfo* shadow);
	// BW1W120 0087fb20 BW1M119 010bb010 (LHCombined Release)
	void __fastcall ComputeBoundingBox(LHPoint& maxima, LHPoint& minima, int& initialized);
	// BW1W120 0087fb60 BW1M119 0101de80 (LHCombined Release)
	void DrawWithVerticalTranslation();
	// BW1W120 0087fb90 BW1M119 010baf00 (LHCombined Release)
	long GetTriangleCountDrawable();
	// BW1W120 0087fbd0 BW1M119 010bade0 (LHCombined Release)
	void GetTriangleDrawable(long index, LH3DVertex* a, LH3DVertex* b, LH3DVertex* c);
	// BW1W120 00849e60 BW1M119 0106d1b0 (LHCombined Release)
	long GetTriangleCount();
	// BW1W120 007acde0 BW1M119 inlined
	bool32_t HasBones();
	// BW1W120 inlined BW1M119 01076680 (LHCombined Release)
	void DrawFroz()
	{
		if (GetStatus() > g_current_status)
		{
			return;
		}
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawFroz();
		}
	}
	// BW1W120 inlined BW1M119 01076200 (LHCombined Release)
	void DrawComplexFroz()
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawComplexFroz();
		}
	}
	// BW1W120 inlined BW1M119 01067ee0 (LHCombined Release)
	void DrawCutByPlane()
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawCutByPlane();
		}
	}
	// Inliner IL size: 69
	// BW1W120 00813740 BW1M119 0103a740 (LHCombined Release)
	void DrawComplex()
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawComplex();
		}
	}
	// BW1W120 inlined BW1M119 0107e1e0 (LHCombined Release)
	void DrawEnvMapST()
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawEnvMapST();
		}
	}
	// BW1W120 inlined BW1M119 0107e7a0 (LHCombined Release)
	void DrawCage(float scale)
	{
		if (GetStatus() <= g_current_status)
		{
			g_current_sub_mesh = this;
			for (int i = 0; i < NumPrimitives; i++)
			{
				primitives_[i]->DrawCage(scale);
			}
		}
	}
	// BW1W120 0080c700 BW1M119 0107f130 (LHCombined Release)
	void __fastcall DrawReverse(bool32_t lit)
	{
		if (GetStatus() <= g_current_status)
		{
			g_current_sub_mesh = this;
			if (lit)
			{
				for (int i = 0; i < NumPrimitives; i++)
				{
					LH3DPrimitive* primitive = primitives_[i];
					if (!primitive->GetMaterial()->IsDoubleSided())
					{
						primitive->ReverseTriangles();
						primitive->DrawLit();
						primitive->ReverseTriangles();
					}
				}
			}
			else
			{
				for (int i = 0; i < NumPrimitives; i++)
				{
					LH3DPrimitive* primitive = primitives_[i];
					if (!primitive->GetMaterial()->IsDoubleSided())
					{
						primitive->ReverseTriangles();
						primitive->Draw();
						primitive->ReverseTriangles();
					}
				}
			}
		}
	}
	// BW1W120 0080d910 BW1M119 0102a0b0 (LHCombined Release)
	void __fastcall Draw(bool32_t lit)
	{
		if (GetStatus() <= g_current_status)
		{
			g_current_sub_mesh = this;
			if (lit)
			{
				for (int i = 0; i < NumPrimitives; i++)
				{
					primitives_[i]->DrawLit();
				}
			}
			else
			{
				for (int i = 0; i < NumPrimitives; i++)
				{
					primitives_[i]->Draw();
				}
			}
		}
	}
	// BW1W120 0080d970 BW1M119 0107d750 (LHCombined Release)
	void DrawTnL()
	{
		if (GetStatus() <= g_current_status)
		{
			g_current_sub_mesh = this;
			for (int i = 0; i < GetPrimitiveCount(); i++)
			{
				LH3DPrimitive* primitive = GetListPtrPrimitive()[i];
				primitive->DrawLitTnL();
			}
		}
	}
	// BW1W120 0080e4f0 BW1M119 0102f690 (LHCombined Release)
	void __fastcall DrawUnclipped(bool32_t lit)
	{
		if (GetStatus() <= g_current_status)
		{
			g_current_sub_mesh = this;
			if (lit)
			{
				for (int i = 0; i < NumPrimitives; i++)
				{
					primitives_[i]->DrawLitUnclipped();
				}
			}
			else
			{
				for (int i = 0; i < NumPrimitives; i++)
				{
					primitives_[i]->DrawUnclipped();
				}
			}
		}
	}
	// BW1W120 inlined BW1M119 01077d10 (LHCombined Release)
	void DrawIntoSprite(void* sprite)
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawIntoSprite(sprite);
		}
	}
	// BW1W120 inlined BW1M119 inlined
	void DrawWindow()
	{
		if (LH3DMesh::g_window_state && IsWindow())
		{
			unsigned long savedColor = LH3DMesh::g_color;
			LH3DMesh::g_color = LH3DMesh::g_window_col;
			Draw(false);
			LH3DMesh::g_color = savedColor;
		}
	}
	// BW1W120 inlined BW1M119 01075a90 (LHCombined Release)
	void DrawSnow()
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawSnow();
		}
	}
	// BW1W120 inlined BW1M119 0107be90 (LHCombined Release)
	void DrawTextureShadow()
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawTextureShadow();
		}
	}
	// BW1W120 inlined BW1M119 0107bb90 (LHCombined Release)
	void DrawTextureShadow32x32(SubCollideDataRender* collide, SRTextured* rasterizer, TShadowInfo* shadow)
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawTextureShadow32x32(collide, rasterizer, shadow);
		}
	}
	// BW1W120 inlined BW1M119 01079330 (LHCombined Release)
	void DrawNormals()
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawNormals();
		}
	}
	// BW1W120 inlined BW1M119 01010700 (LHCombined Release)
	void DrawWaterReflection()
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawWaterReflection();
		}
	}
	// BW1W120 inlined BW1M119 01005850 (LHCombined Release)
	bool32_t CheckPixelCollide()
	{
		if (GetStatus() > g_current_status)
		{
			return false;
		}
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			if (primitives_[i]->CheckPixelCollide())
			{
				return true;
			}
		}
		return false;
	}
	// BW1W120 inlined BW1M119 01007a00 (LHCombined Release)
	bool32_t CheckTriangleCollide()
	{
		if (GetStatus() > g_current_status)
		{
			return false;
		}
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			if (primitives_[i]->CheckTriangleCollide())
			{
				return true;
			}
		}
		return false;
	}
	// BW1W120 inlined BW1M119 01011b00 (LHCombined Release)
	bool32_t CheckTriangleCollideMorph()
	{
		if (GetStatus() > g_current_status)
		{
			return false;
		}
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			if (primitives_[i]->CheckTriangleCollideMorph())
			{
				return true;
			}
		}
		return false;
	}
	// BW1W120 inlined BW1M119 0101ca70 (LHCombined Release)
	void DrawEnvMapMT()
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawEnvMapMT();
		}
	}
	// BW1W120 inlined BW1M119 0107a3d0 (LHCombined Release)
	void DrawRefMapMT()
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawRefMapMT();
		}
	}
	// BW1W120 inlined BW1M119 01075de0 (LHCombined Release)
	void DrawComplexEnvMapMT()
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawComplexEnvMapMT();
		}
	}
	// BW1W120 inlined BW1M119 010756c0 (LHCombined Release)
	void DrawComplexRefMapMT()
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawComplexRefMapMT();
		}
	}
	// BW1W120 inlined BW1M119 010753a0 (LHCombined Release)
	void DrawForMouse()
	{
		g_current_sub_mesh = this;
		for (int i = 0; i < NumPrimitives; i++)
		{
			primitives_[i]->DrawForMouse();
		}
	}
};

inline void __fastcall LH3DMesh::Draw(bool32_t lit)
{
	InitMatrixDrawing();
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if (g_window_state && submesh->IsWindow())
		{
			unsigned long savedColor = g_color;
			g_color = g_window_col;
			submesh->Draw(false);
			g_color = savedColor;
		}
		else if (submesh->GetLod() & g_current_lod)
		{
			submesh->Draw(lit);
			UpdateMatrixDrawing(submesh->NumBones);
		}
	}
}

inline void LH3DMesh::DrawTnL()
{
	InitMatrixDrawing();
	if (IsContainsTnLData())
	{
		g_current_vb = (LH3DTnLData*)(GetTnLData() + sizeof(uint32_t));
	}
	else
	{
		g_current_vb = NULL;
	}
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if (g_window_state && submesh->IsWindow())
		{
			unsigned long savedColor = g_color;
			g_color = g_window_col;
			submesh->Draw(false);
			g_color = savedColor;
		}
		else if (submesh->GetLod() & g_current_lod)
		{
			submesh->DrawTnL();
			UpdateMatrixDrawing(submesh->NumBones);
		}
	}
}

inline void __fastcall LH3DMesh::DrawUnclipped(bool32_t lit)
{
	InitMatrixDrawing();
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if (g_window_state && submesh->IsWindow())
		{
			unsigned long savedColor = g_color;
			g_color = g_window_col;
			submesh->DrawUnclipped(false);
			g_color = savedColor;
		}
		else if (submesh->GetLod() & g_current_lod)
		{
			submesh->DrawUnclipped(lit);
			UpdateMatrixDrawing(submesh->NumBones);
		}
	}
}

inline void __fastcall LH3DMesh::DrawReverse(bool32_t lit)
{
	InitMatrixDrawing();
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if (g_window_state && submesh->IsWindow())
		{
			unsigned long savedColor = g_color;
			g_color = g_window_col;
			submesh->DrawReverse(false);
			g_color = savedColor;
		}
		else if (submesh->GetLod() & g_current_lod)
		{
			submesh->DrawReverse(lit);
			UpdateMatrixDrawing(submesh->NumBones);
		}
	}
}

inline void LH3DMesh::DrawFroz()
{
	InitMatrixDrawing();
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if (submesh->GetLod() & g_current_lod)
		{
			submesh->DrawFroz();
			UpdateMatrixDrawing(submesh->NumBones);
		}
	}
}

inline void LH3DMesh::DrawComplex()
{
	InitMatrixDrawing();
	for (int i = 0; i < SubmeshCount; i++)
	{
		submeshes[i]->DrawComplex();
		UpdateMatrixDrawing(submeshes[i]->NumBones);
	}
}

#endif /* BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H */
