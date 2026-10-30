#ifndef BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "BBox2D.h"     /* For struct BBox2D */
#include "LH3DMesh.h"   /* For LH3DMesh */
#include "LH3DObject.h" /* For struct LH3DObject */

// Forward Declares

struct LH3DMesh;
struct LHMatrix;
struct LHPoint;

class LH3DMeshedObject : public LH3DObject
{
public:
	LH3DMesh* mesh; /* 0x7c */

	// Virtual methods

	// BW1W120 007f9d40 BW1M119 01007530 (LHCombined Release)
	virtual bool32_t IsUseAlpha()
	{
		if (mesh != NULL)
		{
			return mesh->flags & LH3D_MESH_FLAGS_USE_ALPHA;
		}
		return false;
	}
	// BW1W120 007f9d60 BW1M119 01029300 (LHCombined Release)
	virtual void __fastcall SetDrawWithGlobalAlpha(bool32_t draw_with_global_alpha)
	{
		if (draw_with_global_alpha)
		{
			DrawWithGlobalAlpha = true;
		}
		else
		{
			DrawWithGlobalAlpha = false;
		}
	}
	// BW1W120 007f9d80 BW1M119 010292b0 (LHCombined Release)
	virtual bool32_t IsDrawWithGlobalAlpha() { return DrawWithGlobalAlpha; }
	// BW1W120 007f9d90 BW1M119 010432e0 (LHCombined Release)
	virtual void __fastcall SetLinked(bool32_t linked)
	{
		if (linked)
		{
			Linked = true;
		}
		else
		{
			Linked = false;
		}
	}
	// BW1W120 007f9db0 BW1M119 01094d50 (LHCombined Release)
	virtual bool32_t IsLinked() { return Linked; }
	// BW1W120 007f9dc0 BW1M119 010cdb40 (LHCombined Release)
	virtual void __fastcall SetFootPrintOnTexture(bool32_t foot_print_on_texture)
	{
		if (foot_print_on_texture)
		{
			FootPrintOnTexture = true;
		}
		else
		{
			FootPrintOnTexture = false;
		}
	}
	// BW1W120 007fa2e0 BW1M119 01052e60 (LHCombined Release)
	virtual bool32_t IsFootPrintOnTexture();
	// BW1W120 007f9de0 BW1M119 0114d400 (LHCombined Release)
	virtual void __fastcall SetPaper(bool32_t paper)
	{
		if (paper)
		{
			Paper = true;
		}
		else
		{
			Paper = false;
		}
	}
	// BW1W120 007f9e00 BW1M119 010248a0 (LHCombined Release)
	virtual bool32_t IsPaper() { return Paper; }
	// BW1W120 007f9e10 BW1M119 01007730 (LHCombined Release)
	virtual void __fastcall SetMesh(LH3DMesh* mesh1, LH3DMesh* mesh2, LH3DMesh* mesh3)
	{
		if (mesh != NULL)
		{
			mesh->Release();
		}
		mesh = mesh1;
		if (mesh1 != NULL)
		{
			mesh1->AddReference();
			if (IsAnimated())
			{
				GetCurrentAnim();
			}
			if (IsUseAlpha())
			{
				SetNeedSorting(true);
			}
			else
			{
				SetNeedSorting(false);
			}
		}
	}
	// BW1W120 007f9e70 BW1M119 01027cd0 (LHCombined Release)
	virtual LH3DMesh* GetMesh() const { return mesh; }
	// BW1W120 008132f0 BW1M119 01077b40 (LHCombined Release)
	virtual void DrawDebugInfo();
	// BW1W120 00815a70 BW1M119 01027520 (LHCombined Release)
	virtual void AddDrawing();
	// BW1W120 00815980 BW1M119 01073e20 (LHCombined Release)
	virtual bool32_t DrawWithClipping();
	// BW1W120 00810110 BW1M119 0107a040 (LHCombined Release)
	virtual void DrawExtraMetric();
	// BW1W120 007f9e80 BW1M119 0101fca0 (LHCombined Release)
	virtual bool32_t __fastcall ContainsThisBoundingBox(const BBox2D& bbox)
	{
		LH3DBoundingBox& box = mesh->BoundingBox;
		BBox2D           bounds;
		bounds.MinX = box.centre.x + matrix.GetPos().x - box.size.x;
		bounds.MinZ = box.centre.z + matrix.GetPos().z - box.size.z;
		bounds.MaxX = box.centre.x + box.size.x + matrix.GetPos().x;
		bounds.MaxZ = box.centre.z + box.size.z + matrix.GetPos().z;
		if (bounds.MinX > bbox.MaxX)
		{
			return false;
		}
		if (bounds.MaxX < bbox.MinX)
		{
			return false;
		}
		if (bounds.MinZ > bbox.MaxZ)
		{
			return false;
		}
		if (bounds.MaxZ < bbox.MinZ)
		{
			return false;
		}
		return true;
	}
	// BW1W120 007f9f10 BW1M119 0100bed0 (LHCombined Release)
	virtual bool32_t __fastcall GetChimneyPos(LHPoint* point) const
	{
		if (mesh->flags & LH3D_MESH_FLAGS_HAS_CHIMNEY_POSITION)
		{
			point->Set(mesh->GetExtraPos()[LH3D_MESH_EXTRA_POS_CHIMNEY]);
			matrix.TransformPoint(*point);
			return true;
		}
		return false;
	}
	// BW1W120 007f9fb0 BW1M119 0100bff0 (LHCombined Release)
	virtual bool32_t __fastcall GetDoorPos(LHPoint* point) const
	{
		if (mesh->flags & LH3D_MESH_FLAGS_HAS_DOOR_POSITION)
		{
			point->Set(mesh->GetExtraPos()[LH3D_MESH_EXTRA_POS_DOOR]);
			matrix.TransformPoint(*point);
			return true;
		}
		return false;
	}
	// BW1W120 0080ff20 BW1M119 010117f0 (LHCombined Release)
	virtual bool32_t __fastcall GetExtraPos(long index, LHPoint* point) const;
	// BW1W120 007fa050 BW1M119 010703a0 (LHCombined Release)
	virtual bool32_t __fastcall GetExtraPos(long index, LHMatrix* result)
	{
		LH3DMeshExtraMetrics* metrics = (LH3DMeshExtraMetrics*)mesh->GetEMetricsData();
		if (metrics == NULL)
		{
			*result = matrix;
			return false;
		}
		if (index < metrics->Count)
		{
			result->Set(metrics->Matrices[index]);
			result->PostMultiply(matrix);
			return true;
		}
		*result = matrix;
		return false;
	}
	// BW1W120 008185d0 BW1M119 010708f0 (LHCombined Release)
	virtual bool32_t GetNewEP(long index, long type, LHMatrix* matrix);
	// BW1W120 00818790 BW1M119 010707d0 (LHCombined Release)
	virtual long HowManyNewEp(long type);

	// Constructors

	// BW1W120 008164b0 BW1M119 010734b0 (LHCombined Release)
	LH3DMeshedObject();

	// Destructor

	// BW1W120 00816680 BW1M119 010732a0 (LHCombined Release)
	~LH3DMeshedObject()
	{
		if (mesh != NULL)
		{
			mesh->Release();
			mesh = NULL;
		}
	}
};

inline bool32_t LH3DMeshedObject::IsFootPrintOnTexture()
{
	return FootPrintOnTexture;
}

#endif /* BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H */
