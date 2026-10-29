#ifndef BW1_DECOMP_LH3D_STATIC_MORPHABLE_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_STATIC_MORPHABLE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */

#include "LH3DStaticObject.h" /* For struct LH3DStaticObject */

class LH3DStaticMorphableObject : public LH3DStaticObject
{
public:
	float* LandAltitudes;

	// Virtual methods

	// BW1W120 0080ba10 BW1M119 0109e3c0 (LHCombined Release)
	virtual bool32_t IsMorphWithLand() { return true; }
	// BW1W120 0080ba20 BW1M119 01081740 (LHCombined Release)
	virtual void Release() { delete this; }
	// BW1W120 0080ba40 BW1M119 01078be0 (LHCombined Release)
	virtual void DrawUnderWater() {}
	// BW1W120 0080ba50 BW1M119 010954f0 (LHCombined Release)
	virtual void DrawCutByPlane() {}
	// BW1W120 0080ba60 BW1M119 010a52e0 (LHCombined Release)
	virtual void DrawNormals() const {}
	// BW1W120 0080ba70 BW1M119 010a5330 (LHCombined Release)
	virtual void __fastcall Blend(LH3DObject* obj1, LH3DObject* obj2, float blend) {}
	// BW1W120 0080ba80 BW1M119 011282f0 (LHCombined Release)
	virtual bool32_t CheckPixelCollide() { return false; }
	// BW1W120 0080ba90 BW1M119 01006580 (LHCombined Release)
	virtual bool32_t IsStaticMorphable() const { return true; }
	// BW1W120 00816250 BW1M119 01073850 (LHCombined Release)
	virtual void __fastcall SetMesh(LH3DMesh* mesh1, LH3DMesh* mesh2, LH3DMesh* mesh3);
	// BW1W120 0080e550 BW1M119 01021f50 (LHCombined Release)
	virtual void Draw();
	// BW1W120 0080e890 BW1M119 0107c840 (LHCombined Release)
	virtual void DrawSnow();
	// BW1W120 0080e940 BW1M119 0107c1c0 (LHCombined Release)
	virtual void DrawSnow(LH3DMaterial* material);
	// BW1W120 00811440 BW1M119 01012e70 (LHCombined Release)
	virtual bool32_t CheckTriangleCollide();
	// BW1W120 008168f0 BW1M119 01072ae0 (LHCombined Release)
	virtual void UpdateMelting();

	// Constructors

	// BW1W120 inlined BW1M119 0107fe50 (LHCombined Release)
	LH3DStaticMorphableObject()
	{
		g_count_static_object++;
		LandAltitudes = NULL;
	}

	// Destructor

	// BW1W120 00816180 BW1M119 01073a30 (LHCombined Release)
	~LH3DStaticMorphableObject();
};

#endif /* BW1_DECOMP_LH3D_STATIC_MORPHABLE_OBJECT_INCLUDED_H */
