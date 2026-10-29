#ifndef BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LH3DMesh.h"   /* For LH3DMesh */
#include "LH3DObject.h" /* For struct LH3DObject */

// Forward Declares

struct BBox2D;
struct LH3DMesh;
struct LHMatrix;
struct LHPoint;

class LH3DMeshedObject : public LH3DObject
{
public:
	LH3DMesh* mesh; /* 0x7c */

	// Virtual methods

	// BW1W120 007f9de0 BW1M119 0114d400 (LHCombined Release)
	virtual void __fastcall SetPaper(bool32_t paper);
	// BW1W120 007f9e00 BW1M119 010248a0 (LHCombined Release)
	virtual bool32_t IsPaper();
	// BW1W120 007f9d40 BW1M119 01007530 (LHCombined Release)
	virtual bool32_t IsUseAlpha();
	// BW1W120 007f9d60 BW1M119 01029300 (LHCombined Release)
	virtual void __fastcall SetDrawWithGlobalAlpha(bool32_t value);
	// BW1W120 007f9d80 BW1M119 010292b0 (LHCombined Release)
	virtual bool32_t IsDrawWithGlobalAlpha();
	// BW1W120 007f9d90 BW1M119 010432e0 (LHCombined Release)
	virtual void __fastcall SetLinked(bool32_t linked);
	// BW1W120 007f9db0 BW1M119 01094d50 (LHCombined Release)
	virtual bool32_t IsLinked();
	// BW1W120 007f9dc0 BW1M119 010cdb40 (LHCombined Release)
	virtual void __fastcall SetFootPrintOnTexture(bool32_t foot_print_on_texture);
	// BW1W120 007fa2e0 BW1M119 01052e60 (LHCombined Release)
	virtual bool32_t IsFootPrintOnTexture();
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
	virtual LH3DMesh* GetMesh() const;
	// BW1W120 008132f0 BW1M119 01077b40 (LHCombined Release)
	virtual void DrawDebugInfo();
	// BW1W120 00815a70 BW1M119 01027520 (LHCombined Release)
	virtual void AddDrawing();
	// BW1W120 00815980 BW1M119 01073e20 (LHCombined Release)
	virtual bool32_t DrawWithClipping();
	// BW1W120 00810110 BW1M119 0107a040 (LHCombined Release)
	virtual void DrawExtraMetric();
	// BW1W120 007f9e80 BW1M119 0101fca0 (LHCombined Release)
	virtual bool32_t __fastcall ContainsThisBoundingBox(const BBox2D& bbox);
	// BW1W120 007f9f10 BW1M119 0100bed0 (LHCombined Release)
	virtual bool32_t __fastcall GetChimneyPos(LHPoint* point) const;
	// BW1W120 007f9fb0 BW1M119 0100bff0 (LHCombined Release)
	virtual bool32_t __fastcall GetDoorPos(LHPoint* point) const;
	// BW1W120 0080ff20 BW1M119 010117f0 (LHCombined Release)
	virtual bool32_t __fastcall GetExtraPos(long index, LHPoint* point) const;
	// BW1W120 007fa050 BW1M119 010703a0 (LHCombined Release)
	virtual bool32_t __fastcall GetExtraPos(long index, LHMatrix* matrix);
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

#endif /* BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H */
