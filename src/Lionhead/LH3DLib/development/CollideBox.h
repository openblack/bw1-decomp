#ifndef BW1_DECOMP_COLLIDE_BOX_INCLUDED_H
#define BW1_DECOMP_COLLIDE_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHMatrix.h" /* For struct LHMatrix */
#include "LHPoint.h"  /* For struct LHPoint */

#include <re_common.h> /* For bool32_t */

// Forward Declares

struct LH3DColor;
struct LH3DMesh;

struct CollideBox
{
	LHPoint  Min;
	LHPoint  Max;
	LHMatrix Matrix;
	LHMatrix InverseMatrix;

	// Constructors

	// BW1W120 inlined BW1M119 010d1ce0 (LHCombined Release)
	CollideBox() { Min = Max = LHPoint(0.0f, 0.0f, 0.0f); }

	// Static methods

	// BW1W120 00867d10 BW1M119 0110e070 (LHCombined Release)
	static CollideBox* CreateCollideBoxes(LH3DMesh* mesh);

	// Non-virtual methods

	// BW1W120 00867dd0 BW1M119 0104e580 (LHCombined Release)
	void UpdateCollideBoxes(LH3DMesh* mesh);
	// BW1W120 00867fe0 BW1M119 01047970 (LHCombined Release)
	void InitForCollision(LH3DMesh* mesh, LHMatrix* matrices);
	// BW1W120 00868040 BW1M119 0107c930 (LHCombined Release)
	void DrawBox(LH3DColor* color);
	// BW1W120 00868300 BW1M119 010b2fd0 (LHCombined Release)
	void DrawBoxes(LH3DMesh* mesh);
	// BW1W120 00868350 BW1M119 010ad410 (LHCombined Release)
	bool32_t GetImpactPoint(LH3DMesh* mesh, LHPoint& start, LHPoint& direction, LHPoint& impact, LHPoint& normal);
	// BW1W120 008683c0 BW1M119 01047a70 (LHCombined Release)
	bool32_t GetNearestImpactPoint(LH3DMesh* mesh, LHPoint& start, LHPoint& direction, LHPoint& impact,
	                               LHPoint& normal);
	// BW1W120 008684f0 BW1M119 0104db60 (LHCombined Release)
	bool32_t GetImpactPoint(LHPoint& start, LHPoint& direction, LHPoint& impact, LHPoint& normal);
	// BW1W120 00868910 BW1M119 01049830 (LHCombined Release)
	bool32_t GetNearestImpactPoint(LHPoint& start, LHPoint& direction, LHPoint& impact, LHPoint& normal,
	                               float& distance);
};
static_assert(sizeof(CollideBox) == 0x78, "Data type is of wrong size");

#endif /* BW1_DECOMP_COLLIDE_BOX_INCLUDED_H */
