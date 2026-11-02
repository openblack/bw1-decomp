#ifndef BW1_DECOMP_LH3D_OBJECT_HAIR_INCLUDED_H
#define BW1_DECOMP_LH3D_OBJECT_HAIR_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct HairGroup;
struct LH3DMaterial;
struct LH3DMesh;

struct LH3DObjectHair
{
	long        HairCount; /* 0x0 */
	HairGroup** hairs;

	// Non-virtual methods

	// BW1W120 00848340 BW1M119 0104db10 (LHCombined Release)
	void Init(long param_2, HairGroup** param_3);
	// BW1W120 00848390 BW1M119 0103e910 (LHCombined Release)
	void Draw() const;
	// BW1W120 00848350 BW1M119 01146950 (LHCombined Release)
	void Update(LH3DMesh* mesh, float, float, LH3DMaterial* material);
};

#endif /* BW1_DECOMP_LH3D_OBJECT_HAIR_INCLUDED_H */
